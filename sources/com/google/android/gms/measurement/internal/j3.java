package com.google.android.gms.measurement.internal;

import android.os.Bundle;

public final class j3 {
    public final String a;
    public final String b;
    public final long c;
    public final Bundle d;

    public j3(String str, String str2, Bundle bundle, long j) {
        this.a = str;
        this.b = str2;
        this.d = bundle;
        this.c = j;
    }

    public static j3 a(zzas zzas) {
        return new j3(zzas.b, zzas.d, zzas.c.m0(), zzas.e);
    }

    public final zzas b() {
        return new zzas(this.a, new zzaq(new Bundle(this.d)), this.b, this.c);
    }

    public final String toString() {
        String str = this.b;
        String str2 = this.a;
        String valueOf = String.valueOf(this.d);
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 21 + String.valueOf(str2).length() + valueOf.length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        return ic.l(sb, ",params=", valueOf);
    }
}
