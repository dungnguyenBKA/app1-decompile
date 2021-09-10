package com.google.android.gms.internal.ads;

import java.util.Arrays;

public final class zzoi {
    public final int length;
    private int zzahx;
    private final zzog[] zzbhw;

    public zzoi(zzog... zzogArr) {
        this.zzbhw = zzogArr;
        this.length = zzogArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzoi.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.zzbhw, ((zzoi) obj).zzbhw);
    }

    public final int hashCode() {
        if (this.zzahx == 0) {
            this.zzahx = Arrays.hashCode(this.zzbhw) + 527;
        }
        return this.zzahx;
    }

    public final zzog zzbe(int i) {
        return this.zzbhw[i];
    }

    public final zzog[] zzim() {
        return (zzog[]) this.zzbhw.clone();
    }
}
