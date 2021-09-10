package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzace extends zzacj {
    private final zzg zzdbj;
    private final String zzdbk;
    private final String zzdbl;

    public zzace(zzg zzg, String str, String str2) {
        this.zzdbj = zzg;
        this.zzdbk = str;
        this.zzdbl = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final String getContent() {
        return this.zzdbl;
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final void recordClick() {
        this.zzdbj.zzkc();
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final void recordImpression() {
        this.zzdbj.zzkd();
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final void zzn(zv zvVar) {
        if (zvVar != null) {
            this.zzdbj.zzh((View) aw.P(zvVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final String zzsq() {
        return this.zzdbk;
    }
}
