package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.internal.ads.zzdtt;
import com.google.android.gms.internal.ads.zzdua;

public final class zzdtm {
    private final Context context;
    private final Looper zzhsz;

    public zzdtm(Context context2, Looper looper) {
        this.context = context2;
        this.zzhsz = looper;
    }

    public final void zzhf(String str) {
        new zzdtl(this.context, this.zzhsz, (zzdua) ((zzelb) zzdua.zzayc().zzhi(this.context.getPackageName()).zzb(zzdua.zza.BLOCKED_IMPRESSION).zza(zzdtt.zzaya().zzhh(str).zzb(zzdtt.zza.BLOCKED_REASON_BACKGROUND)).zzbiw())).zzaxv();
    }
}
