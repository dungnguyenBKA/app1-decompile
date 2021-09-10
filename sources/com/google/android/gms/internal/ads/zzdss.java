package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;

public final class zzdss {
    private final Executor executor;
    private final zzazo zzhrx;

    public zzdss(Executor executor2, zzazo zzazo) {
        this.executor = executor2;
        this.zzhrx = zzazo;
    }

    public final void zzel(String str) {
        this.executor.execute(new zzdsr(this, str));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzhc(String str) {
        this.zzhrx.zzel(str);
    }

    public final void zzk(List<String> list) {
        for (String str : list) {
            zzel(str);
        }
    }
}
