package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
public final class zzdju<R> implements zzdqa {
    public final Executor executor;
    public final String zzbut;
    public final zzvl zzdud;
    public final zzvx zzhba;
    public final zzdkp<R> zzhhe;
    public final zzdko zzhhf;
    @Nullable
    private final zzdpl zzhhg;

    public zzdju(zzdkp<R> zzdkp, zzdko zzdko, zzvl zzvl, String str, Executor executor2, zzvx zzvx, @Nullable zzdpl zzdpl) {
        this.zzhhe = zzdkp;
        this.zzhhf = zzdko;
        this.zzdud = zzvl;
        this.zzbut = str;
        this.executor = executor2;
        this.zzhba = zzvx;
        this.zzhhg = zzdpl;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final Executor getExecutor() {
        return this.executor;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    @Nullable
    public final zzdpl zzaup() {
        return this.zzhhg;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final zzdqa zzauq() {
        return new zzdju(this.zzhhe, this.zzhhf, this.zzdud, this.zzbut, this.executor, this.zzhba, this.zzhhg);
    }
}
