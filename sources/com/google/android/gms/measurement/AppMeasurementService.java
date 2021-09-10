package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.e8;
import com.google.android.gms.measurement.internal.f8;

public final class AppMeasurementService extends Service implements e8 {
    private f8<AppMeasurementService> b;

    private final f8<AppMeasurementService> b() {
        if (this.b == null) {
            this.b = new f8<>(this);
        }
        return this.b;
    }

    @Override // com.google.android.gms.measurement.internal.e8
    public final void a(@RecentlyNonNull JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @RecentlyNonNull
    public IBinder onBind(@RecentlyNonNull Intent intent) {
        return b().d(intent);
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

    public int onStartCommand(@RecentlyNonNull Intent intent, int i, int i2) {
        b().c(intent, i, i2);
        return 2;
    }

    public boolean onUnbind(@RecentlyNonNull Intent intent) {
        b().e(intent);
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.e8
    public final boolean zza(int i) {
        return stopSelfResult(i);
    }

    @Override // com.google.android.gms.measurement.internal.e8
    public final void zzc(@RecentlyNonNull Intent intent) {
        WakefulBroadcastReceiver.a(intent);
    }
}
