package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.OrientationEventListener;

/* renamed from: com.facebook.ads.redexgen.X.6G  reason: invalid class name */
public class AnonymousClass6G extends OrientationEventListener {
    public final /* synthetic */ long A00;
    public final /* synthetic */ AnonymousClass6H A01;
    public final /* synthetic */ C02936r A02;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AnonymousClass6G(AnonymousClass6H r1, Context context, int i, long j, C02936r r6) {
        super(context, i);
        this.A01 = r1;
        this.A00 = j;
        this.A02 = r6;
    }

    public final void onOrientationChanged(int i) {
        AnonymousClass6H.A00(this.A01).A02(new X7(this.A00, this.A02, i), AnonymousClass6E.A0A);
    }
}
