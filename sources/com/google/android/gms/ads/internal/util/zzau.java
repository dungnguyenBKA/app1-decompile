package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;

public final class zzau {
    private final String[] a;
    private final double[] b;
    private final double[] c;
    private final int[] d;
    private int e = 0;

    zzau(zzav zzav, j jVar) {
        int size = zzav.b.size();
        this.a = (String[]) zzav.a.toArray(new String[size]);
        this.b = a(zzav.b);
        this.c = a(zzav.c);
        this.d = new int[size];
    }

    private static double[] a(List<Double> list) {
        int size = list.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }

    public final void zza(double d2) {
        this.e++;
        int i = 0;
        while (true) {
            double[] dArr = this.c;
            if (i < dArr.length) {
                if (dArr[i] <= d2 && d2 < this.b[i]) {
                    int[] iArr = this.d;
                    iArr[i] = iArr[i] + 1;
                }
                if (d2 >= dArr[i]) {
                    i++;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final List<zzaw> zzzn() {
        ArrayList arrayList = new ArrayList(this.a.length);
        int i = 0;
        while (true) {
            String[] strArr = this.a;
            if (i >= strArr.length) {
                return arrayList;
            }
            String str = strArr[i];
            double d2 = this.c[i];
            double d3 = this.b[i];
            int[] iArr = this.d;
            double d4 = (double) iArr[i];
            double d5 = (double) this.e;
            Double.isNaN(d4);
            Double.isNaN(d5);
            arrayList.add(new zzaw(str, d2, d3, d4 / d5, iArr[i]));
            i++;
        }
    }
}
