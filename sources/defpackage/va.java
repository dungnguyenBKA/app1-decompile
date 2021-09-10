package defpackage;

import android.graphics.Color;
import defpackage.ub;
import java.util.ArrayList;

/* renamed from: va  reason: default package */
public class va implements rb<j9> {
    private int a;

    public va(int i) {
        this.a = i;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.rb
    public j9 a(ub ubVar, float f) {
        int i;
        double d;
        ArrayList arrayList = new ArrayList();
        boolean z = ubVar.o0() == ub.b.BEGIN_ARRAY;
        if (z) {
            ubVar.o();
        }
        while (ubVar.b0()) {
            arrayList.add(Float.valueOf((float) ubVar.j0()));
        }
        if (z) {
            ubVar.S();
        }
        if (this.a == -1) {
            this.a = arrayList.size() / 4;
        }
        int i2 = this.a;
        float[] fArr = new float[i2];
        int[] iArr = new int[i2];
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i = this.a * 4;
            if (i3 >= i) {
                break;
            }
            int i6 = i3 / 4;
            double floatValue = (double) ((Float) arrayList.get(i3)).floatValue();
            int i7 = i3 % 4;
            if (i7 == 0) {
                fArr[i6] = (float) floatValue;
            } else if (i7 == 1) {
                Double.isNaN(floatValue);
                Double.isNaN(floatValue);
                i4 = (int) (floatValue * 255.0d);
            } else if (i7 == 2) {
                Double.isNaN(floatValue);
                Double.isNaN(floatValue);
                i5 = (int) (floatValue * 255.0d);
            } else if (i7 == 3) {
                Double.isNaN(floatValue);
                Double.isNaN(floatValue);
                iArr[i6] = Color.argb(255, i4, i5, (int) (floatValue * 255.0d));
            }
            i3++;
        }
        j9 j9Var = new j9(fArr, iArr);
        if (arrayList.size() > i) {
            int size = (arrayList.size() - i) / 2;
            double[] dArr = new double[size];
            double[] dArr2 = new double[size];
            int i8 = 0;
            while (i < arrayList.size()) {
                if (i % 2 == 0) {
                    dArr[i8] = (double) ((Float) arrayList.get(i)).floatValue();
                } else {
                    dArr2[i8] = (double) ((Float) arrayList.get(i)).floatValue();
                    i8++;
                }
                i++;
            }
            for (int i9 = 0; i9 < j9Var.c(); i9++) {
                int i10 = j9Var.a()[i9];
                double d2 = (double) j9Var.b()[i9];
                int i11 = 1;
                while (true) {
                    if (i11 >= size) {
                        d = dArr2[size - 1];
                        break;
                    }
                    int i12 = i11 - 1;
                    double d3 = dArr[i12];
                    double d4 = dArr[i11];
                    if (dArr[i11] >= d2) {
                        Double.isNaN(d2);
                        Double.isNaN(d2);
                        Double.isNaN(d2);
                        double d5 = dArr2[i12];
                        double d6 = dArr2[i11];
                        int i13 = cc.b;
                        d = ((d6 - d5) * ((d2 - d3) / (d4 - d3))) + d5;
                        break;
                    }
                    i11++;
                }
                j9Var.a()[i9] = Color.argb((int) (d * 255.0d), Color.red(i10), Color.green(i10), Color.blue(i10));
            }
        }
        return j9Var;
    }
}
