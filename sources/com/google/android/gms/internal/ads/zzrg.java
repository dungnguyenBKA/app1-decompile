package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;

public final class zzrg extends zzxw {
    private final AppEventListener zzbsf;

    public zzrg(AppEventListener appEventListener) {
        this.zzbsf = appEventListener;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzbsf;
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final void onAppEvent(String str, String str2) {
        this.zzbsf.onAppEvent(str, str2);
    }
}
