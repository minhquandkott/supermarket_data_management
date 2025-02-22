package org.cp612.fdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

public class PostgreSQLExample {

    public static void main(String[] args) {
//        Map<String, List<Map<String, String>>> data = PostgreSQLProcessor.queryAllTables();

//        // Print the result
//        for (Map.Entry<String, List<Map<String, String>>> entry : data.entrySet()) {
//            System.out.println("Table: " + entry.getKey());
//            for (Map<String, String> row : entry.getValue()) {
//                System.out.println("  Row: " + row);
//            }
//        }

//        Map<String, Set<DFDDependencyDiscovery.FunctionalDependency>> result =
//                DFDDependencyDiscovery.discoverFunctionalDependencies(data);

//        final String TEST_TABLE = "inventory_request_product_detail";
        final String TEST_TABLE = "inventory_request";
        Map<String, List<Map<String, String>>> testData = PostgreSQLProcessor.queryTable(TEST_TABLE);
//        Map<String, Set<FunctionalDependency>> result =
//                DFDDependencyDiscovery.discoverFunctionalDependencies(testData);
//
//        // Print the results
//        for (Map.Entry<String, Set<FunctionalDependency>> entry : result.entrySet()) {
//            System.out.println("Table: " + entry.getKey());
//            for (FunctionalDependency fd : entry.getValue()) {
//                System.out.println("  FD: " + fd);
//            }
//        }

        Set<FunctionalDependency> result =
                DFD.discoverFunctionalDependencies(testData.get(TEST_TABLE));
        result.forEach(System.out::println);
    }


}
