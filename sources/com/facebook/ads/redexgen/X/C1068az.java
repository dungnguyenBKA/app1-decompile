package com.facebook.ads.redexgen.X;

import android.text.SpannableStringBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.az  reason: case insensitive filesystem */
public final class C1068az implements GC {
    public static byte[] A04;
    public final int A00;
    public final List<C1067ay> A01;
    public final long[] A02 = new long[(this.A00 * 2)];
    public final long[] A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 125);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{5};
    }

    public C1068az(List<C1067ay> list) {
        this.A01 = list;
        this.A00 = list.size();
        for (int i = 0; i < this.A00; i++) {
            C1067ay ayVar = list.get(i);
            int i2 = i * 2;
            this.A02[i2] = ayVar.A01;
            this.A02[i2 + 1] = ayVar.A00;
        }
        long[] jArr = this.A02;
        this.A03 = Arrays.copyOf(jArr, jArr.length);
        Arrays.sort(this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final List<GB> A63(long j) {
        ArrayList arrayList = null;
        C1067ay cue = null;
        SpannableStringBuilder normalCueTextBuilder = null;
        for (int i = 0; i < this.A00; i++) {
            long[] jArr = this.A02;
            if (jArr[i * 2] <= j && j < jArr[(i * 2) + 1]) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                C1067ay ayVar = this.A01.get(i);
                if (!ayVar.A00()) {
                    arrayList.add(ayVar);
                } else if (cue == null) {
                    cue = ayVar;
                } else {
                    String A002 = A00(0, 1, 126);
                    if (normalCueTextBuilder == null) {
                        normalCueTextBuilder = new SpannableStringBuilder();
                        normalCueTextBuilder.append(cue.A0C).append((CharSequence) A002).append(ayVar.A0C);
                    } else {
                        normalCueTextBuilder.append((CharSequence) A002).append(ayVar.A0C);
                    }
                }
            }
        }
        if (normalCueTextBuilder != null) {
            arrayList.add(new C1067ay(normalCueTextBuilder));
        } else if (cue != null) {
            arrayList.add(cue);
        }
        if (arrayList != null) {
            return arrayList;
        }
        return Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final long A6S(int i) {
        boolean z;
        boolean z2 = true;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A03(z);
        if (i >= this.A03.length) {
            z2 = false;
        }
        C0551Hx.A03(z2);
        return this.A03[i];
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final int A6T() {
        return this.A03.length;
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final int A6n(long j) {
        int A0A = C0556Ic.A0A(this.A03, j, false, false);
        if (A0A < this.A03.length) {
            return A0A;
        }
        return -1;
    }
}
