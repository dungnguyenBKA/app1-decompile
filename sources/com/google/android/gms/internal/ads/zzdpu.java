package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbnt;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;

public final class zzdpu<AdT extends zzbnt> {
    private final zzdpc zzhhi;
    private final zzdov zzhop;
    @GuardedBy("this")
    private zzdqa zzhoq;
    @GuardedBy("this")
    private zzeae<zzdpm<AdT>> zzhor;
    @GuardedBy("this")
    private zzdzw<zzdpm<AdT>> zzhos;
    @GuardedBy("this")
    private int zzhot = zzdpz.zzhoz;
    private final zzdpx<AdT> zzhou;
    private final LinkedList<zzdqa> zzhov;
    private final zzdzl<zzdpm<AdT>> zzhow = new zzdpv(this);

    public zzdpu(zzdpc zzdpc, zzdov zzdov, zzdpx<AdT> zzdpx) {
        this.zzhhi = zzdpc;
        this.zzhop = zzdov;
        this.zzhou = zzdpx;
        this.zzhov = new LinkedList<>();
        zzdov.zza(new zzdpw(this));
    }

    private final boolean zzawk() {
        zzdzw<zzdpm<AdT>> zzdzw = this.zzhos;
        return zzdzw == null || zzdzw.isDone();
    }

    /* access modifiers changed from: private */
    public final void zzd(zzdqa zzdqa) {
        while (zzawk()) {
            if (zzdqa != null || !this.zzhov.isEmpty()) {
                if (zzdqa == null) {
                    zzdqa = this.zzhov.remove();
                }
                if (zzdqa.zzaup() == null || !this.zzhhi.zzb(zzdqa.zzaup())) {
                    zzdqa = null;
                } else {
                    this.zzhoq = zzdqa.zzauq();
                    this.zzhor = zzeae.zzbag();
                    zzdzw<zzdpm<AdT>> zza = this.zzhou.zza(this.zzhoq);
                    this.zzhos = zza;
                    zzdzk.zza(zza, this.zzhow, zzdqa.getExecutor());
                    return;
                }
            } else {
                return;
            }
        }
        if (zzdqa != null) {
            this.zzhov.add(zzdqa);
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzawl() {
        synchronized (this) {
            zzd(this.zzhoq);
        }
    }

    public final void zzb(zzdqa zzdqa) {
        this.zzhov.add(zzdqa);
    }

    public final synchronized zzdzw<zzdpy<AdT>> zzc(zzdqa zzdqa) {
        if (zzawk()) {
            return null;
        }
        this.zzhot = zzdpz.zzhpb;
        if (this.zzhoq.zzaup() == null || zzdqa.zzaup() == null || !this.zzhoq.zzaup().equals(zzdqa.zzaup())) {
            return null;
        }
        this.zzhot = zzdpz.zzhpa;
        return zzdzk.zzb(this.zzhor, new zzdpt(this), zzdqa.getExecutor());
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzc(zzdpm zzdpm) {
        zzdzw zzag;
        synchronized (this) {
            zzag = zzdzk.zzag(new zzdpy(zzdpm, this.zzhoq));
        }
        return zzag;
    }
}
