package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcye implements zzdkc {
    private final String zzdjf;
    private final String zzdlh;

    zzcye(String str, String str2) {
        this.zzdlh = str;
        this.zzdjf = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzdkc
    public final void zzp(Object obj) {
        ((zzxt) obj).onAppEvent(this.zzdlh, this.zzdjf);
    }
}
