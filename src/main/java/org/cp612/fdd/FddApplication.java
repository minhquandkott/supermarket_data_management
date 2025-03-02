package org.cp612.fdd;

//import org.springframework.boot.SpringApplication;
//import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.List;
import java.util.Map;
import java.util.Set;

//@SpringBootApplication
public class FddApplication {

    public static void main(String[] args) {
//        SpringApplication.run(FddApplication.class, args);

        long startTime = System.currentTimeMillis();
        Map<String, DataSet> data = PostgreSQLProcessor.queryAllTables();
        long endTime = System.currentTimeMillis();
        System.out.println("data query time: " + (endTime - startTime));

//        // Print the result
//        for (String tableName : data.keySet()) {
//            DataSet ds = data.get(tableName);
//            System.out.println("Table: " + tableName);
//            for (List<String> row : ds.getRows()) {
//                System.out.println("  " + row);
//            }
//        }

        long startTime2 = System.currentTimeMillis();
        for (String tableName : data.keySet()) {
            DataSet ds = data.get(tableName);
            System.out.println("Table: " + tableName);
            Set<FunctionalDependency> result =
                    DFD.discoverFunctionalDependencies(ds);
            result.forEach(System.out::println);
            System.out.println();
        }
        long endTime2 = System.currentTimeMillis();
        System.out.println("DFD time: " + (endTime2 - startTime2));

//        final String TEST_TABLE = "inventory_request_product_detail";
//        final String TEST_TABLE = "inventory_request";
//        Map<String, DataSet> testData = PostgreSQLProcessor.queryTable(TEST_TABLE);
//        Set<FunctionalDependency> result =
//                DFD.discoverFunctionalDependencies(testData.get(TEST_TABLE));
//        result.forEach(System.out::println);
    }

}
