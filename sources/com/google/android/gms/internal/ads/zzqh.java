package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;

/* access modifiers changed from: package-private */
public final class zzqh implements Handler.Callback, Choreographer.FrameCallback {
    private static final zzqh zzbmk = new zzqh();
    private final Handler handler;
    public volatile long zzbmj;
    private final HandlerThread zzbml;
    private Choreographer zzbmm;
    private int zzbmn;

    private zzqh() {
        HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
        this.zzbml = handlerThread;
        handlerThread.start();
        Handler handler2 = new Handler(handlerThread.getLooper(), this);
        this.handler = handler2;
        handler2.sendEmptyMessage(0);
    }

    public static zzqh zzjp() {
        return zzbmk;
    }

    public final void doFrame(long j) {
        this.zzbmj = j;
        this.zzbmm.postFrameCallbackDelayed(this, 500);
    }

    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.zzbmm = Choreographer.getInstance();
            return true;
        } else if (i == 1) {
            int i2 = this.zzbmn + 1;
            this.zzbmn = i2;
            if (i2 == 1) {
                this.zzbmm.postFrameCallback(this);
            }
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int i3 = this.zzbmn - 1;
            this.zzbmn = i3;
            if (i3 == 0) {
                this.zzbmm.removeFrameCallback(this);
                this.zzbmj = 0;
            }
            return true;
        }
    }

    public final void removeObserver() {
        this.handler.sendEmptyMessage(2);
    }

    public final void zzjq() {
        this.handler.sendEmptyMessage(1);
    }
}
