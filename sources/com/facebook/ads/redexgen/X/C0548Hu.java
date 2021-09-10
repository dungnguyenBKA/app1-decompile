package com.facebook.ads.redexgen.X;

import android.os.ConditionVariable;

/* renamed from: com.facebook.ads.redexgen.X.Hu  reason: case insensitive filesystem */
public class C0548Hu extends Thread {
    public final /* synthetic */ ConditionVariable A00;
    public final /* synthetic */ C1108bd A01;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0548Hu(C1108bd bdVar, String str, ConditionVariable conditionVariable) {
        super(str);
        this.A01 = bdVar;
        this.A00 = conditionVariable;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                synchronized (this.A01) {
                    try {
                        this.A00.open();
                        this.A01.A04();
                    } catch (Throwable th) {
                        th = th;
                    }
                }
            } catch (Throwable th2) {
                KT.A00(th2, this);
            }
        }
    }
}
