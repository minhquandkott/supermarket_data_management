package org.cp612.fdd;

import java.util.*;
import java.util.stream.Collectors;

public class DFD {
    protected final List<String> columnNames;
    protected final int columnSize;
    protected final int dataSize;
    protected Set<Integer> uniqueColumns = new HashSet<>();
    protected Set<Integer> columnIndexes = new HashSet<>();
    //encoded data
    protected int[][] data;

    //store all partition of all combinations
    //[column-index][group-index] = a set of row-index
    protected List<List<Integer>>[] partitions;
    //whether this partition is calculated
    protected boolean[] partitionChecked;
    //the total size of rows of data in each partition
    protected int[] partitionsLength;

    //functional dependencies, fds[i] = a set of LHSs when RHS is column[i]
    protected Set<Integer>[] fds;

    protected DFD(DataSet dataset) {
        columnNames = dataset.getColumnNames();
        columnSize = columnNames.size();
        dataSize = dataset.size();

        partitions = new ArrayList[1 << columnSize];
        partitionChecked = new boolean[1 << columnSize];
        partitionsLength = new int[1 << columnSize];

        fds = new Set[columnSize];
        for (int i = 0; i < fds.length; i++) {
            fds[i] = new HashSet<>();
        }

        encodeData(dataset);
    }

    /**
     * encode original data
     *
     * @param dataset
     */
    private void encodeData(DataSet dataset) {
        if (dataset.isEmpty()) {
            System.out.println("Empty input dataset!");
            return;
        }

        // Initialize data structures
        boolean[] duplicate = new boolean[columnSize];

        // Initialize partitions
        for (int i = 0; i < (1 << columnSize); i++) {
            for (int j = 0; j < (1 << columnSize); j++) {
                partitions[j] = new ArrayList<>();
            }
            partitionsLength[i] = 0;
            partitionChecked[i] = false;
        }

        // Initialize dictionary for mapping values to integers
        List<Map<String, Integer>> dict = new ArrayList<>();
        for (int i = 0; i < columnSize; i++) {
            duplicate[i] = true;
            dict.add(new HashMap<>());
        }

        // Process each row in the dataset
        data = new int[dataSize][columnSize];
        for (int j = 0; j < dataset.size(); j++) {
            List<String> row = dataset.get(j);
            int[] tempInt = new int[columnSize];
            for (int i = 0; i < columnSize; i++) {
                String value = row.get(i);

                // Map the value to an integer using the dictionary
                if (dict.get(i).containsKey(value)) {
                    int mappedValue = dict.get(i).get(value);
                    duplicate[i] = false; // Mark as not unique
                    tempInt[i] = mappedValue;
                } else {
                    int newValue = dict.get(i).size();
                    tempInt[i] = newValue;
                    dict.get(i).put(value, newValue);
                }
            }
            data[j] = tempInt;
        }

        // Identify unique columns
        for (int i = 0; i < columnSize; i++) {
            if (duplicate[i]) {
                uniqueColumns.add(1 << i);
            }
        }
    }

    /**
     * run DFD
     */
    private void solve() {
        for (int i = 0; i < columnSize; ++i) {
            int columnIndex = 1 << i;
            if (uniqueColumns.contains(columnIndex)) {
                //for unique columns, they functionally determine the rest of columns
                for (int j = 0; j < columnSize; ++j) {
                    if (i == j) continue; //skip column[i]
                    //columnIndex -> j
                    fds[j].add(columnIndex);
                }
                continue;
            }
            columnIndexes.add(columnIndex);
        }
        if (!columnIndexes.isEmpty()) {
            for (int i = 0; i < columnSize; ++i) {
                int currentColumnIndex = 1 << i;
                DFDColumn dfdColumn = new DFDColumn(this);
                for (Integer columnIndex : columnIndexes) {
                    if (columnIndex != currentColumnIndex) {
                        dfdColumn.pushColumn(columnIndex);
                    }
                }
                Set<Integer> lhsSet = dfdColumn.findLHSs(currentColumnIndex);
                if (!lhsSet.isEmpty()) {
                    for (Integer lhs : lhsSet) {
                        fds[i].add(lhs);
                    }
                }
            }
        }
    }

    /**
     * create output for DFD
     *
     * @return
     */
    private Set<FunctionalDependency> buildOutput() {
        Set<FunctionalDependency> result = new HashSet<>();
        //group by lhs
        Map<Integer, Set<Integer>> lhsGroup = new HashMap<>();
        for (int i = 0; i < fds.length; i++) {
            Set<Integer> lhsSet = fds[i];
            for (Integer lhs : lhsSet) {
                lhsGroup.computeIfAbsent(lhs, k -> new HashSet<>());
                lhsGroup.get(lhs).add(i);
            }
        }
        //build output
        for (Integer lhs : lhsGroup.keySet()) {
            List<String> fdLhs = new ArrayList<>();
            for (int i = 0; i < columnNames.size(); i++) {
                int columnIndex = 1 << i;
                if ((lhs & columnIndex) != 0) {
                    fdLhs.add(columnNames.get(i));
                }
            }
            Set<Integer> rhsSet = lhsGroup.get(lhs);
            List<String> fdRhs = new ArrayList<>();
            for (Integer rhs : rhsSet) {
                fdRhs.add(columnNames.get(rhs));
            }
            result.add(new FunctionalDependency(fdLhs, fdRhs));
        }
        return result;
    }

    /**
     * entrance of DFD
     *
     * @param dataset
     * @return
     */
    public static Set<FunctionalDependency> discoverFunctionalDependencies(DataSet dataset) {
        DFD dfd = new DFD(dataset);
        dfd.solve();
        return dfd.buildOutput();
    }
}
