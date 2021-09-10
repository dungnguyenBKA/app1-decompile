package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

public abstract class zzejr implements Serializable, Iterable<Byte> {
    public static final zzejr zzilz = new zzekb(zzeld.zzimf);
    private static final zzejx zzima = (zzejk.zzbgc() ? new zzekd(null) : new zzejv(null));
    private static final Comparator<zzejr> zzimb = new zzejt();
    private int zzilf = 0;

    zzejr() {
    }

    private static zzejr zza(Iterator<zzejr> it, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
        } else if (i == 1) {
            return it.next();
        } else {
            int i2 = i >>> 1;
            zzejr zza = zza(it, i2);
            zzejr zza2 = zza(it, i - i2);
            if (Integer.MAX_VALUE - zza.size() >= zza2.size()) {
                return zzeng.zza(zza, zza2);
            }
            throw new IllegalArgumentException(ic.c(53, "ByteString would be too long: ", zza.size(), "+", zza2.size()));
        }
    }

    static void zzab(int i, int i2) {
        if (((i2 - (i + 1)) | i) >= 0) {
            return;
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(ic.C(22, "Index < 0: ", i));
        }
        throw new ArrayIndexOutOfBoundsException(ic.c(40, "Index > length: ", i, ", ", i2));
    }

    /* access modifiers changed from: private */
    public static int zzb(byte b) {
        return b & 255;
    }

    public static zzeka zzbgl() {
        return new zzeka(128);
    }

    public static zzejr zzf(InputStream inputStream) {
        zzejr zzejr;
        ArrayList arrayList = new ArrayList();
        int i = 256;
        while (true) {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i) {
                int read = inputStream.read(bArr, i2, i - i2);
                if (read == -1) {
                    break;
                }
                i2 += read;
            }
            if (i2 == 0) {
                zzejr = null;
            } else {
                zzejr = zzi(bArr, 0, i2);
            }
            if (zzejr == null) {
                return zzl(arrayList);
            }
            arrayList.add(zzejr);
            i = Math.min(i << 1, 8192);
        }
    }

    static zzejz zzgb(int i) {
        return new zzejz(i, null);
    }

    public static zzejr zzhy(String str) {
        return new zzekb(str.getBytes(zzeld.UTF_8));
    }

    public static zzejr zzi(byte[] bArr, int i, int i2) {
        zzi(i, i + i2, bArr.length);
        return new zzekb(zzima.zzj(bArr, i, i2));
    }

    public static zzejr zzl(Iterable<zzejr> iterable) {
        int i;
        if (!(iterable instanceof Collection)) {
            i = 0;
            Iterator<zzejr> it = iterable.iterator();
            while (it.hasNext()) {
                it.next();
                i++;
            }
        } else {
            i = ((Collection) iterable).size();
        }
        if (i == 0) {
            return zzilz;
        }
        return zza(iterable.iterator(), i);
    }

    public static zzejr zzt(byte[] bArr) {
        return zzi(bArr, 0, bArr.length);
    }

    static zzejr zzu(byte[] bArr) {
        return new zzekb(bArr);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzilf;
        if (i == 0) {
            int size = size();
            i = zzh(size, 0, size);
            if (i == 0) {
                i = 1;
            }
            this.zzilf = i;
        }
        return i;
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract int size();

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return zzeld.zzimf;
        }
        byte[] bArr = new byte[size];
        zzb(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(size());
        objArr[2] = size() <= 50 ? zzenx.zzan(this) : String.valueOf(zzenx.zzan(zzaa(0, 47))).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    /* access modifiers changed from: protected */
    public abstract String zza(Charset charset);

    /* access modifiers changed from: package-private */
    public abstract void zza(zzejo zzejo);

    public abstract zzejr zzaa(int i, int i2);

    /* access modifiers changed from: protected */
    public abstract void zzb(byte[] bArr, int i, int i2, int i3);

    /* renamed from: zzbgh */
    public zzejw iterator() {
        return new zzejq(this);
    }

    public final String zzbgi() {
        return size() == 0 ? "" : zza(zzeld.UTF_8);
    }

    public abstract boolean zzbgj();

    public abstract zzekc zzbgk();

    /* access modifiers changed from: protected */
    public abstract int zzbgm();

    /* access modifiers changed from: protected */
    public abstract boolean zzbgn();

    /* access modifiers changed from: protected */
    public final int zzbgo() {
        return this.zzilf;
    }

    public abstract byte zzfz(int i);

    /* access modifiers changed from: protected */
    public abstract int zzg(int i, int i2, int i3);

    /* access modifiers changed from: package-private */
    public abstract byte zzga(int i);

    /* access modifiers changed from: protected */
    public abstract int zzh(int i, int i2, int i3);

    static int zzi(int i, int i2, int i3) {
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

    @Deprecated
    public final void zza(byte[] bArr, int i, int i2, int i3) {
        zzi(i, i + i3, size());
        zzi(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zzb(bArr, i, i2, i3);
        }
    }
}
