package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzb;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

public final class zzcgk {
    private final Context context;
    private final zzbej zzbqa;
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzcqr zzdie;
    private final zzazn zzdtx;
    private final zzei zzesm;
    private final zzdss zzfrf;
    private final Executor zzfsj;
    private final zzb zzghz;
    private final zzcgs zzgiw = new zzcgs(null);
    private final zzain zzgix;
    private zzdzw<zzbeb> zzgiy;

    zzcgk(zzcgt zzcgt) {
        this.context = zzcgt.zza(zzcgt);
        this.zzfsj = zzcgt.zzb(zzcgt);
        this.zzesm = zzcgt.zzc(zzcgt);
        this.zzdtx = zzcgt.zzd(zzcgt);
        this.zzghz = zzcgt.zze(zzcgt);
        this.zzbqa = zzcgt.zzf(zzcgt);
        this.zzgix = new zzain();
        this.zzdie = zzcgt.zzg(zzcgt);
        this.zzfrf = zzcgt.zzh(zzcgt);
        this.zzdib = zzcgt.zzi(zzcgt);
        this.zzdic = zzcgt.zzj(zzcgt);
    }

    public final synchronized void destroy() {
        zzdzw<zzbeb> zzdzw = this.zzgiy;
        if (zzdzw != null) {
            zzdzk.zza(zzdzw, new zzcgl(this), this.zzfsj);
            this.zzgiy = null;
        }
    }

    public final synchronized void zza(String str, zzaif<Object> zzaif) {
        zzdzw<zzbeb> zzdzw = this.zzgiy;
        if (zzdzw != null) {
            zzdzk.zza(zzdzw, new zzcgo(this, str, zzaif), this.zzfsj);
        }
    }

    public final synchronized void zzapo() {
        zzdzw<zzbeb> zzb = zzdzk.zzb(zzbej.zza(this.context, this.zzdtx, (String) zzwr.zzqr().zzd(zzabp.zzcsw), this.zzesm, this.zzghz), new zzcgj(this), this.zzfsj);
        this.zzgiy = zzb;
        zzazw.zza(zzb, "NativeJavascriptExecutor.initializeEngine");
    }

    public final synchronized void zzb(String str, zzaif<Object> zzaif) {
        zzdzw<zzbeb> zzdzw = this.zzgiy;
        if (zzdzw != null) {
            zzdzk.zza(zzdzw, new zzcgn(this, str, zzaif), this.zzfsj);
        }
    }

    public final synchronized zzdzw<JSONObject> zzc(String str, JSONObject jSONObject) {
        zzdzw<zzbeb> zzdzw = this.zzgiy;
        if (zzdzw == null) {
            return zzdzk.zzag(null);
        }
        return zzdzk.zzb(zzdzw, new zzcgm(this, str, jSONObject), this.zzfsj);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzbeb zzj(zzbeb zzbeb) {
        zzbeb.zza("/result", this.zzgix);
        zzbfn zzacx = zzbeb.zzacx();
        zzcgs zzcgs = this.zzgiw;
        zzacx.zza(null, zzcgs, zzcgs, zzcgs, zzcgs, false, null, new zza(this.context, null, null), null, null, this.zzdie, this.zzfrf, this.zzdib, this.zzdic);
        return zzbeb;
    }

    public final synchronized void zza(String str, Map<String, ?> map) {
        zzdzw<zzbeb> zzdzw = this.zzgiy;
        if (zzdzw != null) {
            zzdzk.zza(zzdzw, new zzcgq(this, str, map), this.zzfsj);
        }
    }

    public final synchronized void zza(zzdmw zzdmw, zzdnb zzdnb) {
        zzdzw<zzbeb> zzdzw = this.zzgiy;
        if (zzdzw != null) {
            zzdzk.zza(zzdzw, new zzcgp(this, zzdmw, zzdnb), this.zzfsj);
        }
    }

    public final <T> void zza(WeakReference<T> weakReference, String str, zzaif<T> zzaif) {
        zza(str, new zzcgw(this, weakReference, str, zzaif, null));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(String str, JSONObject jSONObject, zzbeb zzbeb) {
        return this.zzgix.zza(zzbeb, str, jSONObject);
    }
}
