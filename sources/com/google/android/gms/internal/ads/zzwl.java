package com.google.android.gms.internal.ads;

import android.content.Context;

/* access modifiers changed from: package-private */
public final class zzwl extends zzws<zzxi> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzciu;
    private final /* synthetic */ zzane zzciv;
    private final /* synthetic */ zzwc zzciw;

    zzwl(zzwc zzwc, Context context, String str, zzane zzane) {
        this.zzciw = zzwc;
        this.val$context = context;
        this.zzciu = str;
        this.zzciv = zzane;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzxi zza(zzxy zzxy) {
        return zzxy.zza(aw.Q(this.val$context), this.zzciu, this.zzciv, 204204000);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzxi zzqj() {
        zzwc.zza(this.val$context, "native_ad");
        return new zzzy();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzxi zzqk() {
        return this.zzciw.zzciy.zza(this.val$context, this.zzciu, this.zzciv);
    }
}
