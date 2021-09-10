package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;
import com.google.android.gms.internal.ads.zzdfj;

/* access modifiers changed from: package-private */
public final class zzdcg<S extends zzdfj<?>> {
    private final d zzbqg;
    public final zzdzw<S> zzhbl;
    private final long zzhbm;

    public zzdcg(zzdzw<S> zzdzw, long j, d dVar) {
        this.zzhbl = zzdzw;
        this.zzbqg = dVar;
        this.zzhbm = dVar.b() + j;
    }

    public final boolean hasExpired() {
        return this.zzhbm < this.zzbqg.b();
    }
}
