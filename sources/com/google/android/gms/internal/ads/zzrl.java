package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

@ParametersAreNonnullByDefault
public final class zzrl {
    private final Object zzbtc = new Object();
    @GuardedBy("activityTrackerLock")
    private zzrk zzbtd = null;
    @GuardedBy("activityTrackerLock")
    private boolean zzbte = false;

    public final Activity getActivity() {
        synchronized (this.zzbtc) {
            zzrk zzrk = this.zzbtd;
            if (zzrk == null) {
                return null;
            }
            return zzrk.getActivity();
        }
    }

    public final Context getContext() {
        synchronized (this.zzbtc) {
            zzrk zzrk = this.zzbtd;
            if (zzrk == null) {
                return null;
            }
            return zzrk.getContext();
        }
    }

    public final void initialize(Context context) {
        synchronized (this.zzbtc) {
            if (!this.zzbte) {
                Application application = null;
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                }
                if (application == null) {
                    zzazk.zzex("Can not cast Context to Application");
                    return;
                }
                if (this.zzbtd == null) {
                    this.zzbtd = new zzrk();
                }
                this.zzbtd.zza(application, context);
                this.zzbte = true;
            }
        }
    }

    public final void zza(zzrm zzrm) {
        synchronized (this.zzbtc) {
            if (this.zzbtd == null) {
                this.zzbtd = new zzrk();
            }
            this.zzbtd.zza(zzrm);
        }
    }

    public final void zzb(zzrm zzrm) {
        synchronized (this.zzbtc) {
            zzrk zzrk = this.zzbtd;
            if (zzrk != null) {
                zzrk.zzb(zzrm);
            }
        }
    }
}
