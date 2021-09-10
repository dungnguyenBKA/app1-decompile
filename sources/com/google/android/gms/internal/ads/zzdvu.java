package com.google.android.gms.internal.ads;

public abstract class zzdvu {
    protected zzdvu() {
    }

    public static zzdvu zzb(char c) {
        return new zzdvw(c);
    }

    /* access modifiers changed from: private */
    public static String zzd(char c) {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
            c = (char) (c >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public int zza(CharSequence charSequence, int i) {
        int length = charSequence.length();
        zzdwl.zzb(i, length, "index");
        while (i < length) {
            if (zzc(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public abstract boolean zzc(char c);
}
