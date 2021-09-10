package com.google.android.gms.internal.ads;

import android.net.Uri;

final class zzbct implements zzon {
    private Uri uri;
    private final zzon zzepf;
    private final long zzepg;
    private final zzon zzeph;
    private long zzepi;

    zzbct(zzon zzon, int i, zzon zzon2) {
        this.zzepf = zzon;
        this.zzepg = (long) i;
        this.zzeph = zzon2;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final void close() {
        this.zzepf.close();
        this.zzeph.close();
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        long j = this.zzepi;
        long j2 = this.zzepg;
        if (j < j2) {
            i3 = this.zzepf.read(bArr, i, (int) Math.min((long) i2, j2 - j));
            this.zzepi += (long) i3;
        } else {
            i3 = 0;
        }
        if (this.zzepi < this.zzepg) {
            return i3;
        }
        int read = this.zzeph.read(bArr, i + i3, i2 - i3);
        int i4 = i3 + read;
        this.zzepi += (long) read;
        return i4;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final long zza(zzos zzos) {
        zzos zzos2;
        this.uri = zzos.uri;
        long j = zzos.position;
        long j2 = this.zzepg;
        zzos zzos3 = null;
        if (j >= j2) {
            zzos2 = null;
        } else {
            long j3 = zzos.zzco;
            zzos2 = new zzos(zzos.uri, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null);
        }
        long j4 = zzos.zzco;
        if (j4 == -1 || zzos.position + j4 > this.zzepg) {
            long max = Math.max(this.zzepg, zzos.position);
            long j5 = zzos.zzco;
            zzos3 = new zzos(zzos.uri, max, j5 != -1 ? Math.min(j5, (zzos.position + j5) - this.zzepg) : -1, null);
        }
        long j6 = 0;
        long zza = zzos2 != null ? this.zzepf.zza(zzos2) : 0;
        if (zzos3 != null) {
            j6 = this.zzeph.zza(zzos3);
        }
        this.zzepi = zzos.position;
        if (zza == -1 || j6 == -1) {
            return -1;
        }
        return zza + j6;
    }
}
