package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;

public final class zzdco implements zzdfi<zzdct> {
    private final Context zzaad;
    private final zzdzv zzghl;

    zzdco(Context context, zzdzv zzdzv) {
        this.zzaad = context;
        this.zzghl = zzdzv;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdct> zzasy() {
        return this.zzghl.zze(new zzdcr(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdct zzatf() {
        zzr.zzkr();
        String zzav = zzj.zzav(this.zzaad);
        String str = "";
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxt)).booleanValue()) {
            str = this.zzaad.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", str);
        }
        zzr.zzkr();
        return new zzdct(zzav, str, zzj.zzaw(this.zzaad));
    }
}
