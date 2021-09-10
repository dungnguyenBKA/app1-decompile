package com.google.android.gms.internal.ads;

import android.util.Base64;

public final class zzcy {
    public static String zza(byte[] bArr, boolean z) {
        return Base64.encodeToString(bArr, z ? 11 : 2);
    }

    public static byte[] zzb(String str, boolean z) {
        byte[] decode = Base64.decode(str, z ? 11 : 2);
        if (decode.length != 0 || str.length() <= 0) {
            return decode;
        }
        throw new IllegalArgumentException(str.length() != 0 ? "Unable to decode ".concat(str) : new String("Unable to decode "));
    }
}
