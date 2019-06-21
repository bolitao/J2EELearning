package TMP;

public class Test {
    public static void main(String[] args) {
        int[][] a;
        int[][] b;
        int SanWei[][][] = {{{5, 2}, {4, 5}}, {{87, 7}, {11, 12}}, {{1, 2}, {2, 3}}};
//        int four[][][][] = {{{{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}}, {{{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}}, {{{1, 2}, {1, 2}}}, {{{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}}};
//        int four[][][][] = {{{{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}}, {{{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}}, {{{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}}};
//        int four2[][][][] = {{{{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}}, {{{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}}, {{{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}}};
//        int three[][][] = {{{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}};
//        int two[][] = {{1, 2}, {2, 3}};
//        int one[] = {1, 2};
        int[] one = {1, 2};
        int[][] two = {{1, 2}, {1, 2}};
        int[][][] three = {{{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}};
        int[][][] three2 = {{{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}};
        int[][][][] four = {{{{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}}, {{{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}}, {{{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}, {{1, 2}, {1, 2}}}};
        int[][] c;
        c = four[0][0];
        for (int i = 0; i < c.length; i++) {
            for (int j = 0; j < c[i].length; j++) {
                System.out.print(c[i][j] + " ");
            }
            System.out.println();
        }

        int[][] d = four[2][2];
        for (int i = 0; i < d.length; i++) {
            for (int j = 0; j < c[i].length; j++) {
                System.out.print(d[i][j] + " ");
            }
            System.out.println();
        }
//        for (int i = 0; i < a.length; i++) {
//            for (int j = 0; j < a[i].length; j++) {
//                a[i][j] = (i + 1) * (j + 2);
//            }
//        }
//        a = SanWei[0];
//        b = SanWei[2];
//        for (int i = 0; i < a.length; i++) {
//            for (int j = 0; j < a[i].length; j++) {
//                System.out.print(a[i][j] + " ");
//            }
//            System.out.println();
//        }
//        for (int i = 0; i < a.length; i++) {
//            for (int j = 0; j < a[i].length; j++) {
//                System.out.print(b[i][j] + " ");
//            }
//            System.out.println();
//        }

//        int[][] arr = {{2, 5}, {1}, {3, 2, 4}, {1, 7, 5, 9}};
//        for (int i = 0; i < arr.length; i++) {
//            for (int j = 0; j < arr[i].length; j++) {
//                System.out.print(arr[i][j] + " ");
//            }
//            System.out.println();
//        }
    }
}
