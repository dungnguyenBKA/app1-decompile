package com.google.android.gms.internal.ads;

import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;

public final class zzamv<I, O> implements zzdyu<I, O> {
    private final zzamd<O> zzdky;
    private final zzamc<I> zzdkz;
    private final String zzdla;
    private final zzdzw<zzalx> zzdle;

    zzamv(zzdzw<zzalx> zzdzw, String str, zzamc<I> zzamc, zzamd<O> zzamd) {
        this.zzdle = zzdzw;
        this.zzdla = str;
        this.zzdkz = zzamc;
        this.zzdky = zzamd;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(Object obj, zzalx zzalx) {
        zzbaa zzbaa = new zzbaa();
        zzr.zzkr();
        String zzyy = zzj.zzyy();
        zzahm.zzdhq.zza(zzyy, new zzamx(this, zzbaa));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(FacebookAdapter.KEY_ID, zzyy);
        jSONObject.put("args", this.zzdkz.zzi(obj));
        zzalx.zzb(this.zzdla, jSONObject);
        return zzbaa;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw<O> zzf(I i) {
        return zzdzk.zzb(this.zzdle, new zzamu(this, i), zzazp.zzeih);
    }
}
