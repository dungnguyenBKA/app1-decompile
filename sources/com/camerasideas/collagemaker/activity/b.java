package com.camerasideas.collagemaker.activity;

import android.os.MessageQueue;

public final /* synthetic */ class b implements MessageQueue.IdleHandler {
    public final /* synthetic */ BaseMvpActivity a;

    public /* synthetic */ b(BaseMvpActivity baseMvpActivity) {
        this.a = baseMvpActivity;
    }

    public final boolean queueIdle() {
        this.a.o();
        return false;
    }
}
