package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.Objects;

/* access modifiers changed from: package-private */
public class zzekb extends zzejy {
    protected final byte[] zzimk;

    zzekb(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zzimk = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzejr) || size() != ((zzejr) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzekb)) {
            return obj.equals(this);
        }
        zzekb zzekb = (zzekb) obj;
        int zzbgo = zzbgo();
        int zzbgo2 = zzekb.zzbgo();
        if (zzbgo == 0 || zzbgo2 == 0 || zzbgo == zzbgo2) {
            return zza(zzekb, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public int size() {
        return this.zzimk.length;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final void zza(zzejo zzejo) {
        zzejo.zzh(this.zzimk, zzbgp(), size());
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final zzejr zzaa(int i, int i2) {
        int zzi = zzejr.zzi(i, i2, size());
        if (zzi == 0) {
            return zzejr.zzilz;
        }
        return new zzeju(this.zzimk, zzbgp() + i, zzi);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzejr
    public void zzb(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzimk, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final boolean zzbgj() {
        int zzbgp = zzbgp();
        return zzeok.zzm(this.zzimk, zzbgp, size() + zzbgp);
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final zzekc zzbgk() {
        return zzekc.zzb(this.zzimk, zzbgp(), size(), true);
    }

    /* access modifiers changed from: protected */
    public int zzbgp() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public byte zzfz(int i) {
        return this.zzimk[i];
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final int zzg(int i, int i2, int i3) {
        int zzbgp = zzbgp() + i2;
        return zzeok.zzb(i, this.zzimk, zzbgp, i3 + zzbgp);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzejr
    public byte zzga(int i) {
        return this.zzimk[i];
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final int zzh(int i, int i2, int i3) {
        return zzeld.zza(i, this.zzimk, zzbgp() + i2, i3);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzejr
    public final String zza(Charset charset) {
        return new String(this.zzimk, zzbgp(), size(), charset);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzejy
    public final boolean zza(zzejr zzejr, int i, int i2) {
        if (i2 <= zzejr.size()) {
            int i3 = i + i2;
            if (i3 > zzejr.size()) {
                int size = zzejr.size();
                StringBuilder sb = new StringBuilder(59);
                sb.append("Ran off end of other: ");
                sb.append(i);
                sb.append(", ");
                sb.append(i2);
                sb.append(", ");
                sb.append(size);
                throw new IllegalArgumentException(sb.toString());
            } else if (!(zzejr instanceof zzekb)) {
                return zzejr.zzaa(i, i3).equals(zzaa(0, i2));
            } else {
                zzekb zzekb = (zzekb) zzejr;
                byte[] bArr = this.zzimk;
                byte[] bArr2 = zzekb.zzimk;
                int zzbgp = zzbgp() + i2;
                int zzbgp2 = zzbgp();
                int zzbgp3 = zzekb.zzbgp() + i;
                while (zzbgp2 < zzbgp) {
                    if (bArr[zzbgp2] != bArr2[zzbgp3]) {
                        return false;
                    }
                    zzbgp2++;
                    zzbgp3++;
                }
                return true;
            }
        } else {
            int size2 = size();
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Length too large: ");
            sb2.append(i2);
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }
}
