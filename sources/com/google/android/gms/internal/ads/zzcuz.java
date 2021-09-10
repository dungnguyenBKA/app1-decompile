package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class zzcuz<AdT> implements zzdyu<zzdnl, AdT> {
    private final Executor executor;
    private final zzdsq zzfre;
    private final zzdss zzfrf;
    private final ScheduledExecutorService zzfth;
    private final zzdrj zzfwz;
    private final zzcrq zzfxh;
    private final zzbrp zzgas;
    private final zzbny<AdT> zzgvj;
    private final zzcuw zzgvk;

    public zzcuz(zzdrj zzdrj, zzcuw zzcuw, zzbrp zzbrp, zzdsq zzdsq, zzdss zzdss, zzbny<AdT> zzbny, Executor executor2, ScheduledExecutorService scheduledExecutorService, zzcrq zzcrq) {
        this.zzfwz = zzdrj;
        this.zzgvk = zzcuw;
        this.zzgas = zzbrp;
        this.zzfre = zzdsq;
        this.zzfrf = zzdss;
        this.zzgvj = zzbny;
        this.executor = executor2;
        this.zzfth = scheduledExecutorService;
        this.zzfxh = zzcrq;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzdnl zzdnl, zzdmw zzdmw, zzcrj zzcrj, Throwable th) {
        return this.zzgvk.zza(zzdnl.zzhks.zzess, zzdmw, zzdzk.zza(zzcrj.zzb(zzdnl, zzdmw), (long) zzdmw.zzhjq, TimeUnit.MILLISECONDS, this.zzfth));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0059  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x010a  */
    @Override // com.google.android.gms.internal.ads.zzdyu
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzdzw zzf(com.google.android.gms.internal.ads.zzdnl r10) {
        /*
        // Method dump skipped, instructions count: 368
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcuz.zzf(java.lang.Object):com.google.android.gms.internal.ads.zzdzw");
    }
}
