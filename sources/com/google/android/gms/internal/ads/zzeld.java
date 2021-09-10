package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
import org.apache.http.protocol.HTTP;

public final class zzeld {
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
    static final Charset UTF_8 = Charset.forName(HTTP.UTF_8);
    public static final byte[] zzimf;
    private static final ByteBuffer zzira;
    private static final zzekc zzirb;

    static {
        byte[] bArr = new byte[0];
        zzimf = bArr;
        zzira = ByteBuffer.wrap(bArr);
        zzirb = zzekc.zzb(bArr, 0, bArr.length, false);
    }

    static <T> T checkNotNull(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        int zza = zza(length, bArr, 0, length);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    static <T> T zza(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static int zzbt(boolean z) {
        return z ? 1231 : 1237;
    }

    static Object zze(Object obj, Object obj2) {
        return ((zzemo) obj).zzbio().zzf((zzemo) obj2).zzbiv();
    }

    public static int zzfq(long j) {
        return (int) (j ^ (j >>> 32));
    }

    static boolean zzk(zzemo zzemo) {
        if (!(zzemo instanceof zzejj)) {
            return false;
        }
        zzejj zzejj = (zzejj) zzemo;
        return false;
    }

    public static boolean zzx(byte[] bArr) {
        return zzeok.zzx(bArr);
    }

    public static String zzy(byte[] bArr) {
        return new String(bArr, UTF_8);
    }

    static int zza(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }
}
