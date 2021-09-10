package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.List;

public final class zzdhj {
    private final zzatq zzgoq;
    private final int zzgqc;

    public zzdhj(zzatq zzatq, int i) {
        this.zzgoq = zzatq;
        this.zzgqc = i;
    }

    public final String zzatv() {
        return this.zzgoq.packageName;
    }

    public final String zzatw() {
        return this.zzgoq.zzdxi.getString("ms");
    }

    public final PackageInfo zzatx() {
        return this.zzgoq.zzdue;
    }

    public final List<String> zzaty() {
        return this.zzgoq.zzduo;
    }

    public final String zzatz() {
        return this.zzgoq.zzdxj;
    }

    public final int zzaua() {
        return this.zzgqc;
    }
}
