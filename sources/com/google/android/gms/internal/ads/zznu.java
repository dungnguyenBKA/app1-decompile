package com.google.android.gms.internal.ads;

import java.util.Arrays;

public final class zznu {
    public static final zznu zzbgv = new zznu(new zznr[0]);
    public final int length;
    private int zzahx;
    private final zznr[] zzbgw;

    public zznu(zznr... zznrArr) {
        this.zzbgw = zznrArr;
        this.length = zznrArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zznu.class == obj.getClass()) {
            zznu zznu = (zznu) obj;
            return this.length == zznu.length && Arrays.equals(this.zzbgw, zznu.zzbgw);
        }
    }

    public final int hashCode() {
        if (this.zzahx == 0) {
            this.zzahx = Arrays.hashCode(this.zzbgw);
        }
        return this.zzahx;
    }

    public final int zza(zznr zznr) {
        for (int i = 0; i < this.length; i++) {
            if (this.zzbgw[i] == zznr) {
                return i;
            }
        }
        return -1;
    }

    public final zznr zzbc(int i) {
        return this.zzbgw[i];
    }
}
