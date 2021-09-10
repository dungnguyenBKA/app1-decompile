package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

@SuppressLint({"HandlerLeak"})
/* renamed from: com.facebook.ads.redexgen.X.Bq  reason: case insensitive filesystem */
public class HandlerC0410Bq extends Handler {
    public final /* synthetic */ C0962Ye A00;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public HandlerC0410Bq(C0962Ye ye, Looper looper) {
        super(looper);
        this.A00 = ye;
    }

    public final void handleMessage(Message message) {
        if (!KT.A02(this)) {
            try {
                byte[] bArr = (byte[]) message.obj;
                for (C0959Yb yb : this.A00.A09) {
                    if (yb.A0O(bArr)) {
                        yb.A0K(message.what);
                        return;
                    }
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
