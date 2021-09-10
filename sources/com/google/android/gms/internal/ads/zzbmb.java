package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbmb implements zzbtb {
    private final Context zzcmi;
    private final zzazn zzfuz;
    private final zzdmw zzfva;
    private final zzdnp zzfvb;

    zzbmb(Context context, zzazn zzazn, zzdmw zzdmw, zzdnp zzdnp) {
        this.zzcmi = context;
        this.zzfuz = zzazn;
        this.zzfva = zzdmw;
        this.zzfvb = zzdnp;
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        zzr.zzlb().zzb(this.zzcmi, this.zzfuz.zzbrp, this.zzfva.zzhjl.toString(), this.zzfvb.zzhkx);
    }
}
