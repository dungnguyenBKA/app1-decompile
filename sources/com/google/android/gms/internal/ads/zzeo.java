package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

final class zzeo implements zzet {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ Bundle zzyi;

    zzeo(zzel zzel, Activity activity, Bundle bundle) {
        this.val$activity = activity;
        this.zzyi = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzet
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.val$activity, this.zzyi);
    }
}
