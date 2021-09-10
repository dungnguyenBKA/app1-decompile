package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.graphics.Bitmap;
import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;

final class g extends zza {
    final /* synthetic */ zzc a;

    g(zzc zzc, d dVar) {
        this.a = zzc;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwe() {
        Bitmap zza = zzr.zzlk().zza(Integer.valueOf(this.a.c.zzdtc.zzbpj));
        if (zza != null) {
            com.google.android.gms.ads.internal.util.zzr zzkt = zzr.zzkt();
            zzc zzc = this.a;
            Activity activity = zzc.b;
            zzk zzk = zzc.c.zzdtc;
            zzj.zzeen.post(new f(this, zzkt.zza(activity, zza, zzk.zzbph, zzk.zzbpi)));
        }
    }
}
