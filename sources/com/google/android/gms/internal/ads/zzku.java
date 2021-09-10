package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;

final class zzku {
    private final zzpn zzapt = new zzpn(8);
    private int zzast;

    private final long zzc(zzjz zzjz) {
        int i = 0;
        zzjz.zza(this.zzapt.data, 0, 1);
        int i2 = this.zzapt.data[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (i3 ^ -1);
        zzjz.zza(this.zzapt.data, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.zzapt.data[i] & 255) + (i5 << 8);
        }
        this.zzast = i4 + 1 + this.zzast;
        return (long) i5;
    }

    public final boolean zza(zzjz zzjz) {
        long length = zzjz.getLength();
        long j = PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        if (length != -1 && length <= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            j = length;
        }
        int i = (int) j;
        zzjz.zza(this.zzapt.data, 0, 4);
        long zzix = this.zzapt.zzix();
        this.zzast = 4;
        while (zzix != 440786851) {
            int i2 = this.zzast + 1;
            this.zzast = i2;
            if (i2 == i) {
                return false;
            }
            zzjz.zza(this.zzapt.data, 0, 1);
            zzix = ((zzix << 8) & -256) | ((long) (this.zzapt.data[0] & 255));
        }
        long zzc = zzc(zzjz);
        long j2 = (long) this.zzast;
        if (zzc != Long.MIN_VALUE && (length == -1 || j2 + zzc < length)) {
            while (true) {
                int i3 = this.zzast;
                long j3 = j2 + zzc;
                if (((long) i3) < j3) {
                    if (zzc(zzjz) == Long.MIN_VALUE) {
                        return false;
                    }
                    long zzc2 = zzc(zzjz);
                    if (zzc2 < 0 || zzc2 > 2147483647L) {
                        return false;
                    }
                    if (zzc2 != 0) {
                        zzjz.zzah((int) zzc2);
                        this.zzast = (int) (((long) this.zzast) + zzc2);
                    }
                } else if (((long) i3) == j3) {
                    return true;
                }
            }
        }
        return false;
    }
}
