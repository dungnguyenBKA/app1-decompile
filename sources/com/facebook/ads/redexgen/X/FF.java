package com.facebook.ads.redexgen.X;

public class FF implements Runnable {
    public static String[] A02;
    public final /* synthetic */ FP A00;
    public final /* synthetic */ FS A01;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{"WoRssMEMKAHHv5eOYWv6bcyCNlOXOf", "pA2", "3fT7OOiQOTO0YPgLHZKt2Q997Hb2Xix9", "WvgPUzUWGb7Do3xsV3", "Ec3vTQmgAcMNirmUvkhwoL1JefVS29Et", "cLkVqjW9ihOrHUtkcRLXNZqcrrO72e", "NZCcSFELY0AlwKVNvcWKAmZ3Ywu7Rk3n", "YvU"};
    }

    public FF(FP fp, FS fs) {
        this.A00 = fp;
        this.A01 = fs;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.AAn(this.A00.A00, this.A00.A01);
            } catch (Throwable th) {
                KT.A00(th, this);
                if (A02[4].charAt(31) != 't') {
                    throw new RuntimeException();
                }
                String[] strArr = A02;
                strArr[7] = "YLN";
                strArr[1] = "t0z";
            }
        }
    }
}
