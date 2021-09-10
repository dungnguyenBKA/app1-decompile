package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.Objects;

class zzgq extends zzgp {
    protected final byte[] zza;

    zzgq(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgs) || zzc() != ((zzgs) obj).zzc()) {
            return false;
        }
        if (zzc() == 0) {
            return true;
        }
        if (!(obj instanceof zzgq)) {
            return obj.equals(this);
        }
        zzgq zzgq = (zzgq) obj;
        int zzm = zzm();
        int zzm2 = zzgq.zzm();
        if (zzm != 0 && zzm2 != 0 && zzm != zzm2) {
            return false;
        }
        int zzc = zzc();
        if (zzc > zzgq.zzc()) {
            int zzc2 = zzc();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(zzc);
            sb.append(zzc2);
            throw new IllegalArgumentException(sb.toString());
        } else if (zzc <= zzgq.zzc()) {
            byte[] bArr = this.zza;
            byte[] bArr2 = zzgq.zza;
            zzgq.zzd();
            int i = 0;
            int i2 = 0;
            while (i < zzc) {
                if (bArr[i] != bArr2[i2]) {
                    return false;
                }
                i++;
                i2++;
            }
            return true;
        } else {
            throw new IllegalArgumentException(ic.c(59, "Ran off end of other: 0, ", zzc, ", ", zzgq.zzc()));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public byte zza(int i) {
        return this.zza[i];
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzgs
    public byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public int zzc() {
        return this.zza.length;
    }

    /* access modifiers changed from: protected */
    public int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public final zzgs zze(int i, int i2) {
        int zzn = zzgs.zzn(0, i2, zzc());
        if (zzn == 0) {
            return zzgs.zzb;
        }
        return new zzgm(this.zza, 0, zzn);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzgs
    public final void zzf(zzgh zzgh) {
        ((zzgx) zzgh).zzp(this.zza, 0, zzc());
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzgs
    public final String zzg(Charset charset) {
        return new String(this.zza, 0, zzc(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public final boolean zzh() {
        return zzkn.zzb(this.zza, 0, zzc());
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzgs
    public final int zzi(int i, int i2, int i3) {
        return zzia.zzh(i, this.zza, 0, i3);
    }
}
