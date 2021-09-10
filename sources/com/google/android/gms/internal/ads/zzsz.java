package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.b;
import javax.annotation.concurrent.GuardedBy;

public final class zzsz {
    @GuardedBy("lock")
    private Context context;
    private final Object lock = new Object();
    private final Runnable zzbvd = new zzsy(this);
    @GuardedBy("lock")
    private zzte zzbve;
    @GuardedBy("lock")
    private zzti zzbvf;

    /* access modifiers changed from: private */
    public final void connect() {
        synchronized (this.lock) {
            if (this.context != null) {
                if (this.zzbve == null) {
                    zzte zza = zza(new zzta(this), new zztd(this));
                    this.zzbve = zza;
                    zza.checkAvailabilityAndConnect();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public final void disconnect() {
        synchronized (this.lock) {
            zzte zzte = this.zzbve;
            if (zzte != null) {
                if (zzte.isConnected() || this.zzbve.isConnecting()) {
                    this.zzbve.disconnect();
                }
                this.zzbve = null;
                this.zzbvf = null;
                Binder.flushPendingCommands();
            }
        }
    }

    public final void initialize(Context context2) {
        if (context2 != null) {
            synchronized (this.lock) {
                if (this.context == null) {
                    this.context = context2.getApplicationContext();
                    if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcud)).booleanValue()) {
                        connect();
                    } else {
                        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcuc)).booleanValue()) {
                            zzr.zzku().zza(new zztb(this));
                        }
                    }
                }
            }
        }
    }

    public final zztc zza(zzth zzth) {
        synchronized (this.lock) {
            if (this.zzbvf == null) {
                return new zztc();
            }
            try {
                if (this.zzbve.zzne()) {
                    return this.zzbvf.zzc(zzth);
                }
                return this.zzbvf.zza(zzth);
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call into cache service.", e);
                return new zztc();
            }
        }
    }

    public final long zzb(zzth zzth) {
        synchronized (this.lock) {
            if (this.zzbvf == null) {
                return -2;
            }
            if (this.zzbve.zzne()) {
                try {
                    return this.zzbvf.zzb(zzth);
                } catch (RemoteException e) {
                    zzazk.zzc("Unable to call into cache service.", e);
                }
            }
            return -2;
        }
    }

    public final void zzmv() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcue)).booleanValue()) {
            synchronized (this.lock) {
                connect();
                zzdvl zzdvl = zzj.zzeen;
                zzdvl.removeCallbacks(this.zzbvd);
                zzdvl.postDelayed(this.zzbvd, ((Long) zzwr.zzqr().zzd(zzabp.zzcuf)).longValue());
            }
        }
    }

    private final synchronized zzte zza(b.a aVar, b.AbstractC0047b bVar) {
        return new zzte(this.context, zzr.zzlf().zzzp(), aVar, bVar);
    }
}
