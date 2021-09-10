package com.google.android.gms.internal.ads;

public final class zzmp implements zznq {
    private final zznq[] zzbdk;

    public zzmp(zznq[] zznqArr) {
        this.zzbdk = zznqArr;
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final boolean zzee(long j) {
        boolean z;
        boolean z2 = false;
        do {
            long zzhn = zzhn();
            if (zzhn == Long.MIN_VALUE) {
                break;
            }
            zznq[] zznqArr = this.zzbdk;
            z = false;
            for (zznq zznq : zznqArr) {
                if (zznq.zzhn() == zzhn) {
                    z |= zznq.zzee(j);
                }
            }
            z2 |= z;
        } while (z);
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final long zzhn() {
        long j = Long.MAX_VALUE;
        for (zznq zznq : this.zzbdk) {
            long zzhn = zznq.zzhn();
            if (zzhn != Long.MIN_VALUE) {
                j = Math.min(j, zzhn);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }
}
