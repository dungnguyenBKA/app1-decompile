package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcf;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class zzdto {
    private final Context context;
    private final Executor executor;
    private final zzdtu zzhtb;
    private final zzdtu zzhtc;
    private kw<zzcf.zza> zzhtd;
    private kw<zzcf.zza> zzhte;
    private final zzdsy zzvs;
    private final zzdtc zzyn;

    private zzdto(Context context2, Executor executor2, zzdsy zzdsy, zzdtc zzdtc, zzdts zzdts, zzdtr zzdtr) {
        this.context = context2;
        this.executor = executor2;
        this.zzvs = zzdsy;
        this.zzyn = zzdtc;
        this.zzhtb = zzdts;
        this.zzhtc = zzdtr;
    }

    public static zzdto zza(Context context2, Executor executor2, zzdsy zzdsy, zzdtc zzdtc) {
        zzdto zzdto = new zzdto(context2, executor2, zzdsy, zzdtc, new zzdts(), new zzdtr());
        if (zzdto.zzyn.zzaxq()) {
            zzdto.zzhtd = zzdto.zzd(new zzdtn(zzdto));
        } else {
            zzdto.zzhtd = nw.d(zzdto.zzhtb.zzaxz());
        }
        zzdto.zzhte = zzdto.zzd(new zzdtq(zzdto));
        return zzdto;
    }

    private final kw<zzcf.zza> zzd(Callable<zzcf.zza> callable) {
        kw<zzcf.zza> b = nw.b(this.executor, callable);
        b.c(this.executor, new zzdtp(this));
        return b;
    }

    public final zzcf.zza zzaxw() {
        return zza(this.zzhtd, this.zzhtb.zzaxz());
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzcf.zza zzaxx() {
        return this.zzhtc.zzck(this.context);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzcf.zza zzaxy() {
        return this.zzhtb.zzck(this.context);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.zzvs.zza(2025, -1, exc);
    }

    public final zzcf.zza zzco() {
        return zza(this.zzhte, this.zzhtc.zzaxz());
    }

    private static zzcf.zza zza(kw<zzcf.zza> kwVar, zzcf.zza zza) {
        if (!kwVar.m()) {
            return zza;
        }
        return kwVar.j();
    }
}
