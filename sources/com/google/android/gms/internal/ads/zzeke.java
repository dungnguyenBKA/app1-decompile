package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* access modifiers changed from: package-private */
public final class zzeke extends zzekc {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzimq;
    private int zzimr;
    private int zzims;
    private int zzimt;
    private int zzimu;

    private zzeke(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzimu = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzims = i;
        this.zzimq = z;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0066, code lost:
        if (r2[r3] >= 0) goto L_0x0068;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zzbhk() {
        /*
        // Method dump skipped, instructions count: 113
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeke.zzbhk():int");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00b0, code lost:
        if (((long) r2[r0]) >= 0) goto L_0x006e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final long zzbhl() {
        /*
        // Method dump skipped, instructions count: 189
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeke.zzbhl():long");
    }

    private final int zzbhm() {
        int i = this.pos;
        if (this.limit - i >= 4) {
            byte[] bArr = this.buffer;
            this.pos = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzelo.zzbja();
    }

    private final long zzbhn() {
        int i = this.pos;
        if (this.limit - i >= 8) {
            byte[] bArr = this.buffer;
            this.pos = i + 8;
            return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
        }
        throw zzelo.zzbja();
    }

    private final void zzbho() {
        int i = this.limit + this.zzimr;
        this.limit = i;
        int i2 = i - this.zzims;
        int i3 = this.zzimu;
        if (i2 > i3) {
            int i4 = i2 - i3;
            this.zzimr = i4;
            this.limit = i - i4;
            return;
        }
        this.zzimr = 0;
    }

    private final byte zzbhp() {
        int i = this.pos;
        if (i != this.limit) {
            byte[] bArr = this.buffer;
            this.pos = i + 1;
            return bArr[i];
        }
        throw zzelo.zzbja();
    }

    private final void zzgi(int i) {
        if (i >= 0) {
            int i2 = this.limit;
            int i3 = this.pos;
            if (i <= i2 - i3) {
                this.pos = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzelo.zzbjb();
        }
        throw zzelo.zzbja();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final double readDouble() {
        return Double.longBitsToDouble(zzbhn());
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final float readFloat() {
        return Float.intBitsToFloat(zzbhm());
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final String readString() {
        int zzbhk = zzbhk();
        if (zzbhk > 0 && zzbhk <= this.limit - this.pos) {
            String str = new String(this.buffer, this.pos, zzbhk, zzeld.UTF_8);
            this.pos += zzbhk;
            return str;
        } else if (zzbhk == 0) {
            return "";
        } else {
            if (zzbhk < 0) {
                throw zzelo.zzbjb();
            }
            throw zzelo.zzbja();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbgs() {
        if (zzbhi()) {
            this.zzimt = 0;
            return 0;
        }
        int zzbhk = zzbhk();
        this.zzimt = zzbhk;
        if ((zzbhk >>> 3) != 0) {
            return zzbhk;
        }
        throw zzelo.zzbjd();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbgt() {
        return zzbhl();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbgu() {
        return zzbhl();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbgv() {
        return zzbhk();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbgw() {
        return zzbhn();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbgx() {
        return zzbhm();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final boolean zzbgy() {
        return zzbhl() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final String zzbgz() {
        int zzbhk = zzbhk();
        if (zzbhk > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (zzbhk <= i - i2) {
                String zzo = zzeok.zzo(this.buffer, i2, zzbhk);
                this.pos += zzbhk;
                return zzo;
            }
        }
        if (zzbhk == 0) {
            return "";
        }
        if (zzbhk <= 0) {
            throw zzelo.zzbjb();
        }
        throw zzelo.zzbja();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final zzejr zzbha() {
        byte[] bArr;
        int zzbhk = zzbhk();
        if (zzbhk > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (zzbhk <= i - i2) {
                zzejr zzi = zzejr.zzi(this.buffer, i2, zzbhk);
                this.pos += zzbhk;
                return zzi;
            }
        }
        if (zzbhk == 0) {
            return zzejr.zzilz;
        }
        if (zzbhk > 0) {
            int i3 = this.limit;
            int i4 = this.pos;
            if (zzbhk <= i3 - i4) {
                int i5 = zzbhk + i4;
                this.pos = i5;
                bArr = Arrays.copyOfRange(this.buffer, i4, i5);
                return zzejr.zzu(bArr);
            }
        }
        if (zzbhk > 0) {
            throw zzelo.zzbja();
        } else if (zzbhk == 0) {
            bArr = zzeld.zzimf;
            return zzejr.zzu(bArr);
        } else {
            throw zzelo.zzbjb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhb() {
        return zzbhk();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhc() {
        return zzbhk();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhd() {
        return zzbhm();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbhe() {
        return zzbhn();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhf() {
        return zzekc.zzgh(zzbhk());
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbhg() {
        return zzekc.zzfg(zzbhl());
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbhh() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzbhp = zzbhp();
            j |= ((long) (zzbhp & Byte.MAX_VALUE)) << i;
            if ((zzbhp & 128) == 0) {
                return j;
            }
        }
        throw zzelo.zzbjc();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final boolean zzbhi() {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhj() {
        return this.pos - this.zzims;
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final void zzgd(int i) {
        if (this.zzimt != i) {
            throw zzelo.zzbje();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final boolean zzge(int i) {
        int zzbgs;
        int i2 = i & 7;
        int i3 = 0;
        if (i2 == 0) {
            if (this.limit - this.pos >= 10) {
                while (i3 < 10) {
                    byte[] bArr = this.buffer;
                    int i4 = this.pos;
                    this.pos = i4 + 1;
                    if (bArr[i4] < 0) {
                        i3++;
                    }
                }
                throw zzelo.zzbjc();
            }
            while (i3 < 10) {
                if (zzbhp() < 0) {
                    i3++;
                }
            }
            throw zzelo.zzbjc();
            return true;
        } else if (i2 == 1) {
            zzgi(8);
            return true;
        } else if (i2 == 2) {
            zzgi(zzbhk());
            return true;
        } else if (i2 == 3) {
            do {
                zzbgs = zzbgs();
                if (zzbgs == 0) {
                    break;
                }
            } while (zzge(zzbgs));
            zzgd(((i >>> 3) << 3) | 4);
            return true;
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                zzgi(4);
                return true;
            }
            throw zzelo.zzbjf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzgf(int i) {
        if (i >= 0) {
            int zzbhj = i + zzbhj();
            int i2 = this.zzimu;
            if (zzbhj <= i2) {
                this.zzimu = zzbhj;
                zzbho();
                return i2;
            }
            throw zzelo.zzbja();
        }
        throw zzelo.zzbjb();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final void zzgg(int i) {
        this.zzimu = i;
        zzbho();
    }
}
