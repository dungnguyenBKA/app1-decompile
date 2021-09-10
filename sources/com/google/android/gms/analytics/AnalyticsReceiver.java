package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.gtm.zzfi;

public final class AnalyticsReceiver extends BroadcastReceiver {
    private zzfi a;

    public void onReceive(@RecentlyNonNull Context context, @RecentlyNonNull Intent intent) {
        if (this.a == null) {
            this.a = new zzfi();
        }
        zzfi.zzb(context, intent);
    }
}
