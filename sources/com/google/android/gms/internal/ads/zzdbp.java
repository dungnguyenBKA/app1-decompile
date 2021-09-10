package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;

public final class zzdbp implements zzdfi<zzdfj<Bundle>> {
    private final Executor executor;
    private final zzayo zzbqd;

    zzdbp(Executor executor2, zzayo zzayo) {
        this.executor = executor2;
        this.zzbqd = zzayo;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<Bundle>> zzasy() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcse)).booleanValue()) {
            return zzdzk.zzag(null);
        }
        return zzdzk.zzb(this.zzbqd.zzxt(), zzdbo.zzeaj, this.executor);
    }
}
