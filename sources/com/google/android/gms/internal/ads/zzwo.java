package com.google.android.gms.internal.ads;

import android.content.Context;

/* access modifiers changed from: package-private */
public final class zzwo extends zzws<zzyg> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzwc zzciw;

    zzwo(zzwc zzwc, Context context) {
        this.zzciw = zzwc;
        this.val$context = context;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzyg zza(zzxy zzxy) {
        return zzxy.zza(aw.Q(this.val$context), 204204000);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzyg zzqj() {
        zzwc.zza(this.val$context, "mobile_ads_settings");
        return new zzaae();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzyg zzqk() {
        return this.zzciw.zzciz.zzh(this.val$context);
    }
}
