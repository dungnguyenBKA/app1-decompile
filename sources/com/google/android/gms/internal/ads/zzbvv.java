package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;

public final class zzbvv implements zzeqb<zzbvt> {
    private final zzeqo<Set<zzbya<AppEventListener>>> zzfvd;

    private zzbvv(zzeqo<Set<zzbya<AppEventListener>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbvv zzr(zzeqo<Set<zzbya<AppEventListener>>> zzeqo) {
        return new zzbvv(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbvt(this.zzfvd.get());
    }
}
