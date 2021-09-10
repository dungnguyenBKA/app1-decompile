package com.facebook.ads.redexgen.X;

import java.util.concurrent.TimeUnit;

/* renamed from: com.facebook.ads.redexgen.X.5z  reason: invalid class name and case insensitive filesystem */
public class RunnableC02755z implements Runnable {
    public EnumC02816f A00;
    public final /* synthetic */ U9 A01;

    public RunnableC02755z(U9 u9, EnumC02816f r2) {
        this.A01 = u9;
        this.A00 = r2;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.A04.A04(EnumC02836h.A03, this.A00, null);
                this.A01.A01.A02(this.A01.A02, TimeUnit.SECONDS.toMillis((long) this.A01.A03.A0T()));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
