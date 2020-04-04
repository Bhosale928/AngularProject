package test;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class TestClass {

    public static void main(String[] args) {
        try {
            Map<Integer, String> map = new HashMap<>();
            map.put(234, "ABC");
            Collections.unmodifiableMap(map);
            map.put(432, "PQR");
            System.out.println(map);
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    public static Integer divide(Integer x, Integer y) {
        try {
            return x / y;
        } finally {
            System.out.println("Finally");
        }
    }

}
