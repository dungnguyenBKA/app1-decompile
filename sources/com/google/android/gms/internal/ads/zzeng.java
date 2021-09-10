package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;

/* access modifiers changed from: package-private */
public final class zzeng extends zzejr {
    static final int[] zzitu = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private final int zzitv;
    private final zzejr zzitw;
    private final zzejr zzitx;
    private final int zzity;
    private final int zzitz;

    private zzeng(zzejr zzejr, zzejr zzejr2) {
        this.zzitw = zzejr;
        this.zzitx = zzejr2;
        int size = zzejr.size();
        this.zzity = size;
        this.zzitv = zzejr2.size() + size;
        this.zzitz = Math.max(zzejr.zzbgm(), zzejr2.zzbgm()) + 1;
    }

    static zzejr zza(zzejr zzejr, zzejr zzejr2) {
        if (zzejr2.size() == 0) {
            return zzejr;
        }
        if (zzejr.size() == 0) {
            return zzejr2;
        }
        int size = zzejr2.size() + zzejr.size();
        if (size < 128) {
            return zzb(zzejr, zzejr2);
        }
        if (zzejr instanceof zzeng) {
            zzeng zzeng = (zzeng) zzejr;
            if (zzejr2.size() + zzeng.zzitx.size() < 128) {
                return new zzeng(zzeng.zzitw, zzb(zzeng.zzitx, zzejr2));
            } else if (zzeng.zzitw.zzbgm() > zzeng.zzitx.zzbgm() && zzeng.zzbgm() > zzejr2.zzbgm()) {
                return new zzeng(zzeng.zzitw, new zzeng(zzeng.zzitx, zzejr2));
            }
        }
        if (size >= zzhr(Math.max(zzejr.zzbgm(), zzejr2.zzbgm()) + 1)) {
            return new zzeng(zzejr, zzejr2);
        }
        return zzeni.zza(new zzeni(null), zzejr, zzejr2);
    }

    private static zzejr zzb(zzejr zzejr, zzejr zzejr2) {
        int size = zzejr.size();
        int size2 = zzejr2.size();
        byte[] bArr = new byte[(size + size2)];
        zzejr.zza(bArr, 0, 0, size);
        zzejr2.zza(bArr, 0, size, size2);
        return zzejr.zzu(bArr);
    }

    static int zzhr(int i) {
        int[] iArr = zzitu;
        if (i >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzejr)) {
            return false;
        }
        zzejr zzejr = (zzejr) obj;
        if (this.zzitv != zzejr.size()) {
            return false;
        }
        if (this.zzitv == 0) {
            return true;
        }
        int zzbgo = zzbgo();
        int zzbgo2 = zzejr.zzbgo();
        if (zzbgo != 0 && zzbgo2 != 0 && zzbgo != zzbgo2) {
            return false;
        }
        zzenh zzenh = new zzenh(this, null);
        zzejy zzejy = (zzejy) zzenh.next();
        zzenh zzenh2 = new zzenh(zzejr, null);
        zzejy zzejy2 = (zzejy) zzenh2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int size = zzejy.size() - i;
            int size2 = zzejy2.size() - i2;
            int min = Math.min(size, size2);
            if (i == 0) {
                z = zzejy.zza(zzejy2, i2, min);
            } else {
                z = zzejy2.zza(zzejy, i, min);
            }
            if (!z) {
                return false;
            }
            i3 += min;
            int i4 = this.zzitv;
            if (i3 < i4) {
                if (min == size) {
                    zzejy = (zzejy) zzenh.next();
                    i = 0;
                } else {
                    i += min;
                }
                if (min == size2) {
                    zzejy2 = (zzejy) zzenh2.next();
                    i2 = 0;
                } else {
                    i2 += min;
                }
            } else if (i3 == i4) {
                return true;
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final int size() {
        return this.zzitv;
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final zzejr zzaa(int i, int i2) {
        int zzi = zzejr.zzi(i, i2, this.zzitv);
        if (zzi == 0) {
            return zzejr.zzilz;
        }
        if (zzi == this.zzitv) {
            return this;
        }
        int i3 = this.zzity;
        if (i2 <= i3) {
            return this.zzitw.zzaa(i, i2);
        }
        if (i >= i3) {
            return this.zzitx.zzaa(i - i3, i2 - i3);
        }
        zzejr zzejr = this.zzitw;
        return new zzeng(zzejr.zzaa(i, zzejr.size()), this.zzitx.zzaa(0, i2 - this.zzity));
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    /* renamed from: zzbgh */
    public final zzejw iterator() {
        return new zzenf(this);
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final boolean zzbgj() {
        int zzg = this.zzitw.zzg(0, 0, this.zzity);
        zzejr zzejr = this.zzitx;
        if (zzejr.zzg(zzg, 0, zzejr.size()) == 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final zzekc zzbgk() {
        return new zzekh(new zzenk(this));
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final int zzbgm() {
        return this.zzitz;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final boolean zzbgn() {
        return this.zzitv >= zzhr(this.zzitz);
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final byte zzfz(int i) {
        zzejr.zzab(i, this.zzitv);
        return zzga(i);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final int zzg(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.zzity;
        if (i4 <= i5) {
            return this.zzitw.zzg(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.zzitx.zzg(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.zzitx.zzg(this.zzitw.zzg(i, i2, i6), 0, i3 - i6);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final byte zzga(int i) {
        int i2 = this.zzity;
        if (i < i2) {
            return this.zzitw.zzga(i);
        }
        return this.zzitx.zzga(i - i2);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final int zzh(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.zzity;
        if (i4 <= i5) {
            return this.zzitw.zzh(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.zzitx.zzh(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.zzitx.zzh(this.zzitw.zzh(i, i2, i6), 0, i3 - i6);
    }

    /* synthetic */ zzeng(zzejr zzejr, zzejr zzejr2, zzenf zzenf) {
        this(zzejr, zzejr2);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final void zzb(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i3;
        int i5 = this.zzity;
        if (i4 <= i5) {
            this.zzitw.zzb(bArr, i, i2, i3);
        } else if (i >= i5) {
            this.zzitx.zzb(bArr, i - i5, i2, i3);
        } else {
            int i6 = i5 - i;
            this.zzitw.zzb(bArr, i, i2, i6);
            this.zzitx.zzb(bArr, 0, i2 + i6, i3 - i6);
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final void zza(zzejo zzejo) {
        this.zzitw.zza(zzejo);
        this.zzitx.zza(zzejo);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final String zza(Charset charset) {
        return new String(toByteArray(), charset);
    }
}
