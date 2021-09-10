package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.n;
import javax.annotation.concurrent.GuardedBy;

public final class zzdmk extends zzavp {
    private final String zzbut;
    private final zzdnk zzfyy;
    private final Context zzgxt;
    @GuardedBy("this")
    private boolean zzgyo = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcox)).booleanValue();
    private final zzdmc zzhip;
    private final zzdlh zzhiq;
    @GuardedBy("this")
    private zzchb zzhir;

    public zzdmk(String str, zzdmc zzdmc, Context context, zzdlh zzdlh, zzdnk zzdnk) {
        this.zzbut = str;
        this.zzhip = zzdmc;
        this.zzhiq = zzdlh;
        this.zzfyy = zzdnk;
        this.zzgxt = context;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final Bundle getAdMetadata() {
        n.d("#008 Must be called on the main UI thread.");
        zzchb zzchb = this.zzhir;
        return zzchb != null ? zzchb.getAdMetadata() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final synchronized String getMediationAdapterClassName() {
        zzchb zzchb = this.zzhir;
        if (zzchb == null || zzchb.zzakr() == null) {
            return null;
        }
        return this.zzhir.zzakr().getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final boolean isLoaded() {
        n.d("#008 Must be called on the main UI thread.");
        zzchb zzchb = this.zzhir;
        return zzchb != null && !zzchb.isUsed();
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final synchronized void setImmersiveMode(boolean z) {
        n.d("setImmersiveMode must be called on the main UI thread.");
        this.zzgyo = z;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final synchronized void zza(zzvl zzvl, zzavu zzavu) {
        zza(zzvl, zzavu, zzdnh.zzhkl);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final synchronized void zzb(zzvl zzvl, zzavu zzavu) {
        zza(zzvl, zzavu, zzdnh.zzhkm);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final synchronized void zze(zv zvVar) {
        zza(zvVar, this.zzgyo);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final zzyx zzki() {
        zzchb zzchb;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyy)).booleanValue() && (zzchb = this.zzhir) != null) {
            return zzchb.zzakr();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final zzavl zzrv() {
        n.d("#008 Must be called on the main UI thread.");
        zzchb zzchb = this.zzhir;
        if (zzchb != null) {
            return zzchb.zzrv();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final synchronized void zza(zv zvVar, boolean z) {
        n.d("#008 Must be called on the main UI thread.");
        if (this.zzhir == null) {
            zzazk.zzex("Rewarded can not be shown before loaded");
            this.zzhiq.zzk(zzdok.zza(zzdom.NOT_READY, null, null));
            return;
        }
        this.zzhir.zzb(z, (Activity) aw.P(zvVar));
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzavr zzavr) {
        n.d("#008 Must be called on the main UI thread.");
        this.zzhiq.zzb(zzavr);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzavz zzavz) {
        n.d("#008 Must be called on the main UI thread.");
        this.zzhiq.zzb(zzavz);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzyr zzyr) {
        if (zzyr == null) {
            this.zzhiq.zza(null);
        } else {
            this.zzhiq.zza(new zzdmn(this, zzyr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final synchronized void zza(zzawh zzawh) {
        n.d("#008 Must be called on the main UI thread.");
        zzdnk zzdnk = this.zzfyy;
        zzdnk.zzdzh = zzawh.zzdzh;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcpk)).booleanValue()) {
            zzdnk.zzdzi = zzawh.zzdzi;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzyw zzyw) {
        n.d("setOnPaidEventListener must be called on the main UI thread.");
        this.zzhiq.zzd(zzyw);
    }

    private final synchronized void zza(zzvl zzvl, zzavu zzavu, int i) {
        n.d("#008 Must be called on the main UI thread.");
        this.zzhiq.zzb(zzavu);
        zzr.zzkr();
        if (zzj.zzaz(this.zzgxt) && zzvl.zzcia == null) {
            zzazk.zzev("Failed to load the ad because app ID is missing.");
            this.zzhiq.zzc(zzdok.zza(zzdom.APP_ID_MISSING, null, null));
        } else if (this.zzhir == null) {
            zzdmd zzdmd = new zzdmd(null);
            this.zzhip.zzec(i);
            this.zzhip.zza(zzvl, this.zzbut, zzdmd, new zzdmm(this));
        }
    }
}
