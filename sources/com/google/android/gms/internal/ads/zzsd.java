package com.google.android.gms.internal.ads;

public final class zzsd {
    final long value;
    final int zzbuc;
    final String zzbum;

    zzsd(long j, String str, int i) {
        this.value = j;
        this.zzbum = str;
        this.zzbuc = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzsd)) {
            zzsd zzsd = (zzsd) obj;
            if (zzsd.value == this.value && zzsd.zzbuc == this.zzbuc) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.value;
    }
}
