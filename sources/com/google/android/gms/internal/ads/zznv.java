package com.google.android.gms.internal.ads;

import java.util.Arrays;

public class zznv implements zzog {
    private final int length;
    private int zzahx;
    private final zzht[] zzbfr;
    private final zznr zzbgx;
    private final int[] zzbgy;
    private final long[] zzbgz;

    public zznv(zznr zznr, int... iArr) {
        int i = 0;
        zzpg.checkState(iArr.length > 0);
        this.zzbgx = (zznr) zzpg.checkNotNull(zznr);
        int length2 = iArr.length;
        this.length = length2;
        this.zzbfr = new zzht[length2];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.zzbfr[i2] = zznr.zzbb(iArr[i2]);
        }
        Arrays.sort(this.zzbfr, new zznx());
        this.zzbgy = new int[this.length];
        while (true) {
            int i3 = this.length;
            if (i < i3) {
                this.zzbgy[i] = zznr.zzh(this.zzbfr[i]);
                i++;
            } else {
                this.zzbgz = new long[i3];
                return;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zznv zznv = (zznv) obj;
            return this.zzbgx == zznv.zzbgx && Arrays.equals(this.zzbgy, zznv.zzbgy);
        }
    }

    public int hashCode() {
        if (this.zzahx == 0) {
            this.zzahx = Arrays.hashCode(this.zzbgy) + (System.identityHashCode(this.zzbgx) * 31);
        }
        return this.zzahx;
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final int length() {
        return this.zzbgy.length;
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final zzht zzbb(int i) {
        return this.zzbfr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final int zzbd(int i) {
        return this.zzbgy[0];
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final zznr zzil() {
        return this.zzbgx;
    }
}
