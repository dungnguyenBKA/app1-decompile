package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.LinkedList;

final class zzdoz {
    private final int maxEntries;
    private final LinkedList<zzdpm<?>> zzhmu = new LinkedList<>();
    private final int zzhmv;
    private final zzdqc zzhmw;

    public zzdoz(int i, int i2) {
        this.maxEntries = i;
        this.zzhmv = i2;
        this.zzhmw = new zzdqc();
    }

    private final void zzavu() {
        while (!this.zzhmu.isEmpty()) {
            if (zzr.zzky().a() - this.zzhmu.getFirst().zzhoj >= ((long) this.zzhmv)) {
                this.zzhmw.zzawp();
                this.zzhmu.remove();
            } else {
                return;
            }
        }
    }

    public final long getCreationTimeMillis() {
        return this.zzhmw.getCreationTimeMillis();
    }

    public final int size() {
        zzavu();
        return this.zzhmu.size();
    }

    public final zzdpm<?> zzavp() {
        this.zzhmw.zzawn();
        zzavu();
        if (this.zzhmu.isEmpty()) {
            return null;
        }
        zzdpm<?> remove = this.zzhmu.remove();
        if (remove != null) {
            this.zzhmw.zzawo();
        }
        return remove;
    }

    public final long zzavq() {
        return this.zzhmw.zzavq();
    }

    public final int zzavr() {
        return this.zzhmw.zzavr();
    }

    public final String zzavs() {
        return this.zzhmw.zzawd();
    }

    public final zzdqb zzavt() {
        return this.zzhmw.zzawq();
    }

    public final boolean zzb(zzdpm<?> zzdpm) {
        this.zzhmw.zzawn();
        zzavu();
        if (this.zzhmu.size() == this.maxEntries) {
            return false;
        }
        this.zzhmu.add(zzdpm);
        return true;
    }
}
