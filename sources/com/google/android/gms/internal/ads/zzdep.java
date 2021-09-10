package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdep implements zzdvz {
    private final String zzdlh;

    zzdep(String str) {
        this.zzdlh = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        Throwable th = (Throwable) obj;
        String valueOf = String.valueOf(this.zzdlh);
        zzazk.zzev(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "));
        return null;
    }
}
