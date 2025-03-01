package org.cp612.fdd.test;

import java.io.*;
import java.util.*;

class DFD {
    private AttrDFD attrSolver;
    private int columnLen, rowLen;
    private List<Integer> attrs;
    private Map<Integer, List<List<Integer>>> partitions;
    private Map<Integer, Integer> partitionsLen;
    private Map<Integer, Boolean> partitionsChecked;
    private Set<Integer> uniqueAttrs;
    private List<List<Integer>> data;
    private List<List<Integer>> fd;

    public DFD() {
        this.attrSolver = new AttrDFD(this);
        this.attrs = new ArrayList<>();
        this.partitions = new HashMap<>();
        this.partitionsLen = new HashMap<>();
        this.partitionsChecked = new HashMap<>();
        this.uniqueAttrs = new HashSet<>();
        this.data = new ArrayList<>();
        this.fd = new ArrayList<>();
    }

    public void open(String file) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader(file));
        String temp;
        List<Map<String, Integer>> dict = new ArrayList<>();

        if ((temp = reader.readLine()) == null) {
            System.out.println("Empty input file!");
            return;
        }

        String[] tempField = temp.split(",");
        columnLen = tempField.length;
        boolean[] duplicate = new boolean[columnLen];

        for (int i = 0; i < columnLen; i++) {
            dict.add(new HashMap<>());
            fd.add(new ArrayList<>());
        }

        rowLen = 1;
        List<Integer> firstRow = new ArrayList<>();
        for (int i = 0; i < columnLen; i++) {
            dict.get(i).put(tempField[i], 0);
            firstRow.add(0);
        }
        data.add(firstRow);

        while ((temp = reader.readLine()) != null) {
            tempField = temp.split(",");
            if (temp.endsWith(",")) {
                String[] tempField2 = tempField;
                tempField = new String[tempField2.length + 1];

                // Copy the elements from stringArray5 to stringArray6
                System.arraycopy(tempField2, 0, tempField, 0, tempField2.length);
            }
            List<Integer> row = new ArrayList<>();

            for (int i = 0; i < columnLen; i++) {
                if (dict.get(i).containsKey(tempField[i])) {
                    row.add(dict.get(i).get(tempField[i]));
                } else {
                    int val = dict.get(i).size();
                    dict.get(i).put(tempField[i], val);
                    row.add(val);
                }
            }
            data.add(row);
            rowLen++;
        }
        reader.close();
    }

    public void solve() {
        for (int i = 0; i < columnLen; i++) {
            int attr = 1 << i;
            if (uniqueAttrs.contains(attr)) {
                for (int j = 0; j < columnLen; j++) {
                    if (i != j) fd.get(j).add(attr);
                }
                continue;
            }
            attrs.add(attr);
        }

        for (int i = 0; i < columnLen; i++) {
            attrSolver = new AttrDFD(this);
            Set<Integer> result = findLHSs(1 << i);
            for (int re : result) {
                fd.get(i).add(re);
            }
        }
        output();
    }

    private Set<Integer> findLHSs(int attr) {
        Set<Integer> seeds = new HashSet<>(attrSolver.attrs);
        while (!seeds.isEmpty()) {
            for (int n : seeds) {
                attrSolver.processNode(n, attr);
            }
            seeds = attrSolver.generateNextSeeds();
        }
        return attrSolver.dependencies;
    }

    private void output() {
        System.out.println("result:");
        for (int i = 0; i < fd.size(); i++) {
            for (int lhs : fd.get(i)) {
                System.out.println(lhs + " -> " + (i + 1));
            }
        }
//        try (BufferedWriter writer = new BufferedWriter(new FileWriter("result.txt"))) {
//            for (int i = 0; i < fd.size(); i++) {
//                for (int lhs : fd.get(i)) {
//                    writer.write(lhs + " -> " + (i + 1));
//                    writer.newLine();
//                }
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
    }
}

class AttrDFD {
    private DFD superDFD;
    public Set<Integer> dependencies;
    public List<Integer> attrs;

    public AttrDFD(DFD dfd) {
        this.superDFD = dfd;
        this.dependencies = new HashSet<>();
        this.attrs = new ArrayList<>();
    }

    public void processNode(int n, int attr) {
        // Simplified version of pickNextNode and processing logic
        if (!dependencies.contains(n)) {
            dependencies.add(n);
        }
    }

    public Set<Integer> generateNextSeeds() {
        return new HashSet<>(); // Placeholder implementation
    }
}

public class Test {
    public static void main(String[] args) {
        try {
            DFD dfd = new DFD();
            long start = System.currentTimeMillis();
            dfd.open("D:\\Jetbrains\\workspace\\DFD\\DFD\\data\\inventory_request.txt");
            dfd.solve();
            long end = System.currentTimeMillis();
            System.out.println((end - start) / 1000.0 + "s");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
