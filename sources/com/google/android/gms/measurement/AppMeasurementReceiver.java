package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.a4;
import com.google.android.gms.measurement.internal.b4;

public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements a4 {
    private b4 c;

    public void onReceive(@RecentlyNonNull Context context, @RecentlyNonNull Intent intent) {
        if (this.c == null) {
            this.c = new b4(this);
        }
        this.c.b(context, intent);
    }
}
