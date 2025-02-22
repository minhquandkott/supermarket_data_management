package org.cp612.fdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PostgreSQLProcessor {
    private static final String URL = "jdbc:postgresql://43.153.31.150:5432/supermarketsys";
    private static final String USER = "admin";
    private static final String PASSWORD = "abcd1234";

    public static Map<String, List<Map<String, String>>> queryAllTables() {
        Map<String, List<Map<String, String>>> result = new HashMap<>();

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             Statement tableStatement = connection.createStatement();
             Statement dataStatement = connection.createStatement()) {

            //query tables
            String query = "SELECT table_name FROM information_schema.tables WHERE table_schema='public'";
            ResultSet tableResultSet = tableStatement.executeQuery(query);

            while (tableResultSet.next()) {
                String tableName = tableResultSet.getString("table_name");
                List<Map<String, String>> tableData = new ArrayList<>();

                //query data
                String dataQuery = "SELECT * FROM " + tableName;
                ResultSet dataResultSet = dataStatement.executeQuery(dataQuery);

                while (dataResultSet.next()) {
                    Map<String, String> row = new HashMap<>();
                    int columnCount = dataResultSet.getMetaData().getColumnCount();

                    for (int i = 1; i <= columnCount; i++) {
                        String columnName = dataResultSet.getMetaData().getColumnName(i);
                        String value = dataResultSet.getString(i);
                        row.put(columnName, value);
                    }

                    tableData.add(row);
                }

                result.put(tableName, tableData);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    public static Map<String, List<Map<String, String>>> queryTable(String tableName) {
        Map<String, List<Map<String, String>>> result = new HashMap<>();

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             Statement dataStatement = connection.createStatement()) {

            List<Map<String, String>> tableData = new ArrayList<>();

            //query data
            String dataQuery = "SELECT * FROM " + tableName;
            ResultSet dataResultSet = dataStatement.executeQuery(dataQuery);

            while (dataResultSet.next()) {
                Map<String, String> row = new HashMap<>();
                int columnCount = dataResultSet.getMetaData().getColumnCount();

                for (int i = 1; i <= columnCount; i++) {
                    String columnName = dataResultSet.getMetaData().getColumnName(i);
                    String value = dataResultSet.getString(i);
                    row.put(columnName, value);
                }

                tableData.add(row);
            }

            result.put(tableName, tableData);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
