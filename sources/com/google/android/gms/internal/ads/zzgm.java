package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import com.google.android.gms.internal.ads.zzcf;

public final class zzgm extends zzgn {
    private final View zzaat;

    public zzgm(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2, View view) {
        super(zzfc, str, str2, zzb, i, 57);
        this.zzaat = view;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        if (this.zzaat != null) {
            Boolean bool = (Boolean) zzwr.zzqr().zzd(zzabp.zzcsn);
            DisplayMetrics displayMetrics = this.zzwc.getContext().getResources().getDisplayMetrics();
            zzfk zzfk = new zzfk((String) this.zzabl.invoke(null, this.zzaat, displayMetrics, bool));
            zzcf.zza.zzf.C0056zza zzaw = zzcf.zza.zzf.zzaw();
            zzaw.zzdc(zzfk.zzaan.longValue()).zzdd(zzfk.zzaao.longValue()).zzde(zzfk.zzaap.longValue());
            if (bool.booleanValue()) {
                zzaw.zzdf(zzfk.zzaaq.longValue());
            }
            this.zzabb.zzb((zzcf.zza.zzf) ((zzelb) zzaw.zzbiw()));
        }
    }
}
