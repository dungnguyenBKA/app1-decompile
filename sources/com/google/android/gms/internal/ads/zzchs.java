package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zza;
import java.util.Map;
import java.util.concurrent.Executor;

public final class zzchs {
    private final zzawz zzboi;
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzcqr zzdie;
    private final zzei zzesm;
    private final zzdss zzfrf;
    private final Executor zzfsj;
    private final zzbsm zzfwu;
    private final zzbtj zzgbl;
    private final zzbrl zzgcj;
    private final zzbjz zzgck;
    private final zzbxz zzgcm;
    private final zzbta zzgjf;
    private final zzbvt zzgjg;
    private final zza zzgjy;
    private final zzbsg zzgjz;
    private final zzbvi zzgka;

    public zzchs(zzbrl zzbrl, zzbsm zzbsm, zzbta zzbta, zzbtj zzbtj, zzbvt zzbvt, Executor executor, zzbxz zzbxz, zzbjz zzbjz, zza zza, zzbsg zzbsg, zzawz zzawz, zzei zzei, zzbvi zzbvi, zzcqr zzcqr, zzdss zzdss, zzckn zzckn, zzdrz zzdrz) {
        this.zzgcj = zzbrl;
        this.zzfwu = zzbsm;
        this.zzgjf = zzbta;
        this.zzgbl = zzbtj;
        this.zzgjg = zzbvt;
        this.zzfsj = executor;
        this.zzgcm = zzbxz;
        this.zzgck = zzbjz;
        this.zzgjy = zza;
        this.zzgjz = zzbsg;
        this.zzboi = zzawz;
        this.zzesm = zzei;
        this.zzgka = zzbvi;
        this.zzdie = zzcqr;
        this.zzfrf = zzdss;
        this.zzdib = zzckn;
        this.zzdic = zzdrz;
    }

    public final void zza(zzbeb zzbeb, boolean z) {
        zzdy zzca;
        zzbeb.zzacx().zza(new zzchr(this), this.zzgjf, this.zzgbl, new zzchu(this), new zzcht(this), z, null, this.zzgjy, new zzcic(this), this.zzboi, this.zzdie, this.zzfrf, this.zzdib, this.zzdic);
        zzbeb.setOnTouchListener(new zzchw(this));
        zzbeb.setOnClickListener(new zzchv(this));
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsb)).booleanValue() && (zzca = this.zzesm.zzca()) != null) {
            zzca.zzb(zzbeb.getView());
        }
        this.zzgcm.zza(zzbeb, this.zzfsj);
        this.zzgcm.zza(new zzchy(zzbeb), this.zzfsj);
        this.zzgcm.zzv(zzbeb.getView());
        zzbeb.zza("/trackActiveViewUnit", new zzchx(this, zzbeb));
        this.zzgck.zzn(zzbeb);
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcpe)).booleanValue()) {
            this.zzgjz.zza(zzcia.zzk(zzbeb), this.zzfsj);
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzae(View view) {
        this.zzgjy.recordClick();
        zzawz zzawz = this.zzboi;
        if (zzawz != null) {
            zzawz.zzwx();
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzapp() {
        this.zzfwu.onAdLeftApplication();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzapq() {
        this.zzgcj.onAdClicked();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzp(String str, String str2) {
        this.zzgjg.onAppEvent(str, str2);
    }

    public static zzdzw<?> zza(zzbeb zzbeb, String str, String str2) {
        zzbaa zzbaa = new zzbaa();
        zzbeb.zzacx().zza(new zzchz(zzbaa));
        zzbeb.zzb(str, str2, null);
        return zzbaa;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzbeb zzbeb, zzbeb zzbeb2, Map map) {
        this.zzgck.zzc(zzbeb);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ boolean zza(View view, MotionEvent motionEvent) {
        this.zzgjy.recordClick();
        zzawz zzawz = this.zzboi;
        if (zzawz == null) {
            return false;
        }
        zzawz.zzwx();
        return false;
    }
}
