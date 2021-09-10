package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final class zzaym {
    private long zzebt = -1;
    private long zzebu = -1;
    private final /* synthetic */ zzayn zzebv;

    public zzaym(zzayn zzayn) {
        this.zzebv = zzayn;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.zzebt);
        bundle.putLong("tclose", this.zzebu);
        return bundle;
    }

    public final long zzxf() {
        return this.zzebu;
    }

    public final void zzxg() {
        this.zzebu = this.zzebv.zzbqg.b();
    }

    public final void zzxh() {
        this.zzebt = this.zzebv.zzbqg.b();
    }
}
