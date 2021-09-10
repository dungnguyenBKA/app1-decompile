package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.e;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.f;
import java.io.IOException;
import java.util.Objects;

public final class zzd {
    private static final Object zza = new Object();
    private static zzd zzb;
    private volatile boolean zze = false;
    private final Context zzi;
    private final d zzj;
    private final Thread zzk;
    private final Object zzl = new Object();
    private final zzc zzm = new zza(this);

    public zzd(Context context, zzc zzc, d dVar) {
        this.zzj = dVar;
        if (context != null) {
            this.zzi = context.getApplicationContext();
        } else {
            this.zzi = null;
        }
        System.currentTimeMillis();
        this.zzk = new Thread(new zzb(this));
    }

    public static zzd zzb(Context context) {
        if (zzb == null) {
            synchronized (zza) {
                if (zzb == null) {
                    zzd zzd = new zzd(context, null, f.d());
                    zzb = zzd;
                    zzd.zzk.start();
                }
            }
        }
        return zzb;
    }

    static void zzd(zzd zzd) {
        Process.setThreadPriority(10);
        while (!zzd.zze) {
            zza zza2 = (zza) zzd.zzm;
            Objects.requireNonNull(zza2);
            AdvertisingIdClient.Info info = null;
            try {
                info = AdvertisingIdClient.getAdvertisingIdInfo(zza2.zza.zzi);
            } catch (IllegalStateException e) {
                Log.w("GoogleTagManager", "IllegalStateException getting Advertising Id Info", e);
            } catch (com.google.android.gms.common.f e2) {
                Log.w("GoogleTagManager", "GooglePlayServicesRepairableException getting Advertising Id Info", e2);
            } catch (IOException e3) {
                Log.w("GoogleTagManager", "IOException getting Ad Id Info", e3);
            } catch (e e4) {
                zza2.zza.zze();
                Log.w("GoogleTagManager", "GooglePlayServicesNotAvailableException getting Advertising Id Info", e4);
            } catch (Exception e5) {
                Log.w("GoogleTagManager", "Unknown exception. Could not get the Advertising Id Info.", e5);
            }
            if (info != null) {
                zzd.zzj.a();
            }
            synchronized (zzd) {
                zzd.notifyAll();
            }
            try {
                synchronized (zzd.zzl) {
                    zzd.zzl.wait(900000);
                }
            } catch (InterruptedException unused) {
            }
        }
    }

    public final void zze() {
        this.zze = true;
        this.zzk.interrupt();
    }
}
