package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class zzbou<T> {
    private final Executor executor;
    private final zzcnf zzfwx;
    private final zzdnp zzfwy;
    private final zzdrj zzfwz;
    private final zzbjg zzfxa;
    private final zzcuz<T> zzfxb;
    private final zzbvu zzfxc;
    private final zzdnl zzfxd;
    private final zzcob zzfxe;
    private final zzbqu zzfxf;
    private final zzcny zzfxg;
    private final zzcrq zzfxh;

    zzbou(zzcnf zzcnf, zzdnp zzdnp, zzdrj zzdrj, zzbjg zzbjg, zzcuz<T> zzcuz, zzbvu zzbvu, zzdnl zzdnl, zzcob zzcob, zzbqu zzbqu, Executor executor2, zzcny zzcny, zzcrq zzcrq) {
        this.zzfwx = zzcnf;
        this.zzfwy = zzdnp;
        this.zzfwz = zzdrj;
        this.zzfxa = zzbjg;
        this.zzfxb = zzcuz;
        this.zzfxc = zzbvu;
        this.zzfxd = zzdnl;
        this.zzfxe = zzcob;
        this.zzfxf = zzbqu;
        this.executor = executor2;
        this.zzfxg = zzcny;
        this.zzfxh = zzcrq;
    }

    private final zzdzw<zzdnl> zza(zzdzw<zzatq> zzdzw) {
        if (this.zzfxd != null) {
            return this.zzfwz.zzt(zzdrk.SERVER_TRANSACTION).zze(zzdzk.zzag(this.zzfxd)).zzaxj();
        }
        zzr.zzkx().zzmv();
        if (this.zzfwy.zzhkw.zzcia != null) {
            return this.zzfwz.zzt(zzdrk.SERVER_TRANSACTION).zze(this.zzfwx.zzaro()).zzaxj();
        }
        zzdrb zza = this.zzfwz.zza(zzdrk.SERVER_TRANSACTION, zzdzw);
        zzcny zzcny = this.zzfxg;
        zzcny.getClass();
        return zza.zza(zzbot.zza(zzcny)).zzaxj();
    }

    public final zzdzw<zzdnl> zzala() {
        return zza(this.zzfxf.zzalj());
    }

    public final zzdzw<T> zzalb() {
        return zzb(zzala());
    }

    public final zzbvu zzalc() {
        return this.zzfxc;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.ads.zzabl */
    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: com.google.android.gms.internal.ads.zzabl */
    /* JADX WARN: Multi-variable type inference failed */
    public final zzdzw<T> zzb(zzdzw<zzdnl> zzdzw) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwm)).booleanValue()) {
            return this.zzfwz.zza(zzdrk.RENDERER, zzdzw).zza(this.zzfxa).zza(this.zzfxb).zzaxj();
        }
        return this.zzfwz.zza(zzdrk.RENDERER, zzdzw).zza(this.zzfxa).zza(this.zzfxb).zza((long) ((Integer) zzwr.zzqr().zzd(zzabp.zzcwn)).intValue(), TimeUnit.SECONDS).zzaxj();
    }

    public final zzdzw<Void> zzc(zzatq zzatq) {
        zzdqw zzaxj = this.zzfwz.zza(zzdrk.NOTIFY_CACHE_HIT, this.zzfxe.zzm(zzatq)).zzaxj();
        zzdzk.zza(zzaxj, new zzboy(this), this.executor);
        return zzaxj;
    }

    public final zzvg zze(Throwable th) {
        return zzdok.zza(th, this.zzfxh);
    }

    public final zzdzw<zzdnl> zza(zzatq zzatq) {
        return zza(zzdzk.zzag(zzatq));
    }

    public final zzdzw<T> zzb(zzatq zzatq) {
        return zzb(zza(zzatq));
    }

    public final zzdzw<zzatq> zza(zzdpf zzdpf) {
        zzdqw zzaxj = this.zzfwz.zza(zzdrk.GET_CACHE_KEY, this.zzfxf.zzalj()).zza(new zzbow(this, zzdpf)).zzaxj();
        zzdzk.zza(zzaxj, new zzbov(this), this.executor);
        return zzaxj;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzdpf zzdpf, zzatq zzatq) {
        zzatq.zzdxk = zzdpf;
        return this.zzfxe.zzl(zzatq);
    }
}
