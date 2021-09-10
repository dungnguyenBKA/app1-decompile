package com.google.android.gms.internal.ads;

import android.text.TextUtils;

final class zzacb extends zzabw {
    zzacb() {
    }

    private static String zzcs(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i = 0;
        int length = str.length();
        while (i < str.length() && str.charAt(i) == ',') {
            i++;
        }
        while (length > 0 && str.charAt(length - 1) == ',') {
            length--;
        }
        if (length < i) {
            return null;
        }
        if (i == 0 && length == str.length()) {
            return str;
        }
        return str.substring(i, length);
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final String zzf(String str, String str2) {
        String zzcs = zzcs(str);
        String zzcs2 = zzcs(str2);
        if (TextUtils.isEmpty(zzcs)) {
            return zzcs2;
        }
        if (TextUtils.isEmpty(zzcs2)) {
            return zzcs;
        }
        return ic.e(ic.m(zzcs2, ic.m(zzcs, 1)), zzcs, ",", zzcs2);
    }
}
