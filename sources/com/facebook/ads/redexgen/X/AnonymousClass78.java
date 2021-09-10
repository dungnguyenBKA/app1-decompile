package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;

/* renamed from: com.facebook.ads.redexgen.X.78  reason: invalid class name */
public class AnonymousClass78 implements Callable<Boolean> {
    public final BlockingQueue<Boolean> A00 = new LinkedBlockingQueue();
    public final /* synthetic */ AnonymousClass7D A01;

    public AnonymousClass78(AnonymousClass7D r3, AnonymousClass7C r4) {
        this.A01 = r3;
        new Handler(Looper.getMainLooper()).post(new XH(this, r3, r4));
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final Boolean call() throws Exception {
        return this.A00.take();
    }

    /* access modifiers changed from: private */
    public void A03(AnonymousClass7C r8) {
        Q2 A05 = Q2.A05(this.A01.A04);
        Uri parse = Uri.parse(r8.A08);
        long j = r8.A00;
        if (j == -1) {
            j = J4.A0M(this.A01.A04);
        }
        A05.A0F(parse, new XI(this), j);
    }
}
