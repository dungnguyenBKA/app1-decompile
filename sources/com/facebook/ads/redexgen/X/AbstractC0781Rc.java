package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Rc  reason: case insensitive filesystem */
public abstract class AbstractC0781Rc<T> implements AnonymousClass0X<T> {
    public static byte[] A01;
    public static String[] A02;
    public final String A00;

    static {
        A05();
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = (copyOfRange[i4] - i3) - 99;
            if (A02[0].charAt(9) != '2') {
                throw new RuntimeException();
            }
            A02[4] = "xalbLzqPtLNAZMxuuBcoxRjt1J2nAJYQ";
            copyOfRange[i4] = (byte) i5;
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{54, 61, 52, 52};
    }

    public static void A05() {
        A02 = new String[]{"MK0lJZb1G2RRFZEaFDTiwbPmIpRtYmde", "mY0WYGn7", "KMPGaiIzki7l9AH4HVkge6", "m9KV7hMB", "q4luaSiM5kuOIYzPzCoa1lP4AmyDrsGF", "uYbWOwnO0fDov", "", "4k"};
    }

    public AbstractC0781Rc(String str) {
        this.A00 = str;
    }

    public AnonymousClass0W A06(@Nullable T t) {
        return new AnonymousClass0W(this, t == null ? A03(0, 4, 101) : t.toString());
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0X
    public final String getName() {
        return this.A00;
    }
}
