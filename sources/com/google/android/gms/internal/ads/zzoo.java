package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;

public final class zzoo implements zzon {
    private final byte[] data;
    private Uri uri;
    private int zzbib;
    private int zzbic;

    public zzoo(byte[] bArr) {
        zzpg.checkNotNull(bArr);
        zzpg.checkArgument(bArr.length > 0);
        this.data = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final void close() {
        this.uri = null;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.zzbic;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.data, this.zzbib, bArr, i, min);
        this.zzbib += min;
        this.zzbic -= min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final long zza(zzos zzos) {
        this.uri = zzos.uri;
        long j = zzos.position;
        int i = (int) j;
        this.zzbib = i;
        long j2 = zzos.zzco;
        if (j2 == -1) {
            j2 = ((long) this.data.length) - j;
        }
        int i2 = (int) j2;
        this.zzbic = i2;
        if (i2 > 0 && i + i2 <= this.data.length) {
            return (long) i2;
        }
        int i3 = this.zzbib;
        long j3 = zzos.zzco;
        int length = this.data.length;
        StringBuilder sb = new StringBuilder(77);
        sb.append("Unsatisfiable range: [");
        sb.append(i3);
        sb.append(", ");
        sb.append(j3);
        sb.append("], length: ");
        sb.append(length);
        throw new IOException(sb.toString());
    }
}
