package com.google.android.gms.internal.ads;

import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public final class zzdwl {
    public static void checkArgument(boolean z, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @NonNullDecl
    public static <T> T checkNotNull(@NonNullDecl T t) {
        Objects.requireNonNull(t);
        return t;
    }

    @NonNullDecl
    public static <T> T zza(@NonNullDecl T t, @NullableDecl String str, @NullableDecl Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(zzdwt.zzb(str, obj));
    }

    public static int zzb(int i, int i2, @NullableDecl String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(zzc(i, i2, str));
    }

    private static String zzc(int i, int i2, @NullableDecl String str) {
        if (i < 0) {
            return zzdwt.zzb("%s (%s) must not be negative", str, Integer.valueOf(i));
        } else if (i2 >= 0) {
            return zzdwt.zzb("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        } else {
            throw new IllegalArgumentException(ic.C(26, "negative size: ", i2));
        }
    }

    public static void zzf(int i, int i2, int i3) {
        String str;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                str = zzc(i, i3, "start index");
            } else if (i2 < 0 || i2 > i3) {
                str = zzc(i2, i3, "end index");
            } else {
                str = zzdwt.zzb("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(str);
        }
    }

    public static int zzt(int i, int i2) {
        String str;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            str = zzdwt.zzb("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else if (i2 < 0) {
            throw new IllegalArgumentException(ic.C(26, "negative size: ", i2));
        } else {
            str = zzdwt.zzb("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(str);
    }

    public static int zzu(int i, int i2) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(zzc(i, i2, "index"));
    }

    @NonNullDecl
    public static <T> T checkNotNull(@NonNullDecl T t, @NullableDecl Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }
}
