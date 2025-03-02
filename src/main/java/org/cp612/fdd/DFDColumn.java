package org.cp612.fdd;

import java.util.*;


/**
 * processor for column certain column as rhs
 */
public class DFDColumn {
    //access to data in DFD
    private final DFD dfd;

    //use bitmap to store all combinations
    private final boolean[] visited;
    private final boolean[] dependency;
    private final boolean[] nonDependency;
    private final boolean[] candidateDependency;
    private final boolean[] candidateNonDependency;
    private final boolean[] minimalDependency;
    private final boolean[] maximalNonDependency;

    //store the index of dependencies/nonDependencies
    private final Set<Integer> dependencies;
    private final Set<Integer> nonDependencies;

    private final Set<Integer> columnIndexes = new HashSet<>();

    //used for tracing node
    private final Stack<Integer> trace = new Stack<>();

    public DFDColumn(DFD dfd) {
        this.dfd = dfd;
        visited = new boolean[1 << dfd.columnSize];
        dependency = new boolean[1 << dfd.columnSize];
        nonDependency = new boolean[1 << dfd.columnSize];
        candidateDependency = new boolean[1 << dfd.columnSize];
        candidateNonDependency = new boolean[1 << dfd.columnSize];
        minimalDependency = new boolean[1 << dfd.columnSize];
        maximalNonDependency = new boolean[1 << dfd.columnSize];
        dependencies = new HashSet<>();
        nonDependencies = new HashSet<>();
    }

    public void pushColumn(int column) {
        columnIndexes.add(column);
    }

    public Set<Integer> getColumnIndexes() {
        return columnIndexes;
    }

    public boolean isVisited(int nodeIndex) {
        return visited[nodeIndex];
    }

    public boolean isCandidate(int nodeIndex) {
        return candidateDependency[nodeIndex] || candidateNonDependency[nodeIndex];
    }

    public boolean isDependency(int nodeIndex) {
        return dependency[nodeIndex] || candidateDependency[nodeIndex] || minimalDependency[nodeIndex];
    }


    public boolean isNonDependency(int nodeIndex) {
        return nonDependency[nodeIndex] || candidateNonDependency[nodeIndex] || maximalNonDependency[nodeIndex];
    }

    public void addDependency(int nodeIndex) {
        candidateDependency[nodeIndex] = false;
        minimalDependency[nodeIndex] = true;
        dependencies.add(nodeIndex);
    }

    public void addNonDependency(int nodeIndex) {
        candidateNonDependency[nodeIndex] = false;
        maximalNonDependency[nodeIndex] = true;
        nonDependencies.add(nodeIndex);
    }

    public void addDepCandidate(int nodeIndex) {
        candidateDependency[nodeIndex] = true;
    }

    public void addNonDepCandidate(int nodeIndex) {
        candidateNonDependency[nodeIndex] = true;
    }

    public void removeDepCandidate(int nodeIndex) {
        candidateDependency[nodeIndex] = false;
        dependency[nodeIndex] = true;
    }

    public void removeNonDepCandidate(int nodeIndex) {
        candidateNonDependency[nodeIndex] = false;
        nonDependency[nodeIndex] = true;
    }

    private Set<Integer> findSubsets(int nodeIndex) {
        Set<Integer> result = new HashSet<>();
        for (Integer columnIndex : columnIndexes) {
            if (columnIndex != nodeIndex) {
                //columnIndexes are always single-column-index
                //by using XOR operation can find out any subset/superset
                int subset = columnIndex ^ nodeIndex;
                if ((subset & nodeIndex) != subset) {
                    //subset must be smaller than the current node
                    //result of &-operation would still be subset
                    result.add(subset);
                }
            }
        }
        return result;
    }

    private Set<Integer> findSuperset(int nodeIndex) {
        Set<Integer> result = new HashSet<>();
        for (Integer columnIndex : columnIndexes) {
            if (columnIndex != nodeIndex) {
                //columnIndexes are always single-column-index
                //by using XOR operation can find out any subset/superset
                int superset = columnIndex ^ nodeIndex;
                if ((superset & nodeIndex) != nodeIndex) {
                    //subset must be smaller than the current node
                    //result of &-operation would still be nodeIndex
                    result.add(superset);
                }
            }
        }
        return result;
    }

    public boolean isMinimal(int nodeIndex) {
        //to find out whether there is any subset of the current node which is dependency
        Set<Integer> subsets = findSubsets(nodeIndex);
        for (Integer subset : subsets) {
            if (isVisited(subset)) {
                if (isDependency(subset)) {
                    //there is a dependency subset, the current is not minDep
                    removeDepCandidate(nodeIndex);
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }

    public boolean isMaximal(int nodeIndex) {
        //to find out whether there is any superset of the current node which is dependency
        Set<Integer> supersets = findSuperset(nodeIndex);
        for (Integer superset : supersets) {
            if (isVisited(superset)) {
                if (isNonDependency(superset)) {
                    //there is a non-dependency superset, the current is not maxNonDep
                    removeNonDepCandidate(nodeIndex);
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }


    private Set<Integer> uncheckedSubsets(int nodeIndex) {
        Set<Integer> result = new HashSet<>();
        Set<Integer> subsets = findSubsets(nodeIndex);
        for (Integer subset : subsets) {
            if (!isVisited(subset)) {
                result.add(subset);
            }
        }
        return result;
    }

    /**
     * find out the potential nodes of minDep
     *
     * @param nodeIndex the current node
     * @return subsets after pruning
     */
    private List<Integer> prunedSubsets(int nodeIndex) {
        Set<Integer> subsetSet = uncheckedSubsets(nodeIndex);
        List<Integer> subsets = new ArrayList<>(subsetSet);

        //to find out subsets of nodeIndex and supersets of dependencies
        for (Integer minDep : dependencies) {
            for (int i = 0; i < subsets.size(); i++) {
                Integer subset = subsets.get(i);
                //subset is minDep, it should be removed
                if (Objects.equals(subset, minDep)) {
                    subsets.remove(i);
                    i--;
                    continue;
                }
                //subset is superset of minDep
                if ((subset & minDep) == minDep) {
                    //the subset must be a dependency but not minimal
                    removeDepCandidate(subset);
                    visited[subset] = true;

                    //the subset should be pruned, remove from current list
                    subsets.remove(i);
                    i--;
                }
            }
        }
        return subsets;
    }

    private Set<Integer> uncheckedSupersets(int nodeIndex) {
        Set<Integer> result = new HashSet<>();
        Set<Integer> supersets = findSuperset(nodeIndex);
        for (Integer superset : supersets) {
            if (!isVisited(superset)) {
                result.add(superset);
            }
        }
        return result;
    }

    /**
     * find out the potential nodes of maxNonDep
     *
     * @param nodeIndex the current node
     * @return supersets after pruning
     */
    private List<Integer> prunedSupersets(int nodeIndex) {
        Set<Integer> supersetSet = uncheckedSupersets(nodeIndex);
        List<Integer> supersets = new ArrayList<>(supersetSet);

        //to find out supersets of nodeIndex and subsets of non-dependencies
        for (Integer maxNonDep : nonDependencies) {
            for (int i = 0; i < supersets.size(); i++) {
                Integer superset = supersets.get(i);
                //superset is maxNonDep, it should be removed
                if (Objects.equals(superset, maxNonDep)) {
                    supersets.remove(i);
                    i--;
                    continue;
                }
                //superset is subset of maxNonDep
                if ((superset & maxNonDep) == superset) {
                    //the superset must be a non-dependency but not maximal
                    removeNonDepCandidate(superset);
                    visited[superset] = true;

                    //the superset should be pruned, remove from current list
                    supersets.remove(i);
                    i--;
                }
            }
        }
        return supersets;
    }

    public void updateDependencyType(int nodeIndex, FDCategory before) {
        if (before == FDCategory.CANDIDATE_DEPENDENCY) {
            candidateDependency[nodeIndex] = false;
            minimalDependency[nodeIndex] = true;
        } else if (before == FDCategory.CANDIDATE_NON_DEPENDENCY) {
            candidateNonDependency[nodeIndex] = false;
            maximalNonDependency[nodeIndex] = true;
        } else {
            throw new RuntimeException("Invalid Dependency Type Update!");
        }
    }

    /**
     * whether this node had been categorized as dependency or non-dependency
     *
     * @param nodeIndex the current node
     * @return category of the current node
     */
    private FDCategory getCategory(int nodeIndex) {
        if (!dependency[nodeIndex] && !nonDependency[nodeIndex]) {
            return FDCategory.NONE;
        }
        return FDCategory.NOT_NONE;
    }

    private void inferCategory(int nodeIndex) {
        visited[nodeIndex] = true;
        if (minimalDependency.length != 0) {
            for (int i = 0; i < minimalDependency.length; i++) {
                if (!minimalDependency[i])
                    continue;
                if (i != nodeIndex && ((i & nodeIndex) == i)) {
                    //'i'(minimalFD) is the subset of 'nodeIndex'
                    dependency[nodeIndex] = true;
                    break;
                }
            }
            for (int i = 0; i < candidateDependency.length; i++) {
                if (!candidateDependency[i])
                    continue;
                if (i != nodeIndex && ((i & nodeIndex) == i)) {
                    //'i'(candidateFD) is the subset of 'nodeIndex'
                    dependency[nodeIndex] = true;
                    break;
                }
            }
        }
        if (maximalNonDependency.length != 0) {
            for (int i = 0; i < maximalNonDependency.length; i++) {
                if (!maximalNonDependency[i])
                    continue;
                if (i != nodeIndex && ((i & nodeIndex) == nodeIndex)) {
                    //'i'(maximalNonFD) is the superset of 'nodeIndex'
                    nonDependency[nodeIndex] = true;
                    break;
                }
            }
            for (int i = 0; i < candidateNonDependency.length; i++) {
                if (!candidateNonDependency[i]) continue;
                if (i != nodeIndex && ((i & nodeIndex) == nodeIndex)) {
                    //'i'(candidateNonFD) is the superset of 'nodeIndex'
                    nonDependency[nodeIndex] = true;
                    break;
                }
            }
        }
    }

    /**
     * calculate the partition size of 'nodeIndex' + 'column'
     *
     * @param nodeIndex    current node
     * @param oldNodeIndex subset of 'nodeIndex', for optimization
     * @param column       another column
     * @return the partition size of 'nodeIndex' + 'column'
     */
    private int computePartitions(int nodeIndex, int oldNodeIndex, int column) {
        if (dfd.partitionChecked[nodeIndex + column])
            //if the partition of this combination is checked then return
            return dfd.partitions[nodeIndex + column].size();

        //the partition size of 'nodeIndex'
        int lenA = getPartition(nodeIndex, oldNodeIndex);
        //the partition size of 'column'
        int lenB = getPartition(column, -1);

        //T - index = index of row of data, value = index of partition to which the current row belong
        int[] T = new int[dfd.dataSize];
        for (int i = 0; i < dfd.dataSize; ++i) {
            T[i] = -1;
        }
        //S - for building partition for 'nodeIndex'+'column'
        List<List<Integer>> S = new ArrayList<>();

        for (int i = 0; i < lenA; ++i) {
            // partitions[nodeIndex][i] = an array of row indices that belong to the same partition[i]
            List<Integer> partitions = dfd.partitions[nodeIndex].get(i);
            for (Integer t : partitions) {
                //t = index of data row[i] for 'nodeIndex'
                T[t] = i;
            }
            S.add(new ArrayList<>());
        }

        //T[t] >= 0 means T[t] is not null, partition groupT[t] is not single-row for 'nodeIndex'
        for (int i = 0; i < lenB; ++i) {
            // partitions[column][i] = an array of row-indices that belong to the same partition[i]
            List<Integer> partitions = dfd.partitions[column].get(i);
            for (Integer t : partitions) {
                //t = index of data row[i] for 'column'
                if (T[t] >= 0) {
                    //build an array of row-indices
                    S.get(T[t]).add(t);
                }
            }
            for (Integer t : partitions) {
                if (T[t] >= 0) {
                    int s = S.get(T[t]).size();
                    //after combining two partitions of 'column' and 'nodeIndex'
                    //drop single-row
                    if (s >= 2) {
                        dfd.partitions[column + nodeIndex].add(new ArrayList<>(S.get(T[t])));
                        //partitionsLength[column + nodeIndex] = total number of rows of all groups of values
                        dfd.partitionsLength[column + nodeIndex] += s;
                    }
                    //set zero, avoid processing repeatedly and initialize for next loop
                    S.get(T[t]).clear();
                }
            }
        }
        dfd.partitionChecked[nodeIndex + column] = true;
        return dfd.partitions[nodeIndex + column].size();
    }

    /**
     * calculate the partition size of 'nodeIndex'
     *
     * @param nodeIndex    the current node
     * @param oldNodeIndex the subset of 'nodeIndex'
     * @return the partition size of 'nodeIndex'
     */
    private int getPartition(int nodeIndex, int oldNodeIndex) {
        if (dfd.partitionChecked[nodeIndex]) {
            //if the partition of this combination is checked then return
            return dfd.partitions[nodeIndex].size();
        }

        //'oldNodeIndex' is not null and 'oldNodeIndex' is the subset of 'nodeIndex'
        if (oldNodeIndex != -1 && (oldNodeIndex & nodeIndex) == oldNodeIndex)
            //{'oldNodeIndex', 'nodeIndex'\'oldNodeIndex'} = {'nodeIndex'}
            //calculate the partition of 'nodeIndex'
            return computePartitions(oldNodeIndex, -1, nodeIndex - oldNodeIndex);

        for (Integer columnIndex : columnIndexes) {
            //combination 'columnIndex' is the subset of 'nodeIndex' and combination('nodeIndex'\'columnIndex') is checked
            //('nodeIndex'\'columnIndex') is the subset of 'nodeIndex' than doesn't contain 'columnIndex'
            if (columnIndex < nodeIndex && ((columnIndex & nodeIndex) != 0)
                    && dfd.partitionChecked[nodeIndex - columnIndex])
                //calculate the partition of 'nodeIndex'
                return computePartitions(nodeIndex - columnIndex, -1, columnIndex);
        }

        int column_index = -1;
        for (int i = 0; i < dfd.columnSize; ++i) {
            int column = 1 << i;
            if (column < nodeIndex && ((column & nodeIndex) != 0)) {
                //'nodeIndex' is column combination
                //'column' is the subset of 'nodeIndex', column must be column single attribute
                //calculate the partition of 'nodeIndex'
                return computePartitions(nodeIndex - column, -1, column);
            } else if (column == nodeIndex) {
                //'nodeIndex' is column single attribute
                column_index = i;
                break;
            }
        }

        // first, to do the partition
        int tmpLen = 0;
        List<List<Integer>> tmpGroup = new ArrayList<>();
        for (int i = 0; i < dfd.dataSize; ++i) {
            //tempVec 2D array, value and index
            //data:
            //Index Value
            // 0	1
            // 1	2
            // 2	1
            // 3	3
            // 4	2
            //tmpGroup
            //1: [0, 2]
            //2: [1, 4]
            //3: [3]
            int value = dfd.data[i][column_index];
            if (value < tmpLen) {
                //values are encoded into increasing-integer
                //tmpLen can be used for detecting new value that occurs at the first time
                tmpGroup.get(value).add(i);
            } else {
                List<Integer> rowIndexes = new ArrayList<>();
                rowIndexes.add(i);
                tmpGroup.add(rowIndexes);
                ++tmpLen;
            }
        }

        // then, drop the set that length equals to 1
        // in stripped partition, single-row equivalence class doesn't contribute to FD
        for (List<Integer> rowIndexes : tmpGroup) {
            int st = rowIndexes.size();
            if (st != 1) {
                //one element of partitions[nodeIndex] = an array of row indices that belong to the same partition
                dfd.partitions[nodeIndex].add(rowIndexes);
                //partitionsLength[nodeIndex] = total number of rows of all groups of values
                dfd.partitionsLength[nodeIndex] += st;
            }
        }
        dfd.partitionChecked[nodeIndex] = true;
        //partitions[nodeIndex].size() = how many groups of value there are
        return dfd.partitions[nodeIndex].size();
    }

    /**
     * traverse to the next node
     *
     * @param nodeIndex current node
     * @return next node to traverse
     */
    private int pickNextNode(int nodeIndex) {
        if (isDependency(nodeIndex) && isCandidate(nodeIndex)) {
            List<Integer> subsets = prunedSubsets(nodeIndex);
            if (subsets.isEmpty())
                addDependency(nodeIndex);
            else {
                int nextNode = subsets.getFirst();
                trace.push(nodeIndex);
                return nextNode;
            }
        } else if (isCandidate(nodeIndex) && isNonDependency(nodeIndex)) {
            List<Integer> supersets = prunedSupersets(nodeIndex);
            if (supersets.isEmpty())
                addNonDependency(nodeIndex);
            else {
                int nextNode = supersets.getFirst();
                trace.push(nodeIndex);
                return nextNode;
            }
        }
        if (!trace.empty()) {
            return trace.pop();
        }
        //mark end
        return -1;
    }

    /**
     * minimize the seeds by using the principal that
     * a superset of a Dep cannot be a minDep
     * @param seeds potential seeds
     * @return a set of seeds being minimized
     */
    private Set<Integer> minimizeSeeds(Set<Integer> seeds) {

        //remove all seeds which are supersets of other seeds
        List<Integer> seedList = new ArrayList<>(seeds);

        //used for determining if this seed is the superset of any other seeds
        //true - it is superset
        boolean[] supersetFlags = new boolean[seedList.size()];
        for (int i = 0; i < seedList.size(); i++) {
            Integer iSeed = seedList.get(i);
            if (supersetFlags[i]) {
                continue;
            }
            for (int j = 0; j < seedList.size(); ++j) {
                Integer jSeed = seedList.get(j);
                if (supersetFlags[j] || Objects.equals(iSeed, jSeed)) {
                    continue;
                }
                if ((iSeed & jSeed) == iSeed) {
                    //iSeed is subset
                    supersetFlags[j] = true;
                } else if ((iSeed & jSeed) == jSeed) {
                    //jSeed is subset
                    supersetFlags[i] = true;
                    break;
                }
            }
        }

        List<Integer> resultTmp = new ArrayList<>();
        for (int i = 0; i < seedList.size(); i++) {
            if (!supersetFlags[i]) {
                resultTmp.add(seedList.get(i));
            }
        }

        //true - it is superset of a minDep
        boolean[] pruneFlags = new boolean[resultTmp.size()];
        //prune all supersets of minDep
        for (int i = 0; i < resultTmp.size(); i++) {
            Integer seed = resultTmp.get(i);
            for (Integer minDep : dependencies) {
                if ((seed & minDep) == minDep) {
                    //seed is the superset of minDep
                    pruneFlags[i] = true;
                    break;
                }
            }
        }

        Set<Integer> result = new HashSet<>();
        for (int i = 0; i < resultTmp.size(); i++) {
            if (!pruneFlags[i]) {
                result.add(resultTmp.get(i));
            }
        }

        return result;
    }

    /**
     * the components of FD must lie in the complement of maxNonDep
     * e.g. R = {A, B, C, D, E}, when RHS = {E}
     * assume that {A, B} is maxNonDep, {B, D} is minDep
     * then {A, B}` = {C, D}, {D} belongs to {B, D}
     * based on these components to build seeds
     *
     * @return a set of seeds
     */
    private Set<Integer> generateNextSeeds() {
        Set<Integer> seeds = new HashSet<>();
        Set<Integer> newSeeds = new HashSet<>();
        Set<Integer> result = new HashSet<>();
        if (!nonDependencies.isEmpty()) {
            //this loop is used for building all possible Dep
            for (Integer maxNonDep : nonDependencies) {
                int complement = ~maxNonDep;
                if (seeds.isEmpty()) {
                    for (Integer columnIndex : columnIndexes) {
                        //one of the components of 'complement' belongs to 'columnIndex'
                        if ((columnIndex & complement) != 0) {
                            seeds.add(columnIndex);
                        }
                    }
                } else {
                    for (Integer dep : seeds) {
                        for (Integer columnIndex : columnIndexes) {
                            //one of the components of 'complement' belongs to 'columnIndex'
                            if ((columnIndex & complement) != 0) {
                                //combine 'dep' and 'columnIndex'
                                newSeeds.add(dep | columnIndex);
                            }
                        }
                    }
                    //to minimize seeds
                    Set<Integer> minimizedNewDep = minimizeSeeds(newSeeds);
                    //copy minimizedNewDep to 'seeds' and initialize 'newSeeds' for next loop
                    seeds.clear();
                    seeds.addAll(minimizedNewDep);
                    newSeeds.clear();
                }
            }
            seeds.removeAll(dependencies);

            //find out unchecked seeds
            for (Integer seed : seeds) {
                if (!isVisited(seed)) {
                    result.add(seed);
                }
            }
        }
        return result;
    }

    /**
     * @param rhs right hand side
     * @return possible left hand side
     */
    public Set<Integer> findLHSs(int rhs) {
        Set<Integer> seeds = new HashSet<>(columnIndexes);

        while (!seeds.isEmpty()) {
            for (Integer nodeIndex : seeds) {
                int oldNodeIndex = -1;
                do {
                    if (isVisited(nodeIndex)) {
                        if (isCandidate(nodeIndex)) {
                            if (isDependency(nodeIndex)) {
                                if (isMinimal(nodeIndex)) {
                                    addDependency(nodeIndex);
                                }
                            } else {
                                if (isMaximal(nodeIndex)) {
                                    addNonDependency(nodeIndex);
                                }
                            }
                        }
                    } else {
                        inferCategory(nodeIndex);
                        if (FDCategory.NONE.equals(getCategory(nodeIndex))) {
                            if (computePartitions(nodeIndex, oldNodeIndex, rhs) - dfd.partitionsLength[nodeIndex + rhs] ==
                                    getPartition(nodeIndex, -1) - dfd.partitionsLength[nodeIndex])
                            //if the size of partition = 0, then all rows are unique
                            //computePartitions/getPartition are used for comparing size of partition
                            //partition_len is used for comparing total number of rows in each partition
                            //compare size of partition of {X, A} and {X} to find out if X -> A, same size = dependency
                            {
                                addDepCandidate(nodeIndex);
                            } else {
                                addNonDepCandidate(nodeIndex);
                            }
                        }
                    }
                    oldNodeIndex = nodeIndex;
                    //before determining the category of the current node
                    //all of its subsets(Dep)/supersets(NonDep) are required to be traversed
                    nodeIndex = pickNextNode(nodeIndex);
                } while (nodeIndex >= 0);
            }
            seeds = generateNextSeeds();
        }
        return dependencies;
    }
}
