package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.measurement.internal.e8;
import com.google.android.gms.measurement.internal.f8;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
public final class AppMeasurementJobService extends JobService implements e8 {
    private f8<AppMeasurementJobService> b;

    private final f8<AppMeasurementJobService> b() {
        if (this.b == null) {
            this.b = new f8<>(this);
        }
        return this.b;
    }

    @Override // com.google.android.gms.measurement.internal.e8
    @TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
    public final void a(@RecentlyNonNull JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    public void onCreate() {
        super.onCreate();
        b().a();
    }

    public void onDestroy() {
        b().b();
        super.onDestroy();
    }

    public void onRebind(@RecentlyNonNull Intent intent) {
        b().g(intent);
    }

    public boolean onStartJob(@RecentlyNonNull JobParameters jobParameters) {
        b().f(jobParameters);
        return true;
    }

    public boolean onStopJob(@RecentlyNonNull JobParameters jobParameters) {
        return false;
    }

    public boolean onUnbind(@RecentlyNonNull Intent intent) {
        b().e(intent);
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.e8
    public final boolean zza(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.e8
    public final void zzc(@RecentlyNonNull Intent intent) {
    }
}
