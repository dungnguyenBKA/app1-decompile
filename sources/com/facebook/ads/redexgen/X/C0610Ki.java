package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.facebook.ads.redexgen.X.Ki  reason: case insensitive filesystem */
public final class C0610Ki {
    public static String[] A00;
    public static final AtomicReference<AbstractC0609Kh> A01 = new AtomicReference<>(null);

    public static void A01() {
        A00 = new String[]{"XnOcKNlJJ8CDQQR", "VGhv6FkZrITxQRu9gbMUemqcetkh7B5f", "vVz2BTpV32jHfI", "d8hV", "Sy49NQqrKXgvTEWwSBtXX6HecYQBIBGU", "Db46iG0BOxvexN4G9aNEWNZ9mU0XJx13", "mKukGrwwCcIhJco4KmzrvmgYUSCtT5hL", "T8hiTRn5Amgadg81lccjSSIUWb1StHzV"};
    }

    static {
        A01();
    }

    public static AbstractC0609Kh A00() {
        AbstractC0609Kh kh = A01.get();
        if (A00[5].charAt(26) != '0') {
            throw new RuntimeException();
        }
        String[] strArr = A00;
        strArr[7] = "JAkiPTeS8Sgp4wJmZ2cE1Xuhf0WoAHfE";
        strArr[4] = "TWyum6rZOmg61QmMcVNeRxvFtffIUfDC";
        if (kh == null) {
            return new C1157cR();
        }
        return kh;
    }

    public static void A02(AbstractC0609Kh kh) {
        A01.set(kh);
    }
}
