package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* access modifiers changed from: package-private */
public final class zzel implements Application.ActivityLifecycleCallbacks {
    private final Application zzyd;
    private final WeakReference<Application.ActivityLifecycleCallbacks> zzye;
    private boolean zzyf = false;

    public zzel(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.zzye = new WeakReference<>(activityLifecycleCallbacks);
        this.zzyd = application;
    }

    private final void zza(zzet zzet) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.zzye.get();
            if (activityLifecycleCallbacks != null) {
                zzet.zza(activityLifecycleCallbacks);
            } else if (!this.zzyf) {
                this.zzyd.unregisterActivityLifecycleCallbacks(this);
                this.zzyf = true;
            }
        } catch (Exception unused) {
        }
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(new zzeo(this, activity, bundle));
    }

    public final void onActivityDestroyed(Activity activity) {
        zza(new zzeu(this, activity));
    }

    public final void onActivityPaused(Activity activity) {
        zza(new zzep(this, activity));
    }

    public final void onActivityResumed(Activity activity) {
        zza(new zzeq(this, activity));
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zza(new zzer(this, activity, bundle));
    }

    public final void onActivityStarted(Activity activity) {
        zza(new zzen(this, activity));
    }

    public final void onActivityStopped(Activity activity) {
        zza(new zzes(this, activity));
    }
}
