package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbvs implements zzbwh {
    private final String zzdjf;
    private final String zzdlh;

    zzbvs(String str, String str2) {
        this.zzdlh = str;
        this.zzdjf = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzo(Object obj) {
        ((AppEventListener) obj).onAppEvent(this.zzdlh, this.zzdjf);
    }
}
