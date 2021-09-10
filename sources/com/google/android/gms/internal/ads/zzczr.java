package com.google.android.gms.internal.ads;

import java.util.List;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzczr implements zzdvz {
    private final zzczo zzgzl;
    private final List zzgzm;

    zzczr(zzczo zzczo, List list) {
        this.zzgzl = zzczo;
        this.zzgzm = list;
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        return zzczo.zza(this.zzgzm, (String) obj);
    }
}
