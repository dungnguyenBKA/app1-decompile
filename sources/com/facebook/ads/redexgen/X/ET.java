package com.facebook.ads.redexgen.X;

import android.os.ConditionVariable;

public class ET implements Runnable {
    public final /* synthetic */ ConditionVariable A00;

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A00.open();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
