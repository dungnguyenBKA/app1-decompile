package com.facebook.ads.redexgen.X;

import android.os.Build;

public class WB implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ WM A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"eOUuWViEzFdpoMILAqmgKfGD", "kQ8zGky5wq3o9AT", "ncGQnuO4sM8XFQVxbr6Mt1Vf36DFujo3", "a4nYvm2BizGaG1Ug1SxTpBLIw0WxQ6vz", "jAlZY9MHNrHTDDv2DRP1sCieuZx8QBhv", "RCRcS7R4oQOTyLjlpIEX5API7Ni0gnf1", "stcG16G11KY1ooFu5mTwbs8KzP9kRkND", "k7goAJY4JhsqFIUQ56a5dCg3eq5QWQcp"};
    }

    public WB(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 26) {
            return this.A00.A08(EnumC02916p.A05);
        }
        if (this.A00.A02 == null || this.A00.A02.getPackageInstaller() == null || this.A00.A02.getPackageInstaller().getSessionInfo(0) == null) {
            WM wm = this.A00;
            EnumC02916p r3 = EnumC02916p.A07;
            if (A01[4].charAt(16) != 'D') {
                throw new RuntimeException();
            }
            A01[4] = "aumDgxyAyTkwYeibDzhpdrzSDvCJmfPb";
            return wm.A08(r3);
        }
        WM wm2 = this.A00;
        return wm2.A05(wm2.A02.getPackageInstaller().getSessionInfo(0).getInstallReason());
    }
}
