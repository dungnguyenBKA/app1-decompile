package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdvy extends zzdvv {
    static final zzdvy zzhvt = new zzdvy();

    private zzdvy() {
        super("CharMatcher.none()");
    }

    @Override // com.google.android.gms.internal.ads.zzdvu
    public final int zza(CharSequence charSequence, int i) {
        zzdwl.zzb(i, charSequence.length(), "index");
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdvu
    public final boolean zzc(char c) {
        return false;
    }
}
