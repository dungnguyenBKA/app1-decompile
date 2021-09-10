package com.google.android.gms.internal.gtm;

import com.vungle.warren.downloader.DownloadRequest;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* access modifiers changed from: package-private */
public final class zzth extends zztj {
    private final InputStream zze;
    private final byte[] zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl = Integer.MAX_VALUE;

    /* synthetic */ zzth(InputStream inputStream, int i, zztg zztg) {
        super(null);
        zzvi.zzf(inputStream, "input");
        this.zze = inputStream;
        this.zzf = new byte[4096];
        this.zzg = 0;
        this.zzi = 0;
        this.zzk = 0;
    }

    private final List<byte[]> zzu(int i) {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.zze.read(bArr, i2, min - i2);
                if (read != -1) {
                    this.zzk += read;
                    i2 += read;
                } else {
                    throw zzvk.zzj();
                }
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void zzv() {
        int i = this.zzg + this.zzh;
        this.zzg = i;
        int i2 = this.zzk + i;
        int i3 = this.zzl;
        if (i2 > i3) {
            int i4 = i2 - i3;
            this.zzh = i4;
            this.zzg = i - i4;
            return;
        }
        this.zzh = 0;
    }

    private final void zzw(int i) {
        if (zzx(i)) {
            return;
        }
        if (i > (Integer.MAX_VALUE - this.zzk) - this.zzi) {
            throw zzvk.zzi();
        }
        throw zzvk.zzj();
    }

    private final boolean zzx(int i) {
        int i2 = this.zzi;
        int i3 = this.zzg;
        if (i2 + i > i3) {
            int i4 = this.zzk;
            if (i > (Integer.MAX_VALUE - i4) - i2 || i4 + i2 + i > this.zzl) {
                return false;
            }
            if (i2 > 0) {
                if (i3 > i2) {
                    byte[] bArr = this.zzf;
                    System.arraycopy(bArr, i2, bArr, 0, i3 - i2);
                }
                i4 = this.zzk + i2;
                this.zzk = i4;
                i3 = this.zzg - i2;
                this.zzg = i3;
                this.zzi = 0;
            }
            try {
                int read = this.zze.read(this.zzf, i3, Math.min(4096 - i3, (Integer.MAX_VALUE - i4) - i3));
                if (read == 0 || read < -1 || read > 4096) {
                    String valueOf = String.valueOf(this.zze.getClass());
                    StringBuilder sb = new StringBuilder(valueOf.length() + 91);
                    sb.append(valueOf);
                    sb.append("#read(byte[]) returned invalid result: ");
                    sb.append(read);
                    sb.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb.toString());
                } else if (read <= 0) {
                    return false;
                } else {
                    this.zzg += read;
                    zzv();
                    if (this.zzg >= i) {
                        return true;
                    }
                    return zzx(i);
                }
            } catch (zzvk e) {
                e.zzk();
                throw e;
            }
        } else {
            StringBuilder sb2 = new StringBuilder(77);
            sb2.append("refillBuffer() called when ");
            sb2.append(i);
            sb2.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb2.toString());
        }
    }

    private final byte[] zzy(int i, boolean z) {
        byte[] zzz = zzz(i);
        if (zzz != null) {
            return zzz;
        }
        int i2 = this.zzi;
        int i3 = this.zzg;
        int i4 = i3 - i2;
        this.zzk += i3;
        this.zzi = 0;
        this.zzg = 0;
        List<byte[]> zzu = zzu(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.zzf, i2, bArr, 0, i4);
        for (byte[] bArr2 : zzu) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        }
        return bArr;
    }

    private final byte[] zzz(int i) {
        if (i == 0) {
            return zzvi.zzc;
        }
        if (i >= 0) {
            int i2 = this.zzk;
            int i3 = this.zzi;
            int i4 = i2 + i3 + i;
            if (DownloadRequest.Priority.CRITICAL + i4 <= 0) {
                int i5 = this.zzl;
                if (i4 <= i5) {
                    int i6 = this.zzg - i3;
                    int i7 = i - i6;
                    if (i7 >= 4096) {
                        try {
                            if (i7 > this.zze.available()) {
                                return null;
                            }
                        } catch (zzvk e) {
                            e.zzk();
                            throw e;
                        }
                    }
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.zzf, this.zzi, bArr, 0, i6);
                    this.zzk += this.zzg;
                    this.zzi = 0;
                    this.zzg = 0;
                    while (i6 < i) {
                        try {
                            int read = this.zze.read(bArr, i6, i - i6);
                            if (read != -1) {
                                this.zzk += read;
                                i6 += read;
                            } else {
                                throw zzvk.zzj();
                            }
                        } catch (zzvk e2) {
                            e2.zzk();
                            throw e2;
                        }
                    }
                    return bArr;
                }
                zzr((i5 - i2) - i3);
                throw zzvk.zzj();
            }
            throw zzvk.zzi();
        }
        throw zzvk.zzf();
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final int zza() {
        return this.zzk + this.zzi;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final int zzb(int i) {
        if (i >= 0) {
            int i2 = this.zzk + this.zzi + i;
            int i3 = this.zzl;
            if (i2 <= i3) {
                this.zzl = i2;
                zzv();
                return i3;
            }
            throw zzvk.zzj();
        }
        throw zzvk.zzf();
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final int zzc() {
        if (zzi()) {
            this.zzj = 0;
            return 0;
        }
        int zzn = zzn();
        this.zzj = zzn;
        if ((zzn >>> 3) != 0) {
            return zzn;
        }
        throw zzvk.zzc();
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final zztd zzd() {
        int zzn = zzn();
        int i = this.zzg;
        int i2 = this.zzi;
        if (zzn <= i - i2 && zzn > 0) {
            zztd zzn2 = zztd.zzn(this.zzf, i2, zzn);
            this.zzi += zzn;
            return zzn2;
        } else if (zzn == 0) {
            return zztd.zzb;
        } else {
            byte[] zzz = zzz(zzn);
            if (zzz != null) {
                return zztd.zzm(zzz);
            }
            int i3 = this.zzi;
            int i4 = this.zzg;
            int i5 = i4 - i3;
            this.zzk += i4;
            this.zzi = 0;
            this.zzg = 0;
            List<byte[]> zzu = zzu(zzn - i5);
            byte[] bArr = new byte[zzn];
            System.arraycopy(this.zzf, i3, bArr, 0, i5);
            for (byte[] bArr2 : zzu) {
                int length = bArr2.length;
                System.arraycopy(bArr2, 0, bArr, i5, length);
                i5 += length;
            }
            return zztd.zzp(bArr);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final String zze() {
        int zzn = zzn();
        if (zzn > 0) {
            int i = this.zzg;
            int i2 = this.zzi;
            if (zzn <= i - i2) {
                String str = new String(this.zzf, i2, zzn, zzvi.zza);
                this.zzi += zzn;
                return str;
            }
        }
        if (zzn == 0) {
            return "";
        }
        if (zzn > this.zzg) {
            return new String(zzy(zzn, false), zzvi.zza);
        }
        zzw(zzn);
        String str2 = new String(this.zzf, this.zzi, zzn, zzvi.zza);
        this.zzi += zzn;
        return str2;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final String zzf() {
        byte[] bArr;
        int zzn = zzn();
        int i = this.zzi;
        int i2 = this.zzg;
        if (zzn <= i2 - i && zzn > 0) {
            bArr = this.zzf;
            this.zzi = i + zzn;
        } else if (zzn == 0) {
            return "";
        } else {
            if (zzn <= i2) {
                zzw(zzn);
                bArr = this.zzf;
                this.zzi = zzn;
            } else {
                bArr = zzy(zzn, false);
            }
            i = 0;
        }
        return zzyd.zzd(bArr, i, zzn);
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final void zzg(int i) {
        if (this.zzj != i) {
            throw zzvk.zzb();
        }
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final void zzh(int i) {
        this.zzl = i;
        zzv();
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final boolean zzi() {
        return this.zzi == this.zzg && !zzx(1);
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final boolean zzj() {
        return zzp() != 0;
    }

    @Override // com.google.android.gms.internal.gtm.zztj
    public final boolean zzk(int i) {
        int zzc;
        int i2 = i & 7;
        int i3 = 0;
        if (i2 == 0) {
            if (this.zzg - this.zzi >= 10) {
                while (i3 < 10) {
                    byte[] bArr = this.zzf;
                    int i4 = this.zzi;
                    this.zzi = i4 + 1;
                    if (bArr[i4] < 0) {
                        i3++;
                    }
                }
                throw zzvk.zze();
            }
            while (i3 < 10) {
                if (zzl() < 0) {
                    i3++;
                }
            }
            throw zzvk.zze();
            return true;
        } else if (i2 == 1) {
            zzr(8);
            return true;
        } else if (i2 == 2) {
            zzr(zzn());
            return true;
        } else if (i2 == 3) {
            do {
                zzc = zzc();
                if (zzc == 0) {
                    break;
                }
            } while (zzk(zzc));
            zzg(((i >>> 3) << 3) | 4);
            return true;
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                zzr(4);
                return true;
            }
            throw zzvk.zza();
        }
    }

    public final byte zzl() {
        if (this.zzi == this.zzg) {
            zzw(1);
        }
        byte[] bArr = this.zzf;
        int i = this.zzi;
        this.zzi = i + 1;
        return bArr[i];
    }

    public final int zzm() {
        int i = this.zzi;
        if (this.zzg - i < 4) {
            zzw(4);
            i = this.zzi;
        }
        byte[] bArr = this.zzf;
        this.zzi = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0067, code lost:
        if (r2[r3] >= 0) goto L_0x0069;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zzn() {
        /*
        // Method dump skipped, instructions count: 114
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzth.zzn():int");
    }

    public final long zzo() {
        int i = this.zzi;
        if (this.zzg - i < 8) {
            zzw(8);
            i = this.zzi;
        }
        byte[] bArr = this.zzf;
        this.zzi = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    public final long zzp() {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        int i2 = this.zzi;
        int i3 = this.zzg;
        if (i3 != i2) {
            byte[] bArr = this.zzf;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.zzi = i4;
                return (long) b;
            } else if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ -128;
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        j2 = (long) (i8 ^ 16256);
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ -2080896;
                        } else {
                            i7 = i5 + 1;
                            long j5 = (((long) bArr[i5]) << 28) ^ ((long) i9);
                            if (j5 >= 0) {
                                j4 = 266354560;
                            } else {
                                int i10 = i7 + 1;
                                long j6 = j5 ^ (((long) bArr[i7]) << 35);
                                if (j6 < 0) {
                                    j3 = -34093383808L;
                                } else {
                                    i7 = i10 + 1;
                                    j5 = j6 ^ (((long) bArr[i10]) << 42);
                                    if (j5 >= 0) {
                                        j4 = 4363953127296L;
                                    } else {
                                        i10 = i7 + 1;
                                        j6 = j5 ^ (((long) bArr[i7]) << 49);
                                        if (j6 < 0) {
                                            j3 = -558586000294016L;
                                        } else {
                                            i7 = i10 + 1;
                                            j2 = (j6 ^ (((long) bArr[i10]) << 56)) ^ 71499008037633920L;
                                            if (j2 < 0) {
                                                i10 = i7 + 1;
                                                if (((long) bArr[i7]) >= 0) {
                                                    j = j2;
                                                    i5 = i10;
                                                    this.zzi = i5;
                                                    return j;
                                                }
                                            }
                                        }
                                    }
                                }
                                j = j3 ^ j6;
                                i5 = i10;
                                this.zzi = i5;
                                return j;
                            }
                            j2 = j5 ^ j4;
                        }
                    }
                    i5 = i7;
                    j = j2;
                    this.zzi = i5;
                    return j;
                }
                j = (long) i;
                this.zzi = i5;
                return j;
            }
        }
        return zzq();
    }

    /* access modifiers changed from: package-private */
    public final long zzq() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzl2 = zzl();
            j |= ((long) (zzl2 & Byte.MAX_VALUE)) << i;
            if ((zzl2 & 128) == 0) {
                return j;
            }
        }
        throw zzvk.zze();
    }

    public final void zzr(int i) {
        int i2 = this.zzg;
        int i3 = this.zzi;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.zzi = i3 + i;
        } else if (i >= 0) {
            int i5 = this.zzk;
            int i6 = i5 + i3;
            int i7 = this.zzl;
            if (i6 + i <= i7) {
                this.zzk = i6;
                this.zzg = 0;
                this.zzi = 0;
                while (i4 < i) {
                    try {
                        long j = (long) (i - i4);
                        try {
                            long skip = this.zze.skip(j);
                            if (skip < 0 || skip > j) {
                                String valueOf = String.valueOf(this.zze.getClass());
                                StringBuilder sb = new StringBuilder(valueOf.length() + 92);
                                sb.append(valueOf);
                                sb.append("#skip returned invalid result: ");
                                sb.append(skip);
                                sb.append("\nThe InputStream implementation is buggy.");
                                throw new IllegalStateException(sb.toString());
                            } else if (skip == 0) {
                                break;
                            } else {
                                i4 += (int) skip;
                            }
                        } catch (zzvk e) {
                            e.zzk();
                            throw e;
                        }
                    } catch (Throwable th) {
                        this.zzk += i4;
                        zzv();
                        throw th;
                    }
                }
                this.zzk += i4;
                zzv();
                if (i4 < i) {
                    int i8 = this.zzg;
                    int i9 = i8 - this.zzi;
                    this.zzi = i8;
                    zzw(1);
                    while (true) {
                        int i10 = i - i9;
                        int i11 = this.zzg;
                        if (i10 > i11) {
                            i9 += i11;
                            this.zzi = i11;
                            zzw(1);
                        } else {
                            this.zzi = i10;
                            return;
                        }
                    }
                }
            } else {
                zzr((i7 - i5) - i3);
                throw zzvk.zzj();
            }
        } else {
            throw zzvk.zzf();
        }
    }
}
