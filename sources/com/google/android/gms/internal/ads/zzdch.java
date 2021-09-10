package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;
import com.google.android.gms.internal.ads.zzdfj;
import java.util.concurrent.atomic.AtomicReference;

public final class zzdch<S extends zzdfj<?>> implements zzdfi<S> {
    private final d zzbqg;
    private final AtomicReference<zzdcg<S>> zzhbn = new AtomicReference<>();
    private final zzdfi<S> zzhbo;
    private final long zzhbp;

    public zzdch(zzdfi<S> zzdfi, long j, d dVar) {
        this.zzbqg = dVar;
        this.zzhbo = zzdfi;
        this.zzhbp = j;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<S> zzasy() {
        zzdcg<S> zzdcg = this.zzhbn.get();
        if (zzdcg == null || zzdcg.hasExpired()) {
            zzdcg = new zzdcg<>(this.zzhbo.zzasy(), this.zzhbp, this.zzbqg);
            this.zzhbn.set(zzdcg);
        }
        return zzdcg.zzhbl;
    }
}
