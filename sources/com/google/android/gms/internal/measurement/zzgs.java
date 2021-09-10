package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

public abstract class zzgs implements Iterable<Byte>, Serializable {
    private static final zzgn zza = (zzgd.zza() ? new zzgr(null) : new zzgl(null));
    public static final zzgs zzb = new zzgq(zzia.zzc);
    private static final Comparator<zzgs> zzd = new zzgj();
    private int zzc = 0;

    zzgs() {
    }

    public static zzgs zzj(byte[] bArr, int i, int i2) {
        zzn(i, i + i2, bArr.length);
        return new zzgq(zza.zza(bArr, i, i2));
    }

    public static zzgs zzk(String str) {
        return new zzgq(str.getBytes(zzia.zza));
    }

    static int zzn(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i2 < i) {
            throw new IndexOutOfBoundsException(ic.c(66, "Beginning index larger than ending index: ", i, ", ", i2));
        } else {
            throw new IndexOutOfBoundsException(ic.c(37, "End index: ", i2, " >= ", i3));
        }
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzc;
        if (i == 0) {
            int zzc2 = zzc();
            i = zzi(zzc2, 0, zzc2);
            if (i == 0) {
                i = 1;
            }
            this.zzc = i;
        }
        return i;
    }

    /* Return type fixed from 'java.util.Iterator' to match base method */
    @Override // java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
        return new zzgi(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(zzc());
        objArr[2] = zzc() <= 50 ? zzju.zza(this) : String.valueOf(zzju.zza(zze(0, 47))).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract byte zza(int i);

    /* access modifiers changed from: package-private */
    public abstract byte zzb(int i);

    public abstract int zzc();

    public abstract zzgs zze(int i, int i2);

    /* access modifiers changed from: package-private */
    public abstract void zzf(zzgh zzgh);

    /* access modifiers changed from: protected */
    public abstract String zzg(Charset charset);

    public abstract boolean zzh();

    /* access modifiers changed from: protected */
    public abstract int zzi(int i, int i2, int i3);

    public final String zzl(Charset charset) {
        return zzc() == 0 ? "" : zzg(charset);
    }

    /* access modifiers changed from: protected */
    public final int zzm() {
        return this.zzc;
    }
}
