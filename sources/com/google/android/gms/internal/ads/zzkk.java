package com.google.android.gms.internal.ads;

import java.util.Arrays;

public final class zzkk {
    public final int zzaph = 1;
    public final byte[] zzapi;

    public zzkk(int i, byte[] bArr) {
        this.zzapi = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzkk.class == obj.getClass()) {
            zzkk zzkk = (zzkk) obj;
            return this.zzaph == zzkk.zzaph && Arrays.equals(this.zzapi, zzkk.zzapi);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzapi) + (this.zzaph * 31);
    }
}
