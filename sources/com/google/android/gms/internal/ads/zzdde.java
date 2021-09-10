package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import java.util.Set;

public final class zzdde implements zzeqb<zzddc> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdzv> zzhak;
    private final zzeqo<Set<String>> zzhax;
    private final zzeqo<ViewGroup> zzhcd;

    private zzdde(zzeqo<zzdzv> zzeqo, zzeqo<ViewGroup> zzeqo2, zzeqo<Context> zzeqo3, zzeqo<Set<String>> zzeqo4) {
        this.zzhak = zzeqo;
        this.zzhcd = zzeqo2;
        this.zzewk = zzeqo3;
        this.zzhax = zzeqo4;
    }

    public static zzdde zzj(zzeqo<zzdzv> zzeqo, zzeqo<ViewGroup> zzeqo2, zzeqo<Context> zzeqo3, zzeqo<Set<String>> zzeqo4) {
        return new zzdde(zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzddc(this.zzhak.get(), this.zzhcd.get(), this.zzewk.get(), this.zzhax.get());
    }
}
