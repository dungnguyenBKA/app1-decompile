package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbui implements zzbvh {
    private final String zzdjf;
    private final String zzdlh;

    zzbui(String str, String str2) {
        this.zzdlh = str;
        this.zzdjf = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzbvh
    public final void zzp(Object obj) {
        ((zzcxy) obj).onAppEvent(this.zzdlh, this.zzdjf);
    }
}
