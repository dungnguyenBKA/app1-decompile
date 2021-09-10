package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.concurrent.Executor;
import org.json.JSONObject;

public final class zzcol extends zzatg {
    private final Context context;
    private final Executor zzfsj;
    private final zzauh zzgpl;
    private final zzaue zzgpm;
    private final zzbjd zzgpn;
    private final HashMap<String, zzcpa> zzgpo;

    public zzcol(Context context2, Executor executor, zzauh zzauh, zzbjd zzbjd, zzaue zzaue, HashMap<String, zzcpa> hashMap) {
        zzabp.initialize(context2);
        this.context = context2;
        this.zzfsj = executor;
        this.zzgpl = zzauh;
        this.zzgpm = zzaue;
        this.zzgpn = zzbjd;
        this.zzgpo = hashMap;
    }

    private static zzdzw<JSONObject> zza(zzatq zzatq, zzdrj zzdrj, zzdga zzdga) {
        zzcop zzcop = new zzcop(zzdga);
        return zzdrj.zza(zzdrk.GMS_SIGNALS, zzdzk.zzag(zzatq.zzdxi)).zza(zzcop).zzb(zzcos.zzgnx).zzaxj();
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final zzatd zza(zzatb zzatb) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zza(zzatb zzatb, zzati zzati) {
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzarq() {
        zzazw.zza(this.zzgpm.zzwt(), "persistFlags");
    }

    public final zzdzw<InputStream> zzb(zzatq zzatq, int i) {
        zzamj zza = zzr.zzle().zza(this.context, zzazn.zzaab());
        zzdga zza2 = this.zzgpn.zza(zzatq, i);
        zzamb zza3 = zza.zza("google.afma.response.normalize", zzcoz.zzgpw, zzame.zzdkt);
        zzcpe zzcpe = new zzcpe(this.context, zzatq.zzdtx.zzbrp, this.zzgpl, zzatq.zzdux, i);
        zzdrj zzahc = zza2.zzahc();
        zzcpa zzcpa = null;
        if (!zzadm.zzdef.get().booleanValue()) {
            String str = zzatq.zzdxl;
            if (str != null && !str.isEmpty()) {
                zzd.zzeb("Request contained a PoolKey but split request is disabled.");
            }
        } else {
            String str2 = zzatq.zzdxl;
            if (str2 != null && !str2.isEmpty() && (zzcpa = this.zzgpo.remove(zzatq.zzdxl)) == null) {
                zzd.zzeb("Request contained a PoolKey but no matching parameters were found.");
            }
        }
        if (zzcpa == null) {
            zzdzw<JSONObject> zza4 = zza(zzatq, zzahc, zza2);
            zzdzw<zzatw> zza5 = zza(zza4, zzahc, zza);
            zzdqw zzaxj = zzahc.zza(zzdrk.HTTP, zza5, zza4).zzb(new zzcoo(zza4, zza5)).zzb(zzcpe).zzaxj();
            return zzahc.zza(zzdrk.PRE_PROCESS, zza4, zza5, zzaxj).zzb(new zzcon(zzaxj, zza4, zza5)).zza(zza3).zzaxj();
        }
        zzdqw zzaxj2 = zzahc.zza(zzdrk.HTTP, zzdzk.zzag(new zzcpd(zzcpa.zzgpu, zzcpa.zzgpv))).zzb(zzcpe).zzaxj();
        zzdzw<?> zzag = zzdzk.zzag(zzcpa);
        return zzahc.zza(zzdrk.PRE_PROCESS, zzaxj2, zzag).zzb(new zzcoq(zzaxj2, zzag)).zza(zza3).zzaxj();
    }

    public final zzdzw<InputStream> zzc(zzatq zzatq, int i) {
        if (!zzadm.zzdef.get().booleanValue()) {
            return zzdzk.immediateFailedFuture(new Exception("Split request is disabled."));
        }
        zzdpf zzdpf = zzatq.zzdxk;
        if (zzdpf == null) {
            return zzdzk.immediateFailedFuture(new Exception("Pool configuration missing from request."));
        }
        if (zzdpf.zzhnn == 0 || zzdpf.zzhno == 0) {
            return zzdzk.immediateFailedFuture(new Exception("Caching is disabled."));
        }
        zzamj zza = zzr.zzle().zza(this.context, zzazn.zzaab());
        zzdga zza2 = this.zzgpn.zza(zzatq, i);
        zzdrj zzahc = zza2.zzahc();
        zzdzw<JSONObject> zza3 = zza(zzatq, zzahc, zza2);
        zzdzw<zzatw> zza4 = zza(zza3, zzahc, zza);
        return zzahc.zza(zzdrk.GET_URL_AND_CACHE_KEY, zza3, zza4).zzb(new zzcot(this, zza4, zza3)).zzaxj();
    }

    public final zzdzw<InputStream> zzd(zzatq zzatq, int i) {
        zzamj zza = zzr.zzle().zza(this.context, zzazn.zzaab());
        if (!zzads.zzdex.get().booleanValue()) {
            return zzdzk.immediateFailedFuture(new Exception("Signal collection disabled."));
        }
        zzdga zza2 = this.zzgpn.zza(zzatq, i);
        zzdfl<JSONObject> zzahb = zza2.zzahb();
        return zza2.zzahc().zza(zzdrk.GET_SIGNALS, zzdzk.zzag(zzatq.zzdxi)).zza(new zzcow(zzahb)).zzv(zzdrk.JS_SIGNALS).zza(zza.zza("google.afma.request.getSignals", zzame.zzdks, zzame.zzdkt)).zzaxj();
    }

    public final zzdzw<InputStream> zzgj(String str) {
        if (!zzadm.zzdef.get().booleanValue()) {
            return zzdzk.immediateFailedFuture(new Exception("Split request is disabled."));
        }
        zzcoy zzcoy = new zzcoy(this);
        if (this.zzgpo.remove(str) != null) {
            return zzdzk.zzag(zzcoy);
        }
        String valueOf = String.valueOf(str);
        return zzdzk.immediateFailedFuture(new Exception(valueOf.length() != 0 ? "URL to be removed not found for cache key: ".concat(valueOf) : new String("URL to be removed not found for cache key: ")));
    }

    private static zzdzw<zzatw> zza(zzdzw<JSONObject> zzdzw, zzdrj zzdrj, zzamj zzamj) {
        return zzdrj.zza(zzdrk.BUILD_URL, zzdzw).zza(zzamj.zza("AFMA_getAdDictionary", zzame.zzdks, zzcor.zzdku)).zzaxj();
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zza(zzatq zzatq, zzatk zzatk) {
        zzdzw<InputStream> zzb = zzb(zzatq, Binder.getCallingUid());
        zza(zzb, zzatk);
        zzb.addListener(new zzcou(this), this.zzfsj);
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zza(String str, zzatk zzatk) {
        zza(zzgj(str), zzatk);
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zzc(zzatq zzatq, zzatk zzatk) {
        zza(zzc(zzatq, Binder.getCallingUid()), zzatk);
    }

    private final void zza(zzdzw<InputStream> zzdzw, zzatk zzatk) {
        zzdzk.zza(zzdzk.zzb(zzdzw, new zzcov(this), zzazp.zzeic), new zzcox(this, zzatk), zzazp.zzeih);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ InputStream zza(zzdzw zzdzw, zzdzw zzdzw2) {
        String zzwr = ((zzatw) zzdzw.get()).zzwr();
        this.zzgpo.put(zzwr, new zzcpa((zzatw) zzdzw.get(), (JSONObject) zzdzw2.get()));
        return new ByteArrayInputStream(zzwr.getBytes(zzdvx.UTF_8));
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zzb(zzatq zzatq, zzatk zzatk) {
        zza(zzd(zzatq, Binder.getCallingUid()), zzatk);
    }
}
