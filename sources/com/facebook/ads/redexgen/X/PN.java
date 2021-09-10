package com.facebook.ads.redexgen.X;

import android.database.ContentObserver;
import android.os.Handler;

public final class PN extends ContentObserver {
    public final MQ A00;

    public PN(Handler handler, MQ mq) {
        super(handler);
        this.A00 = mq;
    }

    public final boolean deliverSelfNotifications() {
        return false;
    }

    public final void onChange(boolean z) {
        this.A00.A0a();
    }
}
