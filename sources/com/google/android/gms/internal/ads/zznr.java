package com.google.android.gms.internal.ads;

import java.util.Arrays;

public final class zznr {
    public final int length;
    private int zzahx;
    private final zzht[] zzbfr;

    public zznr(zzht... zzhtArr) {
        zzpg.checkState(zzhtArr.length > 0);
        this.zzbfr = zzhtArr;
        this.length = zzhtArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zznr.class == obj.getClass()) {
            zznr zznr = (zznr) obj;
            return this.length == zznr.length && Arrays.equals(this.zzbfr, zznr.zzbfr);
        }
    }

    public final int hashCode() {
        if (this.zzahx == 0) {
            this.zzahx = Arrays.hashCode(this.zzbfr) + 527;
        }
        return this.zzahx;
    }

    public final zzht zzbb(int i) {
        return this.zzbfr[i];
    }

    public final int zzh(zzht zzht) {
        int i = 0;
        while (true) {
            zzht[] zzhtArr = this.zzbfr;
            if (i >= zzhtArr.length) {
                return -1;
            }
            if (zzht == zzhtArr[i]) {
                return i;
            }
            i++;
        }
    }
}
