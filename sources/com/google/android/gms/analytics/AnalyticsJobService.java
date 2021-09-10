package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.gtm.zzfm;
import com.google.android.gms.internal.gtm.zzfn;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
public final class AnalyticsJobService extends JobService implements zzfm {
    private zzfn<AnalyticsJobService> b;

    private final zzfn<AnalyticsJobService> a() {
        if (this.b == null) {
            this.b = new zzfn<>(this);
        }
        return this.b;
    }

    @Override // com.google.android.gms.internal.gtm.zzfm
    public boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
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

    public boolean onStartJob(@RecentlyNonNull JobParameters jobParameters) {
        a().zzi(jobParameters);
        return true;
    }

    public boolean onStopJob(@RecentlyNonNull JobParameters jobParameters) {
        return false;
    }

    @Override // com.google.android.gms.internal.gtm.zzfm
    @TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
    public final void zza(@RecentlyNonNull JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }
}
