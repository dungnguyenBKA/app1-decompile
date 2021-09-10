package com.google.android.gms.internal.ads;

import android.text.TextUtils;

public final class zzv {
    private final String mName;
    private final String mValue;

    public zzv(String str, String str2) {
        this.mName = str;
        this.mValue = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzv.class == obj.getClass()) {
            zzv zzv = (zzv) obj;
            return TextUtils.equals(this.mName, zzv.mName) && TextUtils.equals(this.mValue, zzv.mValue);
        }
    }

    public final String getName() {
        return this.mName;
    }

    public final String getValue() {
        return this.mValue;
    }

    public final int hashCode() {
        return this.mValue.hashCode() + (this.mName.hashCode() * 31);
    }

    public final String toString() {
        String str = this.mName;
        String str2 = this.mValue;
        StringBuilder p = ic.p(ic.m(str2, ic.m(str, 20)), "Header[name=", str, ",value=", str2);
        p.append("]");
        return p.toString();
    }
}
