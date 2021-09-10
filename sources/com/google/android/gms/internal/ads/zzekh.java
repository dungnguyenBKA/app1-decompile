package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

final class zzekh extends zzekc {
    private final byte[] buffer;
    private int pos;
    private int zzakh;
    private int zzimr;
    private int zzimt;
    private int zzimu;
    private final InputStream zzimv;
    private int zzimw;
    private zzekg zzimx;

    private zzekh(InputStream inputStream, int i) {
        super();
        this.zzimu = Integer.MAX_VALUE;
        this.zzimx = null;
        zzeld.zza(inputStream, "input");
        this.zzimv = inputStream;
        this.buffer = new byte[4096];
        this.zzakh = 0;
        this.pos = 0;
        this.zzimw = 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0066, code lost:
        if (r2[r3] >= 0) goto L_0x0068;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zzbhk() {
        /*
        // Method dump skipped, instructions count: 113
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzekh.zzbhk():int");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00b0, code lost:
        if (((long) r2[r0]) >= 0) goto L_0x006e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final long zzbhl() {
        /*
        // Method dump skipped, instructions count: 189
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzekh.zzbhl():long");
    }

    private final int zzbhm() {
        int i = this.pos;
        if (this.zzakh - i < 4) {
            zzgj(4);
            i = this.pos;
        }
        byte[] bArr = this.buffer;
        this.pos = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final long zzbhn() {
        int i = this.pos;
        if (this.zzakh - i < 8) {
            zzgj(8);
            i = this.pos;
        }
        byte[] bArr = this.buffer;
        this.pos = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    private final void zzbho() {
        int i = this.zzakh + this.zzimr;
        this.zzakh = i;
        int i2 = this.zzimw + i;
        int i3 = this.zzimu;
        if (i2 > i3) {
            int i4 = i2 - i3;
            this.zzimr = i4;
            this.zzakh = i - i4;
            return;
        }
        this.zzimr = 0;
    }

    private final byte zzbhp() {
        if (this.pos == this.zzakh) {
            zzgj(1);
        }
        byte[] bArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i];
    }

    private final byte[] zzg(int i, boolean z) {
        byte[] zzgl = zzgl(i);
        if (zzgl != null) {
            return zzgl;
        }
        int i2 = this.pos;
        int i3 = this.zzakh;
        int i4 = i3 - i2;
        this.zzimw += i3;
        this.pos = 0;
        this.zzakh = 0;
        List<byte[]> zzgm = zzgm(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.buffer, i2, bArr, 0, i4);
        for (byte[] bArr2 : zzgm) {
            System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
            i4 += bArr2.length;
        }
        return bArr;
    }

    private final void zzgi(int i) {
        int i2 = this.zzakh;
        int i3 = this.pos;
        if (i <= i2 - i3 && i >= 0) {
            this.pos = i3 + i;
        } else if (i >= 0) {
            int i4 = this.zzimw;
            int i5 = i4 + i3 + i;
            int i6 = this.zzimu;
            if (i5 <= i6) {
                this.zzimw = i4 + i3;
                int i7 = i2 - i3;
                this.zzakh = 0;
                this.pos = 0;
                while (i7 < i) {
                    try {
                        long j = (long) (i - i7);
                        long skip = this.zzimv.skip(j);
                        if (skip >= 0 && skip <= j) {
                            if (skip == 0) {
                                break;
                            }
                            i7 += (int) skip;
                        } else {
                            String valueOf = String.valueOf(this.zzimv.getClass());
                            StringBuilder sb = new StringBuilder(valueOf.length() + 92);
                            sb.append(valueOf);
                            sb.append("#skip returned invalid result: ");
                            sb.append(skip);
                            sb.append("\nThe InputStream implementation is buggy.");
                            throw new IllegalStateException(sb.toString());
                        }
                    } catch (Throwable th) {
                        this.zzimw += i7;
                        zzbho();
                        throw th;
                    }
                }
                this.zzimw += i7;
                zzbho();
                if (i7 < i) {
                    int i8 = this.zzakh;
                    int i9 = i8 - this.pos;
                    this.pos = i8;
                    zzgj(1);
                    while (true) {
                        int i10 = i - i9;
                        int i11 = this.zzakh;
                        if (i10 > i11) {
                            i9 += i11;
                            this.pos = i11;
                            zzgj(1);
                        } else {
                            this.pos = i10;
                            return;
                        }
                    }
                }
            } else {
                zzgi((i6 - i4) - i3);
                throw zzelo.zzbja();
            }
        } else {
            throw zzelo.zzbjb();
        }
    }

    private final void zzgj(int i) {
        if (zzgk(i)) {
            return;
        }
        if (i > (this.zzimn - this.zzimw) - this.pos) {
            throw zzelo.zzbjg();
        }
        throw zzelo.zzbja();
    }

    private final boolean zzgk(int i) {
        do {
            int i2 = this.pos;
            int i3 = i2 + i;
            int i4 = this.zzakh;
            if (i3 > i4) {
                int i5 = this.zzimn;
                int i6 = this.zzimw;
                if (i > (i5 - i6) - i2 || i6 + i2 + i > this.zzimu) {
                    return false;
                }
                if (i2 > 0) {
                    if (i4 > i2) {
                        byte[] bArr = this.buffer;
                        System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                    }
                    this.zzimw += i2;
                    this.zzakh -= i2;
                    this.pos = 0;
                }
                InputStream inputStream = this.zzimv;
                byte[] bArr2 = this.buffer;
                int i7 = this.zzakh;
                int read = inputStream.read(bArr2, i7, Math.min(bArr2.length - i7, (this.zzimn - this.zzimw) - i7));
                if (read == 0 || read < -1 || read > this.buffer.length) {
                    String valueOf = String.valueOf(this.zzimv.getClass());
                    StringBuilder sb = new StringBuilder(valueOf.length() + 91);
                    sb.append(valueOf);
                    sb.append("#read(byte[]) returned invalid result: ");
                    sb.append(read);
                    sb.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb.toString());
                } else if (read <= 0) {
                    return false;
                } else {
                    this.zzakh += read;
                    zzbho();
                }
            } else {
                StringBuilder sb2 = new StringBuilder(77);
                sb2.append("refillBuffer() called when ");
                sb2.append(i);
                sb2.append(" bytes were already available in buffer");
                throw new IllegalStateException(sb2.toString());
            }
        } while (this.zzakh < i);
        return true;
    }

    private final byte[] zzgl(int i) {
        if (i == 0) {
            return zzeld.zzimf;
        }
        if (i >= 0) {
            int i2 = this.zzimw;
            int i3 = this.pos;
            int i4 = i2 + i3 + i;
            if (i4 - this.zzimn <= 0) {
                int i5 = this.zzimu;
                if (i4 <= i5) {
                    int i6 = this.zzakh - i3;
                    int i7 = i - i6;
                    if (i7 >= 4096 && i7 > this.zzimv.available()) {
                        return null;
                    }
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.buffer, this.pos, bArr, 0, i6);
                    this.zzimw += this.zzakh;
                    this.pos = 0;
                    this.zzakh = 0;
                    while (i6 < i) {
                        int read = this.zzimv.read(bArr, i6, i - i6);
                        if (read != -1) {
                            this.zzimw += read;
                            i6 += read;
                        } else {
                            throw zzelo.zzbja();
                        }
                    }
                    return bArr;
                }
                zzgi((i5 - i2) - i3);
                throw zzelo.zzbja();
            }
            throw zzelo.zzbjg();
        }
        throw zzelo.zzbjb();
    }

    private final List<byte[]> zzgm(int i) {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.zzimv.read(bArr, i2, min - i2);
                if (read != -1) {
                    this.zzimw += read;
                    i2 += read;
                } else {
                    throw zzelo.zzbja();
                }
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
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
        if (zzbhk > 0 && zzbhk <= this.zzakh - this.pos) {
            String str = new String(this.buffer, this.pos, zzbhk, zzeld.UTF_8);
            this.pos += zzbhk;
            return str;
        } else if (zzbhk == 0) {
            return "";
        } else {
            if (zzbhk > this.zzakh) {
                return new String(zzg(zzbhk, false), zzeld.UTF_8);
            }
            zzgj(zzbhk);
            String str2 = new String(this.buffer, this.pos, zzbhk, zzeld.UTF_8);
            this.pos += zzbhk;
            return str2;
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
        byte[] bArr;
        int zzbhk = zzbhk();
        int i = this.pos;
        int i2 = this.zzakh;
        if (zzbhk <= i2 - i && zzbhk > 0) {
            bArr = this.buffer;
            this.pos = i + zzbhk;
        } else if (zzbhk == 0) {
            return "";
        } else {
            if (zzbhk <= i2) {
                zzgj(zzbhk);
                bArr = this.buffer;
                this.pos = zzbhk;
            } else {
                bArr = zzg(zzbhk, false);
            }
            i = 0;
        }
        return zzeok.zzo(bArr, i, zzbhk);
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final zzejr zzbha() {
        int zzbhk = zzbhk();
        int i = this.zzakh;
        int i2 = this.pos;
        if (zzbhk <= i - i2 && zzbhk > 0) {
            zzejr zzi = zzejr.zzi(this.buffer, i2, zzbhk);
            this.pos += zzbhk;
            return zzi;
        } else if (zzbhk == 0) {
            return zzejr.zzilz;
        } else {
            byte[] zzgl = zzgl(zzbhk);
            if (zzgl != null) {
                return zzejr.zzt(zzgl);
            }
            int i3 = this.pos;
            int i4 = this.zzakh;
            int i5 = i4 - i3;
            this.zzimw += i4;
            this.pos = 0;
            this.zzakh = 0;
            List<byte[]> zzgm = zzgm(zzbhk - i5);
            byte[] bArr = new byte[zzbhk];
            System.arraycopy(this.buffer, i3, bArr, 0, i5);
            for (byte[] bArr2 : zzgm) {
                System.arraycopy(bArr2, 0, bArr, i5, bArr2.length);
                i5 += bArr2.length;
            }
            return zzejr.zzu(bArr);
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
        return this.pos == this.zzakh && !zzgk(1);
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhj() {
        return this.zzimw + this.pos;
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
            if (this.zzakh - this.pos >= 10) {
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
            int i2 = this.zzimw + this.pos + i;
            int i3 = this.zzimu;
            if (i2 <= i3) {
                this.zzimu = i2;
                zzbho();
                return i3;
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
