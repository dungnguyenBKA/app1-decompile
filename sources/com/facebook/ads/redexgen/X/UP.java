package com.facebook.ads.redexgen.X;

import android.content.pm.ApplicationInfo;

public class UP implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0863Uj A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"273FKnw5fEMMMPHYpDWr2uCxLH", "MURfYE", "2MrWxfjycJYz8CRz8nVEoUtgAppiNGkb", "dgs6GO1Bgwq7bEpFzLz1V7Vq3FkVRsxg", "uUhMN1Ac0a0MVvdzsNpT9rjxKSsemVru", "HLxj17LMU0ZLExoNf0E99eYx3QTlHuEl", "3ccBwYNuPT2bbHKd70up9vlieZX79PEX", "FpcSlILO2LyEt0C9jtDQqRZtHAa4Q2N9"};
    }

    public UP(C0863Uj uj) {
        this.A00 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A01 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        C0863Uj uj = this.A00;
        ApplicationInfo applicationInfo = uj.A01;
        if (A01[1].length() != 3) {
            A01[3] = "Yec9tINwCXE8zEgRYPM9thJfbPEs0Pqz";
            return uj.A09(applicationInfo.taskAffinity);
        }
        throw new RuntimeException();
    }
}
