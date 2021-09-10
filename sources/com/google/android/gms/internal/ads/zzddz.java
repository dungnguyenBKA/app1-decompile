package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;

public final class zzddz implements zzeqb<zzddx> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdzv> zzhak;
    private final zzeqo<Set<String>> zzhax;

    private zzddz(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2, zzeqo<Set<String>> zzeqo3) {
        this.zzhak = zzeqo;
        this.zzewk = zzeqo2;
        this.zzhax = zzeqo3;
    }

    public static zzddz zzab(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2, zzeqo<Set<String>> zzeqo3) {
        return new zzddz(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzddx(this.zzhak.get(), this.zzewk.get(), this.zzhax.get());
    }
}
