package defpackage;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;

/* renamed from: kk0  reason: default package */
public final class kk0 extends AbstractList<ak0> implements RandomAccess {
    final ak0[] b;
    final int[] c;

    private kk0(ak0[] ak0Arr, int[] iArr) {
        this.b = ak0Arr;
        this.c = iArr;
    }

    private static void a(long j, xj0 xj0, int i, List<ak0> list, int i2, int i3, List<Integer> list2) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        xj0 xj02;
        if (i2 < i3) {
            for (int i9 = i2; i9 < i3; i9++) {
                if (list.get(i9).m() < i) {
                    throw new AssertionError();
                }
            }
            ak0 ak0 = list.get(i2);
            ak0 ak02 = list.get(i3 - 1);
            if (i == ak0.m()) {
                int intValue = list2.get(i2).intValue();
                int i10 = i2 + 1;
                i4 = i10;
                i5 = intValue;
                ak0 = list.get(i10);
            } else {
                i5 = -1;
                i4 = i2;
            }
            long j2 = 4;
            if (ak0.f(i) != ak02.f(i)) {
                int i11 = 1;
                for (int i12 = i4 + 1; i12 < i3; i12++) {
                    if (list.get(i12 - 1).f(i) != list.get(i12).f(i)) {
                        i11++;
                    }
                }
                long j3 = j + ((long) ((int) (xj0.c / 4))) + 2 + ((long) (i11 * 2));
                xj0.w0(i11);
                xj0.w0(i5);
                for (int i13 = i4; i13 < i3; i13++) {
                    byte f = list.get(i13).f(i);
                    if (i13 == i4 || f != list.get(i13 - 1).f(i)) {
                        xj0.w0(f & 255);
                    }
                }
                xj0 xj03 = new xj0();
                int i14 = i4;
                while (i14 < i3) {
                    byte f2 = list.get(i14).f(i);
                    int i15 = i14 + 1;
                    int i16 = i15;
                    while (true) {
                        if (i16 >= i3) {
                            i7 = i3;
                            break;
                        } else if (f2 != list.get(i16).f(i)) {
                            i7 = i16;
                            break;
                        } else {
                            i16++;
                        }
                    }
                    if (i15 == i7 && i + 1 == list.get(i14).m()) {
                        xj0.w0(list2.get(i14).intValue());
                        i8 = i7;
                        xj02 = xj03;
                    } else {
                        xj0.w0((int) ((((long) ((int) (xj03.c / j2))) + j3) * -1));
                        i8 = i7;
                        xj02 = xj03;
                        a(j3, xj03, i + 1, list, i14, i7, list2);
                    }
                    xj03 = xj02;
                    i14 = i8;
                    j2 = 4;
                }
                xj0.H(xj03, xj03.c);
                return;
            }
            int i17 = 0;
            int min = Math.min(ak0.m(), ak02.m());
            int i18 = i;
            while (i18 < min && ak0.f(i18) == ak02.f(i18)) {
                i17++;
                i18++;
            }
            long j4 = 1 + j + ((long) ((int) (xj0.c / 4))) + 2 + ((long) i17);
            xj0.w0(-i17);
            xj0.w0(i5);
            int i19 = i;
            while (true) {
                i6 = i + i17;
                if (i19 >= i6) {
                    break;
                }
                xj0.w0(ak0.f(i19) & 255);
                i19++;
            }
            if (i4 + 1 != i3) {
                xj0 xj04 = new xj0();
                xj0.w0((int) ((((long) ((int) (xj04.c / 4))) + j4) * -1));
                a(j4, xj04, i6, list, i4, i3, list2);
                xj0.H(xj04, xj04.c);
            } else if (i6 == list.get(i4).m()) {
                xj0.w0(list2.get(i4).intValue());
            } else {
                throw new AssertionError();
            }
        } else {
            throw new AssertionError();
        }
    }

    public static kk0 b(ak0... ak0Arr) {
        if (ak0Arr.length == 0) {
            return new kk0(new ak0[0], new int[]{0, -1});
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(ak0Arr));
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList2.add(-1);
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.set(Collections.binarySearch(arrayList, ak0Arr[i2]), Integer.valueOf(i2));
        }
        if (((ak0) arrayList.get(0)).m() != 0) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                ak0 ak0 = (ak0) arrayList.get(i3);
                int i4 = i3 + 1;
                int i5 = i4;
                while (i5 < arrayList.size()) {
                    ak0 ak02 = (ak0) arrayList.get(i5);
                    Objects.requireNonNull(ak02);
                    if (!ak02.j(0, ak0, 0, ak0.m())) {
                        continue;
                        break;
                    } else if (ak02.m() == ak0.m()) {
                        throw new IllegalArgumentException("duplicate option: " + ak02);
                    } else if (((Integer) arrayList2.get(i5)).intValue() > ((Integer) arrayList2.get(i3)).intValue()) {
                        arrayList.remove(i5);
                        arrayList2.remove(i5);
                    } else {
                        i5++;
                    }
                }
                i3 = i4;
            }
            xj0 xj0 = new xj0();
            a(0, xj0, 0, arrayList, 0, arrayList.size(), arrayList2);
            int i6 = (int) (xj0.c / 4);
            int[] iArr = new int[i6];
            for (int i7 = 0; i7 < i6; i7++) {
                iArr[i7] = xj0.readInt();
            }
            if (xj0.t()) {
                return new kk0((ak0[]) ak0Arr.clone(), iArr);
            }
            throw new AssertionError();
        }
        throw new IllegalArgumentException("the empty byte string is not a supported option");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList
    public ak0 get(int i) {
        return this.b[i];
    }

    public final int size() {
        return this.b.length;
    }
}
