package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;

final class e implements Runnable {
    final /* synthetic */ BroadcastReceiver.PendingResult b;

    e(BroadcastReceiver.PendingResult pendingResult) {
        this.b = pendingResult;
    }

    public final void run() {
        BroadcastReceiver.PendingResult pendingResult = this.b;
        if (pendingResult != null) {
            pendingResult.finish();
        }
    }
}
