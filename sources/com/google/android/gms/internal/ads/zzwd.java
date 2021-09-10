package com.google.android.gms.internal.ads;

import android.app.Activity;

/* access modifiers changed from: package-private */
public final class zzwd extends zzws<zzaro> {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ zzwc zzciw;

    zzwd(zzwc zzwc, Activity activity) {
        this.zzciw = zzwc;
        this.val$activity = activity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaro zza(zzxy zzxy) {
        return zzxy.zzb(aw.Q(this.val$activity));
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaro zzqj() {
        zzwc.zza(this.val$activity, "ad_overlay");
        return null;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaro zzqk() {
        return this.zzciw.zzcjd.zze(this.val$activity);
    }
}
