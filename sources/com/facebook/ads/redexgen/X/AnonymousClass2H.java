package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* renamed from: com.facebook.ads.redexgen.X.2H  reason: invalid class name */
public class AnonymousClass2H extends Handler {
    public final /* synthetic */ AnonymousClass2K A00;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AnonymousClass2H(AnonymousClass2K r1, Looper looper) {
        super(looper);
        this.A00 = r1;
    }

    public final void handleMessage(Message message) {
        if (message.what != 1) {
            super.handleMessage(message);
        } else {
            this.A00.A02();
        }
    }
}
