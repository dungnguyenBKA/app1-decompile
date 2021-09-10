package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzene implements zzemm {
    private final int flags;
    private final String info;
    private final Object[] zziss;
    private final zzemo zzisv;

    zzene(zzemo zzemo, String str, Object[] objArr) {
        this.zzisv = zzemo;
        this.info = str;
        this.zziss = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.flags = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            } else {
                this.flags = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzemm
    public final int zzbjy() {
        return (this.flags & 1) == 1 ? zzemz.zzitk : zzemz.zzitl;
    }

    @Override // com.google.android.gms.internal.ads.zzemm
    public final boolean zzbjz() {
        return (this.flags & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.zzemm
    public final zzemo zzbka() {
        return this.zzisv;
    }

    /* access modifiers changed from: package-private */
    public final String zzbkg() {
        return this.info;
    }

    /* access modifiers changed from: package-private */
    public final Object[] zzbkh() {
        return this.zziss;
    }
}
