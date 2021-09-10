package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;

final /* synthetic */ class zzbqj implements zzdvz {
    private final Context zzcmi;
    private final zzazn zzfuz;
    private final zzdnp zzfxx;

    zzbqj(Context context, zzazn zzazn, zzdnp zzdnp) {
        this.zzcmi = context;
        this.zzfuz = zzazn;
        this.zzfxx = zzdnp;
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        Context context = this.zzcmi;
        zzazn zzazn = this.zzfuz;
        zzdnp zzdnp = this.zzfxx;
        zzdmw zzdmw = (zzdmw) obj;
        zzad zzad = new zzad(context);
        zzad.zzem(zzdmw.zzdwd);
        zzad.zzen(zzdmw.zzhjl.toString());
        zzad.zzu(zzazn.zzbrp);
        zzad.setAdUnitId(zzdnp.zzhkx);
        return zzad;
    }
}
