package org.cp612.fdd.test;

import java.io.*;
import java.util.*;

public class Test {
    public static void main(String[] args) {
        Stack<Integer> stack = new Stack<>();
        stack.push(1);
        stack.push(2);
        stack.push(3);
        int pop = stack.pop();
        int peek = stack.peek();
        stack.push(4);
        int pop2 = stack.pop();
        int peek2 = stack.peek();
        stack.push(5);

        Set<Integer> set = new HashSet<>();
        set.add(1);
        set.add(2);
        set.add(3);
        set.add(4);
        for (Integer i : set) {
            if (i == 2) {
                set.remove(i);
            }
        }
        System.out.println(set);
    }
}
