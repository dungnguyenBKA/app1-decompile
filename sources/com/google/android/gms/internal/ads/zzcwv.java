package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;

final class zzcwv implements zzg {
    private final /* synthetic */ zzdmw zzgve;
    private final /* synthetic */ zzdnl zzgvw;
    private final /* synthetic */ zzbaa zzgwx;
    private final /* synthetic */ zzcxb zzgwy;
    private final /* synthetic */ zzcwt zzgwz;

    zzcwv(zzcwt zzcwt, zzbaa zzbaa, zzdnl zzdnl, zzdmw zzdmw, zzcxb zzcxb) {
        this.zzgwz = zzcwt;
        this.zzgwx = zzbaa;
        this.zzgvw = zzdnl;
        this.zzgve = zzdmw;
        this.zzgwy = zzcxb;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
        this.zzgwx.set(this.zzgwz.zzgwu.zza(this.zzgvw, this.zzgve, view, this.zzgwy));
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkc() {
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkd() {
    }
}
