package com.facebook.ads.redexgen.X;

import android.view.View;

public class N3 implements View.OnClickListener {
    public static String[] A02;
    public final /* synthetic */ C0664Mn A00;
    public final /* synthetic */ C1037aU A01;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{"0jbDV4SqpRnuIwDLdLhaSwFsy", "4CrQo2YdoWcqlYT3QJHt1izZuISw0o1a", "L1hOW0A7sRjLAVrGrG7yuKVrDUUFxwrZ", "r8z", "jBR", "EADx", "Dw2r3KoKizw7HI548vOXrftmgV6TcaYT", "JzZVJSkZeh7kJVI6l2oDTz"};
    }

    public N3(C1037aU aUVar, C0664Mn mn) {
        this.A01 = aUVar;
        this.A00 = mn;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A00.A01();
                this.A01.A0A.AAp(AnonymousClass29.A03);
            } catch (Throwable th) {
                KT.A00(th, this);
                if (A02[7].length() != 1) {
                    String[] strArr = A02;
                    strArr[4] = "wzs";
                    strArr[0] = "95EfxSbyIArn9raLN6CoppC7A";
                    return;
                }
                throw new RuntimeException();
            }
        }
    }
}
