package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

final class zzqy implements zzrh {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ Bundle zzyi;

    zzqy(zzqz zzqz, Activity activity, Bundle bundle) {
        this.val$activity = activity;
        this.zzyi = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzrh
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.val$activity, this.zzyi);
    }
}
