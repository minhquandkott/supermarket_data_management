package org.cp612.fdd;

import java.util.*;

public class DFD {

    public static Set<FunctionalDependency> discoverFunctionalDependencies(List<Map<String, String>> dataset) {

        Set<FunctionalDependency> fds = new HashSet<>();

        //Get all columns in the dataset
        Set<String> columns = dataset.getFirst().keySet();
        Set<String> remainingColumns = new HashSet<>(columns);

        //Check for unique columns
        for (String column : columns) {
            if (isUniqueColumn(dataset, column)) {
                // If the column is unique, it functionally determines all other columns
                remainingColumns.remove(column);
                fds.add(new FunctionalDependency(Set.of(column), remainingColumns));
            }
        }

        // Step 3: For each column as RHS, find minimal FDs
        for (String rhs : remainingColumns) {
            Set<String> lhsColumns = new HashSet<>(remainingColumns);
            lhsColumns.remove(rhs);
            findLHSs(dataset, lhsColumns, rhs, fds);
        }

        return fds;
    }

    private static boolean isUniqueColumn(List<Map<String, String>> dataset, String column) {
        Set<String> values = new HashSet<>();
        for (Map<String, String> row : dataset) {
            String value = row.get(column);
            if (values.contains(value)) {
                return false; // Duplicate value found
            }
            values.add(value);
        }
        return true; // No Duplicate value found
    }

    private static void findLHSs(List<Map<String, String>> dataset, Set<String> columns, String rhs,
                                       Set<FunctionalDependency> fds) {
        // Start with individual columns as seeds
        for (String column : columns) {
            Set<String> lhs = new HashSet<>();
            lhs.add(column);
            if (isFunctionalDependency(dataset, lhs, rhs)) {
                fds.add(new FunctionalDependency(lhs, new HashSet<>(Collections.singletonList(rhs))));
            }
        }

        // Explore larger combinations (depth-first traversal)
        for (String column : columns) {
            Set<String> remainingColumns = new HashSet<>(columns);
            remainingColumns.remove(column);
            findMinimalFDsRecursive(dataset, Set.of(column), remainingColumns, rhs, fds);
        }
    }

    private static void findMinimalFDsRecursive(List<Map<String, String>> dataset, Set<String> currentLHS,
                                                Set<String> remainingColumns, String rhs,
                                                Set<FunctionalDependency> fds) {
        for (String column : remainingColumns) {
            Set<String> newLHS = new HashSet<>(currentLHS);
            newLHS.add(column);

            if (isFunctionalDependency(dataset, newLHS, rhs)) {
                // Check if this FD is minimal
                boolean isMinimal = true;
                for (String col : currentLHS) {
                    Set<String> subsetLHS = new HashSet<>(newLHS);
                    subsetLHS.remove(col);
                    if (isFunctionalDependency(dataset, subsetLHS, rhs)) {
                        isMinimal = false;
                        break;
                    }
                }

                if (isMinimal) {
                    fds.add(new FunctionalDependency(newLHS, new HashSet<>(Collections.singletonList(rhs))));
                }
            } else {
                // Continue exploring supersets
                Set<String> newRemainingColumns = new HashSet<>(remainingColumns);
                newRemainingColumns.remove(column);
                findMinimalFDsRecursive(dataset, newLHS, newRemainingColumns, rhs, fds);
            }
        }
    }

    private static boolean isFunctionalDependency(List<Map<String, String>> dataset, Set<String> lhs, String rhs) {
        Map<String, String> valueMap = new HashMap<>();
        for (Map<String, String> row : dataset) {
            StringBuilder keyBuilder = new StringBuilder();
            for (String col : lhs) {
                keyBuilder.append(row.get(col)).append("|");
            }
            String key = keyBuilder.toString();

            if (valueMap.containsKey(key)) {
                if (!Objects.equals(valueMap.get(key), row.get(rhs))) {
                    return false; // Conflict found, not a functional dependency
                }
            } else {
                valueMap.put(key, row.get(rhs));
            }
        }
        return true; // No conflicts, it's a functional dependency
    }

}
