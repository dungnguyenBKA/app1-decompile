package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;

/* renamed from: com.facebook.ads.redexgen.X.6A  reason: invalid class name */
public class AnonymousClass6A extends Handler {
    public final /* synthetic */ AnonymousClass6B A00;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AnonymousClass6A(AnonymousClass6B r1, Looper looper) {
        super(looper);
        this.A00 = r1;
    }

    @SuppressLint({"CatchGeneralException"})
    public final void handleMessage(Message message) {
        if (!KT.A02(this)) {
            try {
                if (AnonymousClass68.A00[AnonymousClass69.values()[message.what].ordinal()] == 1) {
                    MotionEvent motionEvent = (MotionEvent) message.obj;
                    if (motionEvent != null) {
                        this.A00.A02.A01(motionEvent);
                    }
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
