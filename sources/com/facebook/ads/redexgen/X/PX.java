package com.facebook.ads.redexgen.X;

public class PX implements AbstractC0756Qd {
    public static String[] A01;
    public final /* synthetic */ PA A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"uB1RC", "E7rLPB8klTW5J9FjuULp7NzB4AWE19Zm", "BGfRoGqubHgomR1aknLAm7BQoVqY9Rjo", "2aqRDajB7mkFiu8JUeuEjEkcXKsGj4gd", "YPIu8FWl8tmTV", "O2dNNTCX3dr0fdBVB7HhwqWACslxe6aK", "WKmspm9NaQlidgYEldSczPSkp8W1cJlS", "CDbKVWoo3Luj5aOlcVCk0HC1kDrFWNgV"};
    }

    public PX(PA pa) {
        this.A00 = pa;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0756Qd
    public final void ACb() {
        if (this.A00.A02 != null) {
            PA pa = this.A00;
            if (A01[3].charAt(8) != 'm') {
                A01[3] = "G62o5XZ8JRlbj2NUyH9KkdSeUCUXeXTA";
                pa.A02.A3t(this.A00.A03.A7A());
                return;
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0756Qd
    public final void ACd(C0758Qf qf) {
        if (this.A00.A02 != null) {
            if (qf == null || !qf.A00()) {
                this.A00.A02.A3t(this.A00.A03.A7A());
                return;
            }
            M9 m9 = this.A00.A02;
            PA pa = this.A00;
            if (A01[5].length() != 14) {
                A01[1] = "MYgqySdSEunU6EGhIZ8lv2VKjJmAUpiH";
                m9.A3t(pa.A03.A7B());
                return;
            }
            throw new RuntimeException();
        }
    }
}
