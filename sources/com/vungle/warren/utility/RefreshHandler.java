package com.vungle.warren.utility;

import android.os.Handler;

public class RefreshHandler extends Handler {
    private static final int DISABLE_REFRESH_VALUE = 0;
    private static final int ID = 0;
    private long handlerStartTime;
    private long handlerTimeElapsed;
    private final long refreshDuration;
    private Runnable runnable;

    public RefreshHandler(Runnable runnable2, long j) {
        this.refreshDuration = j;
        this.runnable = runnable2;
    }

    public synchronized void clean() {
        removeMessages(0);
        removeCallbacks(this.runnable);
        this.handlerTimeElapsed = 0;
        this.handlerStartTime = 0;
    }

    public synchronized void pause() {
        if (hasMessages(0)) {
            this.handlerTimeElapsed = (System.currentTimeMillis() - this.handlerStartTime) + this.handlerTimeElapsed;
            removeMessages(0);
            removeCallbacks(this.runnable);
        }
    }

    public synchronized void start() {
        if (this.refreshDuration > 0) {
            if (!hasMessages(0)) {
                long j = this.refreshDuration - this.handlerTimeElapsed;
                this.handlerStartTime = System.currentTimeMillis();
                postDelayed(this.runnable, j);
            }
        }
    }
}
