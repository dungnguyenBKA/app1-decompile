package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Mu  reason: case insensitive filesystem */
public class View$OnClickListenerC0671Mu implements View.OnClickListener {
    public static String[] A02;
    public final /* synthetic */ C0664Mn A00;
    public final /* synthetic */ C1041aY A01;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{"Oq", "EvGClE7if1wWI664DgGuGJMVxIj5MmF8", "WEj5b", "ZnP49bXAxkKFgNqp8", "Y2wBPaH57L9Gttlp", "AMrJJ9So27w7KiYttAq3AFMsZzT3RVfH", "8te6O8WI5P7ERWBX", "5xXH0hCktOzz8vKUWRcLVJoUpm5lTBxe"};
    }

    public View$OnClickListenerC0671Mu(C1041aY aYVar, C0664Mn mn) {
        this.A01 = aYVar;
        this.A00 = mn;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A00.A01();
                this.A01.A0A.AAp(AnonymousClass29.A05);
            } catch (Throwable th) {
                if (A02[5].charAt(20) != 'D') {
                    A02[2] = "snOHg";
                    KT.A00(th, this);
                    return;
                }
                throw new RuntimeException();
            }
        }
    }
}
