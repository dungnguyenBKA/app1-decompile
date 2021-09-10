package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.6g  reason: invalid class name and case insensitive filesystem */
public final class C02826g {
    public static long A01 = 0;
    @Nullable
    public static C02826g A02 = null;
    public final Map<Integer, AnonymousClass60<AbstractC02956t>> A00;

    public C02826g(Map<Integer, AnonymousClass60<AbstractC02956t>> map) {
        this.A00 = map;
    }

    public static synchronized long A00() {
        long j;
        synchronized (C02826g.class) {
            j = A01;
        }
        return j;
    }

    @SuppressLint({"UseSparseArrays"})
    public static C02826g A01() {
        if (A02 == null) {
            A02 = new C02826g(Collections.synchronizedMap(new HashMap()));
        }
        return A02;
    }

    private synchronized void A02(AnonymousClass60<AbstractC02956t> r6, int i) {
        int i2 = 0;
        boolean z = false;
        if (r6.A01() == 0) {
            z = true;
            i2 = ((AbstractC02956t) r6.A02()).A06();
        }
        A01 += (long) ((z ? 0 : 4) + (i - i2));
    }

    @SuppressLint({"PublicMethodReturnMutableCollection"})
    public final Map<Integer, AnonymousClass60<AbstractC02956t>> A03() {
        return this.A00;
    }

    public final synchronized void A04(int i, AnonymousClass60<AbstractC02956t> r4, int i2) {
        this.A00.put(Integer.valueOf(i), r4);
        A02(r4, i2);
    }
}
