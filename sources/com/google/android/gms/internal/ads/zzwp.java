package com.google.android.gms.internal.ads;

import android.content.Context;

/* access modifiers changed from: package-private */
public final class zzwp extends zzws<zzaur> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzane zzciv;
    private final /* synthetic */ zzwc zzciw;

    zzwp(zzwc zzwc, Context context, zzane zzane) {
        this.zzciw = zzwc;
        this.val$context = context;
        this.zzciv = zzane;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaur zza(zzxy zzxy) {
        return zzxy.zza(aw.Q(this.val$context), this.zzciv, 204204000);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaur zzqj() {
        zzwc.zza(this.val$context, "rewarded_video");
        return new zzaak();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaur zzqk() {
        return this.zzciw.zzcjb.zzc(this.val$context, this.zzciv);
    }
}
