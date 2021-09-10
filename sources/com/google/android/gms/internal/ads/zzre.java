package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

final class zzre implements zzrh {
    private final /* synthetic */ Activity val$activity;

    zzre(zzqz zzqz, Activity activity) {
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzrh
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.val$activity);
    }
}
