package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzbra implements zzeqb<Bundle> {
    private final zzbqx zzfyz;

    private zzbra(zzbqx zzbqx) {
        this.zzfyz = zzbqx;
    }

    public static zzbra zzh(zzbqx zzbqx) {
        return new zzbra(zzbqx);
    }

    public static Bundle zzi(zzbqx zzbqx) {
        return zzbqx.zzaln();
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return this.zzfyz.zzaln();
    }
}
