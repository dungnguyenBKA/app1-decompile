package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;

public final class zzbwx implements zzeqb<Set<zzbya<AppEventListener>>> {
    private final zzbwg zzgav;

    private zzbwx(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwx zzw(zzbwg zzbwg) {
        return new zzbwx(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamd(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
