package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

public final class zzcaw implements zzeqb<Set<String>> {
    private final zzeqo<zzcco> zzfuw;

    public zzcaw(zzeqo<zzcco> zzeqo) {
        this.zzfuw = zzeqo;
    }

    public static Set<String> zza(zzcco zzcco) {
        Set set;
        if (zzcco.zzaom() != null) {
            set = Collections.singleton("banner");
        } else {
            set = Collections.emptySet();
        }
        return (Set) zzeqh.zza(set, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfuw.get());
    }
}
