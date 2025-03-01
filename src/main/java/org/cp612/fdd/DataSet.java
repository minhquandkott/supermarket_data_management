package org.cp612.fdd;

import java.util.List;

public class DataSet {
    private List<String> columnNames;
    private List<List<String>> rows;

    public DataSet(List<String> columnNames, List<List<String>> rows) {
        this.columnNames = columnNames;
        this.rows = rows;
    }

    public List<String> getColumnNames() {
        return columnNames;
    }

    public List<List<String>> getRows() {
        return rows;
    }

    public int size() {
        return rows.size();
    }

    public List<String> get(int index) {
        return rows.get(index);
    }

    public boolean isEmpty() {
        return rows.isEmpty();
    }
}
