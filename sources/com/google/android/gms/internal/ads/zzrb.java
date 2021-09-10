package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

final class zzrb implements zzrh {
    private final /* synthetic */ Activity val$activity;

    zzrb(zzqz zzqz, Activity activity) {
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzrh
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.val$activity);
    }
}
