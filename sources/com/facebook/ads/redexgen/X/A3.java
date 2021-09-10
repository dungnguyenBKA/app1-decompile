package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class A3 extends Handler {
    public final /* synthetic */ EO A00;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public A3(EO eo, Looper looper) {
        super(looper);
        this.A00 = eo;
    }

    public final void handleMessage(Message message) {
        if (!KT.A02(this)) {
            try {
                this.A00.A0B(message);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
