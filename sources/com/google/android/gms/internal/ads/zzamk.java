package com.google.android.gms.internal.ads;

import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
public final class zzamk<I, O> implements zzamb<I, O> {
    private final zzakz zzdkx;
    private final zzamd<O> zzdky;
    private final zzamc<I> zzdkz;
    private final String zzdla;

    zzamk(zzakz zzakz, String str, zzamc<I> zzamc, zzamd<O> zzamd) {
        this.zzdkx = zzakz;
        this.zzdla = str;
        this.zzdkz = zzamc;
        this.zzdky = zzamd;
    }

    /* access modifiers changed from: private */
    public final void zza(zzalm zzalm, zzalx zzalx, I i, zzbaa<O> zzbaa) {
        try {
            zzr.zzkr();
            String zzyy = zzj.zzyy();
            zzahm.zzdhq.zza(zzyy, new zzamp(this, zzalm, zzbaa));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(FacebookAdapter.KEY_ID, zzyy);
            jSONObject.put("args", this.zzdkz.zzi(i));
            zzalx.zzb(this.zzdla, jSONObject);
        } catch (Exception e) {
            zzbaa.setException(e);
            zzazk.zzc("Unable to invokeJavascript", e);
            zzalm.release();
        } catch (Throwable th) {
            zzalm.release();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw<O> zzf(I i) {
        return zzh(i);
    }

    @Override // com.google.android.gms.internal.ads.zzamb
    public final zzdzw<O> zzh(I i) {
        zzbaa zzbaa = new zzbaa();
        zzalm zzb = this.zzdkx.zzb((zzei) null);
        zzb.zza(new zzamn(this, zzb, i, zzbaa), new zzamm(this, zzbaa, zzb));
        return zzbaa;
    }
}
