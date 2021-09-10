package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* access modifiers changed from: package-private */
@TargetApi(VungleException.SERVER_RETRY_ERROR)
public final class zzrk implements Application.ActivityLifecycleCallbacks {
    private Context context;
    private boolean foreground = true;
    private final Object lock = new Object();
    private Activity zzaas;
    private boolean zzbsx = false;
    @GuardedBy("lock")
    private final List<zzrm> zzbsy = new ArrayList();
    @GuardedBy("lock")
    private final List<zzsb> zzbsz = new ArrayList();
    private Runnable zzbta;
    private long zzbtb;
    private boolean zzzl = false;

    zzrk() {
    }

    private final void setActivity(Activity activity) {
        synchronized (this.lock) {
            if (!activity.getClass().getName().startsWith(MobileAds.ERROR_DOMAIN)) {
                this.zzaas = activity;
            }
        }
    }

    public final Activity getActivity() {
        return this.zzaas;
    }

    public final Context getContext() {
        return this.context;
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.lock) {
            Activity activity2 = this.zzaas;
            if (activity2 != null) {
                if (activity2.equals(activity)) {
                    this.zzaas = null;
                }
                Iterator<zzsb> it = this.zzbsz.iterator();
                while (it.hasNext()) {
                    try {
                        if (it.next().zza(activity)) {
                            it.remove();
                        }
                    } catch (Exception e) {
                        zzr.zzkv().zza(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        zzazk.zzc("", e);
                    }
                }
            }
        }
    }

    public final void onActivityPaused(Activity activity) {
        setActivity(activity);
        synchronized (this.lock) {
            for (zzsb zzsb : this.zzbsz) {
                try {
                    zzsb.onActivityPaused(activity);
                } catch (Exception e) {
                    zzr.zzkv().zza(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    zzazk.zzc("", e);
                }
            }
        }
        this.zzbsx = true;
        Runnable runnable = this.zzbta;
        if (runnable != null) {
            zzj.zzeen.removeCallbacks(runnable);
        }
        zzdvl zzdvl = zzj.zzeen;
        zzrn zzrn = new zzrn(this);
        this.zzbta = zzrn;
        zzdvl.postDelayed(zzrn, this.zzbtb);
    }

    public final void onActivityResumed(Activity activity) {
        setActivity(activity);
        this.zzbsx = false;
        boolean z = !this.foreground;
        this.foreground = true;
        Runnable runnable = this.zzbta;
        if (runnable != null) {
            zzj.zzeen.removeCallbacks(runnable);
        }
        synchronized (this.lock) {
            for (zzsb zzsb : this.zzbsz) {
                try {
                    zzsb.onActivityResumed(activity);
                } catch (Exception e) {
                    zzr.zzkv().zza(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    zzazk.zzc("", e);
                }
            }
            if (z) {
                for (zzrm zzrm : this.zzbsy) {
                    try {
                        zzrm.zzp(true);
                    } catch (Exception e2) {
                        zzazk.zzc("", e2);
                    }
                }
            } else {
                zzazk.zzdy("App is still foreground.");
            }
        }
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public final void onActivityStarted(Activity activity) {
        setActivity(activity);
    }

    public final void onActivityStopped(Activity activity) {
    }

    public final void zza(Application application, Context context2) {
        if (!this.zzzl) {
            application.registerActivityLifecycleCallbacks(this);
            if (context2 instanceof Activity) {
                setActivity((Activity) context2);
            }
            this.context = application;
            this.zzbtb = ((Long) zzwr.zzqr().zzd(zzabp.zzcpl)).longValue();
            this.zzzl = true;
        }
    }

    public final void zzb(zzrm zzrm) {
        synchronized (this.lock) {
            this.zzbsy.remove(zzrm);
        }
    }

    public final void zza(zzrm zzrm) {
        synchronized (this.lock) {
            this.zzbsy.add(zzrm);
        }
    }
}
