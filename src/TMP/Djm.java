package TMP;

import java.util.Scanner;

public class Djm {
    public static void main(String[] args) {
        // 读取键盘对象
        Scanner scanner = new Scanner(System.in);

        //刚度矩阵，将所有刚度矩阵初始化为 2 * 2 的数组
        double[][] kii = new double[2][2], kij = new double[2][2], kim = new double[2][2], kji = new double[2][2],
                kjj = new double[2][2], kjm = new double[2][2], kmi = new double[2][2], kmj = new double[2][2],
                kmm = new double[2][2];

        // 三个坐标
        double xi, yi;
        double xj, yj;
        double xm, ym;

        // TODO: 面积计算
        double area = 10;

        System.out.println("Input u: ");
        double u = scanner.nextDouble();

        System.out.println("Input E: ");
        double e = scanner.nextDouble();

        System.out.println("Input h: ");
        double h = scanner.nextDouble();

        System.out.println("Input the first point(xi, yi): ");
        xi = scanner.nextDouble();
        yi = scanner.nextDouble();

        System.out.println("Input the first point(xj, yj): ");
        xj = scanner.nextDouble();
        yj = scanner.nextDouble();

        System.out.println("Input the first point(xm, ym): ");
        xm = scanner.nextDouble();
        ym = scanner.nextDouble();

        double ai = xj * ym - xm * yi;
        double bi = yj - ym;
        double ci = xm - xj;

        double aj = xm * yi - xi * ym;
        double bj = ym - yi;
        double cj = xi - xm;

        double am = xi * yj - xj * yi;
        double bm = yi - yj;
        double cm = xj - xi;

        // z 是矩阵外的那一串
        double z = (e * h) / (4 * area * (1 - u * u));


        // 下面这几个数组可能用不到，用到了会解释用途
        double[] xArray = {xi, xj, xm};
        double[] yArray = {yi, yj, ym};
        double[] aArray = {ai, aj, am};
        double[] bArray = {bi, bj, bm};
        double[] cArray = {ci, cj, cm};
        double[] iArray = {ai, bi, ci};
        double[] jArray = {aj, bj, cj};
        double[] mArray = {am, bm, cm};

        kii[0][0] = z * (bi * bi + (((1 - u) * ci * ci) / 2));
        kii[0][1] = z * (u * bi * ci + ((1 - u) * ci * bi) / 2);
        kii[1][0] = z * ((u * ci * bi) + ((1 - u) * bi * ci) / 2);
        kii[1][1] = z * (ci * ci + ((1 - u) * bi * bi) / 2);

        kij[0][0] = z * (bi * bj + ((1 - u) * ci * cj) / 2);
        kij[0][1] = z * (u * bi * cj + ((1 - u) * ci * bj) / 2);
        kij[1][0] = z * ((u * ci * bj) + ((1 - u) * bi * cj) / 2);
        kij[1][1] = z * (ci * cj + ((1 - u) * bi * bj) / 2);

        kim[0][0] = z * (bi * bm + (((1 - u) * ci * cm) / 2));
        kim[0][1] = z * (u * bi * cm + ((1 - u) * ci * bm) / 2);
        kim[1][0] = z * ((u * ci * bm) + ((1 - u) * bi * cm) / 2);
        kim[1][1] = z * (ci * cm + ((1 - u) * bi * bm) / 2);

        kji[0][0] = z * (bj * bi + (((1 - u) * cj * ci) / 2));
        kji[0][1] = z * (u * bj * ci + ((1 - u) * cj * bi) / 2);
        kji[1][0] = z * ((u * cj * bi) + ((1 - u) * bj * ci) / 2);
        kji[1][1] = z * (cj * ci + ((1 - u) * bj * bi) / 2);

        kjj[0][0] = z * (bj * bj + (((1 - u) * cj * cj) / 2));
        kjj[0][1] = z * (u * bj * cj + ((1 - u) * cj * bj) / 2);
        kjj[1][0] = z * ((u * cj * bj) + ((1 - u) * bj * cj) / 2);
        kjj[1][1] = z * (cj * cj + ((1 - u) * bj * bj) / 2);

        kjm[0][0] = z * (bj * bm + (((1 - u) * cj * cm) / 2));
        kjm[0][1] = z * (u * bj * cm + ((1 - u) * cj * bm) / 2);
        kjm[1][0] = z * ((u * cj * bm) + ((1 - u) * bj * cm) / 2);
        kjm[1][1] = z * (cj * cm + ((1 - u) * bj * bm) / 2);

        kmi[0][0] = z * (bm * bi + (((1 - u) * cm * ci) / 2));
        kmi[0][1] = z * (u * bm * ci + ((1 - u) * cm * bi) / 2);
        kmi[1][0] = z * ((u * cm * bi) + ((1 - u) * bm * ci) / 2);
        kmi[1][1] = z * (cm * ci + ((1 - u) * bm * bi) / 2);

        kmj[0][0] = z * (bm * bj + (((1 - u) * cm * cj) / 2));
        kmj[0][1] = z * (u * bm * cj + ((1 - u) * cm * bj) / 2);
        kmj[1][0] = z * ((u * cm * bj) + ((1 - u) * bm * cj) / 2);
        kmj[1][1] = z * (cm * cj + ((1 - u) * bm * bj) / 2);

        kmm[0][0] = z * (bm * bm + (((1 - u) * cm * cm) / 2));
        kmm[0][1] = z * (u * bm * cm + ((1 - u) * cm * bm) / 2);
        kmm[1][0] = z * ((u * cm * bm) + ((1 - u) * bm * cm) / 2);
        kmm[1][1] = z * (cm * cm + ((1 - u) * bm * bm) / 2);


        // 单元刚度矩阵
        double[][][][] k = {{{{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}}, {{{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}}, {{{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}, {{1, 2}, {2, 3}}}};

        for (int i = 0; i < kmi.length; i++) {
            for (int j = 0; j < kmi[i].length; j++) {
                System.out.print(kmi[i][j] + " ");
            }
            System.out.println();
        }
    }
}
