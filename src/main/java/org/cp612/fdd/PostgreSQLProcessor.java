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

    /**
     * @return all table data, map-K:TableName,V:Data
     */
    public static Map<String, DataSet> queryAllTables() {
        Map<String, DataSet> result = new HashMap<>();

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             Statement tableStatement = connection.createStatement()) {

            //query tables
            String query = "SELECT table_name FROM information_schema.tables WHERE table_schema='public'";
            ResultSet tableResultSet = tableStatement.executeQuery(query);

            while (tableResultSet.next()) {
                String tableName = tableResultSet.getString("table_name");
                Map<String, DataSet> tableData = queryTable(tableName);
                result.put(tableName, tableData.get(tableName));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /**
     * @param tableName target table name
     * @return table data, map-K:TableName,V:Data
     */
    public static Map<String, DataSet> queryTable(String tableName) {
        Map<String, DataSet> result = new HashMap<>();

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             Statement dataStatement = connection.createStatement()) {

            List<String> columnNames = new ArrayList<>();
            boolean namesFlag = false;
            List<List<String>> rows = new ArrayList<>();

            //query data
            String dataQuery = "SELECT * FROM " + tableName;
            ResultSet dataResultSet = dataStatement.executeQuery(dataQuery);

            while (dataResultSet.next()) {
                int columnCount = dataResultSet.getMetaData().getColumnCount();

                List<String> row = new ArrayList<>();
                for (int i = 1; i <= columnCount; i++) {
                    if (!namesFlag) {
                        String columnName = dataResultSet.getMetaData().getColumnName(i);
                        columnNames.add(columnName);
                    }
                    String value = dataResultSet.getString(i);
                    row.add(value);
                }
                namesFlag = true;
                rows.add(row);
            }

            DataSet tableData = new DataSet(columnNames, rows);
            result.put(tableName, tableData);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
