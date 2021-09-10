package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;

public final class zzdgc implements zzdfi<zzdgd> {
    private final Executor executor;
    private final PackageInfo zzdue;
    private final int zzgqc;
    private final zzayk zzhdv;
    private final String zzhea;

    public zzdgc(zzayk zzayk, Executor executor2, String str, PackageInfo packageInfo, int i) {
        this.zzhdv = zzayk;
        this.executor = executor2;
        this.zzhea = str;
        this.zzdue = packageInfo;
        this.zzgqc = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdgd> zzasy() {
        return zzdzk.zzb(zzdzk.zzb(this.zzhdv.zza(this.zzhea, this.zzdue, this.zzgqc), zzdgf.zzeaj, this.executor), Throwable.class, new zzdge(this), this.executor);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzg(Throwable th) {
        return zzdzk.zzag(new zzdgd(this.zzhea));
    }
}
