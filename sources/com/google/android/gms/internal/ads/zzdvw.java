package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdvw extends zzdvt {
    private final char zzhvs;

    zzdvw(char c) {
        this.zzhvs = c;
    }

    public final String toString() {
        String str = zzdvu.zzd(this.zzhvs);
        return ic.e(ic.m(str, 18), "CharMatcher.is('", str, "')");
    }

    @Override // com.google.android.gms.internal.ads.zzdvu
    public final boolean zzc(char c) {
        return c == this.zzhvs;
    }
}
