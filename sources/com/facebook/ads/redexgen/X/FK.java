package com.facebook.ads.redexgen.X;

import java.io.IOException;

public class FK implements Runnable {
    public static String[] A06;
    public final /* synthetic */ FP A00;
    public final /* synthetic */ FQ A01;
    public final /* synthetic */ FR A02;
    public final /* synthetic */ FS A03;
    public final /* synthetic */ IOException A04;
    public final /* synthetic */ boolean A05;

    static {
        A00();
    }

    public static void A00() {
        A06 = new String[]{"MFzmm2XpKtQDQZ1nrLFzIVLfypAdXqn0", "St6NP3oa8jPcs9ySqX58Qb7cq6M0Lslj", "FY6GSV0T1DmbxtheDZWAefy5bW4XMUrK", "e7zVVEHUrXPHmOTr9XrOqtCewhDOezV9", "rRe4XoYawEGGgKvf4FFgivRzu7z94IPy", "2sUcpRkbdiQEA9XQnsePPVJ2ZVsexJIi", "YygzZHUIY4dTUEusYM1qdSBaSuhDwAUc", "5Y8Iu0wedn9Jl3yvaaWMiUkpwoVz8Vqp"};
    }

    public FK(FP fp, FS fs, FQ fq, FR fr, IOException iOException, boolean z) {
        this.A00 = fp;
        this.A03 = fs;
        this.A01 = fq;
        this.A02 = fr;
        this.A04 = iOException;
        this.A05 = z;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A03.AAe(this.A00.A00, this.A00.A01, this.A01, this.A02, this.A04, this.A05);
            } catch (Throwable th) {
                String[] strArr = A06;
                if (strArr[7].charAt(1) != strArr[2].charAt(1)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A06;
                strArr2[7] = "5YuzUPqIN2qUpgzcgBPCGBub3XZtkUQJ";
                strArr2[2] = "DYAXZKj6jF9OEHVnXiKZJEzpdMmcnACr";
                KT.A00(th, this);
            }
        }
    }
}
