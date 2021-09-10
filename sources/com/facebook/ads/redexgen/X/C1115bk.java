package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* renamed from: com.facebook.ads.redexgen.X.bk  reason: case insensitive filesystem */
public final class C1115bk implements IA {
    public final Handler A00;

    public C1115bk(Handler handler) {
        this.A00 = handler;
    }

    @Override // com.facebook.ads.redexgen.X.IA
    public final Looper A6j() {
        return this.A00.getLooper();
    }

    @Override // com.facebook.ads.redexgen.X.IA
    public final Message A9A(int i, int i2, int i3) {
        return this.A00.obtainMessage(i, i2, i3);
    }

    @Override // com.facebook.ads.redexgen.X.IA
    public final Message A9B(int i, int i2, int i3, Object obj) {
        return this.A00.obtainMessage(i, i2, i3, obj);
    }

    @Override // com.facebook.ads.redexgen.X.IA
    public final Message A9C(int i, Object obj) {
        return this.A00.obtainMessage(i, obj);
    }

    @Override // com.facebook.ads.redexgen.X.IA
    public final void AD9(int i) {
        this.A00.removeMessages(i);
    }

    @Override // com.facebook.ads.redexgen.X.IA
    public final boolean ADc(int i) {
        return this.A00.sendEmptyMessage(i);
    }

    @Override // com.facebook.ads.redexgen.X.IA
    public final boolean ADd(int i, long j) {
        return this.A00.sendEmptyMessageAtTime(i, j);
    }
}
