package com.google.android.gms.internal.gtm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.google.android.gms.analytics.q;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.stats.a;

public final class zzcb implements ServiceConnection {
    final /* synthetic */ zzcc zza;
    private volatile boolean zzb;
    private volatile zzey zzc;

    protected zzcb(zzcc zzcc) {
        this.zza = zzcc;
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0050 A[SYNTHETIC, Splitter:B:26:0x0050] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0064  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onServiceConnected(android.content.ComponentName r3, android.os.IBinder r4) {
        /*
        // Method dump skipped, instructions count: 140
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzcb.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        n.d("AnalyticsServiceConnection.onServiceDisconnected");
        this.zza.zzq().i(new zzca(this, componentName));
    }

    public final zzey zza() {
        q.h();
        Intent intent = new Intent("com.google.android.gms.analytics.service.START");
        intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
        Context zzo = this.zza.zzo();
        intent.putExtra("app_package_name", zzo.getPackageName());
        a b = a.b();
        synchronized (this) {
            this.zzc = null;
            this.zzb = true;
            boolean a = b.a(zzo, intent, this.zza.zza, 129);
            this.zza.zzP("Bind to service requested", Boolean.valueOf(a));
            if (!a) {
                this.zzb = false;
                return null;
            }
            try {
                this.zza.zzw();
                wait(zzeu.zzL.zzb().longValue());
            } catch (InterruptedException unused) {
                this.zza.zzR("Wait for service connect was interrupted");
            }
            this.zzb = false;
            zzey zzey = this.zzc;
            this.zzc = null;
            if (zzey == null) {
                this.zza.zzJ("Successfully bound to service but never got onServiceConnected callback");
            }
            return zzey;
        }
    }
}
