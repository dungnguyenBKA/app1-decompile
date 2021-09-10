package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzamm implements zzbac {
    private final /* synthetic */ zzbaa zzdik;
    private final /* synthetic */ zzalm zzdlb;

    zzamm(zzamk zzamk, zzbaa zzbaa, zzalm zzalm) {
        this.zzdik = zzbaa;
        this.zzdlb = zzalm;
    }

    @Override // com.google.android.gms.internal.ads.zzbac
    public final void run() {
        this.zzdik.setException(new zzaly("Unable to obtain a JavascriptEngine."));
        this.zzdlb.release();
    }
}
