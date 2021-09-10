package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* access modifiers changed from: package-private */
public final class zzqz implements Application.ActivityLifecycleCallbacks {
    private final Application zzyd;
    private final WeakReference<Application.ActivityLifecycleCallbacks> zzye;
    private boolean zzyf = false;

    public zzqz(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.zzye = new WeakReference<>(activityLifecycleCallbacks);
        this.zzyd = application;
    }

    private final void zza(zzrh zzrh) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.zzye.get();
            if (activityLifecycleCallbacks != null) {
                zzrh.zza(activityLifecycleCallbacks);
            } else if (!this.zzyf) {
                this.zzyd.unregisterActivityLifecycleCallbacks(this);
                this.zzyf = true;
            }
        } catch (Exception e) {
            zzazk.zzc("Error while dispatching lifecycle callback.", e);
        }
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(new zzqy(this, activity, bundle));
    }

    public final void onActivityDestroyed(Activity activity) {
        zza(new zzre(this, activity));
    }

    public final void onActivityPaused(Activity activity) {
        zza(new zzrd(this, activity));
    }

    public final void onActivityResumed(Activity activity) {
        zza(new zzra(this, activity));
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zza(new zzrf(this, activity, bundle));
    }

    public final void onActivityStarted(Activity activity) {
        zza(new zzrb(this, activity));
    }

    public final void onActivityStopped(Activity activity) {
        zza(new zzrc(this, activity));
    }
}
