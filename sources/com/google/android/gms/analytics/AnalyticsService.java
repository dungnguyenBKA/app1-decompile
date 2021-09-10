package com.google.android.gms.analytics;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.gtm.zzfm;
import com.google.android.gms.internal.gtm.zzfn;

public final class AnalyticsService extends Service implements zzfm {
    private zzfn<AnalyticsService> b;

    private final zzfn<AnalyticsService> a() {
        if (this.b == null) {
            this.b = new zzfn<>(this);
        }
        return this.b;
    }

    @Override // com.google.android.gms.internal.gtm.zzfm
    public boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    @RecentlyNonNull
    public IBinder onBind(@RecentlyNonNull Intent intent) {
        a();
        return null;
    }

    public final void onCreate() {
        super.onCreate();
        a().zze();
    }

    public final void onDestroy() {
        a().zzf();
        super.onDestroy();
    }

    public final int onStartCommand(@RecentlyNonNull Intent intent, int i, int i2) {
        a().zza(intent, i, i2);
        return 2;
    }

    @Override // com.google.android.gms.internal.gtm.zzfm
    public final void zza(@RecentlyNonNull JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }
}
