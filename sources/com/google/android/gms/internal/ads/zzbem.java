package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbem implements zzdyu {
    private final Context zzcmi;
    private final zzei zzdjl;
    private final zzazn zzesd;
    private final zzb zzese;
    private final String zzesf;

    zzbem(Context context, zzei zzei, zzazn zzazn, zzb zzb, String str) {
        this.zzcmi = context;
        this.zzdjl = zzei;
        this.zzesd = zzazn;
        this.zzese = zzb;
        this.zzesf = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        Context context = this.zzcmi;
        zzei zzei = this.zzdjl;
        zzazn zzazn = this.zzesd;
        zzb zzb = this.zzese;
        String str = this.zzesf;
        zzr.zzks();
        zzbeb zza = zzbej.zza(context, zzbft.zzael(), "", false, false, zzei, null, zzazn, null, null, zzb, zztu.zznf(), null, null);
        zzazx zzk = zzazx.zzk(zza);
        zza.zzacx().zza(new zzbeo(zzk));
        zza.loadUrl(str);
        return zzk;
    }
}
