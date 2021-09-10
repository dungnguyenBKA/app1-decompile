package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzamq implements zzbac {
    private final zzbaa zzbwd;

    zzamq(zzbaa zzbaa) {
        this.zzbwd = zzbaa;
    }

    @Override // com.google.android.gms.internal.ads.zzbac
    public final void run() {
        this.zzbwd.setException(new zzaly("Cannot get Javascript Engine"));
    }
}
