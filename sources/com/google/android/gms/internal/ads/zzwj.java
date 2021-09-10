package com.google.android.gms.internal.ads;

import android.content.Context;

/* access modifiers changed from: package-private */
public final class zzwj extends zzws<zzxl> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzvs zzcit;
    private final /* synthetic */ String zzciu;
    private final /* synthetic */ zzwc zzciw;

    zzwj(zzwc zzwc, Context context, zzvs zzvs, String str) {
        this.zzciw = zzwc;
        this.val$context = context;
        this.zzcit = zzvs;
        this.zzciu = str;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzxl zza(zzxy zzxy) {
        return zzxy.zza(aw.Q(this.val$context), this.zzcit, this.zzciu, 204204000);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzxl zzqj() {
        zzwc.zza(this.val$context, "search");
        return new zzaac();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzxl zzqk() {
        return this.zzciw.zzcix.zza(this.val$context, this.zzcit, this.zzciu, null, 3);
    }
}
