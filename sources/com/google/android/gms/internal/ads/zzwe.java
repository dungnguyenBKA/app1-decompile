package com.google.android.gms.internal.ads;

import android.content.Context;

/* access modifiers changed from: package-private */
public final class zzwe extends zzws<zzavm> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzciu;
    private final /* synthetic */ zzane zzciv;
    private final /* synthetic */ zzwc zzciw;

    zzwe(zzwc zzwc, Context context, String str, zzane zzane) {
        this.zzciw = zzwc;
        this.val$context = context;
        this.zzciu = str;
        this.zzciv = zzane;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzavm zza(zzxy zzxy) {
        return zzxy.zzb(aw.Q(this.val$context), this.zzciu, this.zzciv, 204204000);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzavm zzqj() {
        zzwc.zza(this.val$context, "rewarded");
        return new zzaai();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzavm zzqk() {
        return zzawc.zzd(this.val$context, this.zzciu, this.zzciv);
    }
}
