package com.google.android.gms.internal.ads;

final class zzdwm extends zzdwo {
    private final /* synthetic */ zzdwn zzhwc;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzdwm(zzdwn zzdwn, zzdwk zzdwk, CharSequence charSequence) {
        super(zzdwk, charSequence);
        this.zzhwc = zzdwn;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwo
    public final int zzen(int i) {
        return this.zzhwc.zzhwd.zza(this.zzhwe, i);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwo
    public final int zzeo(int i) {
        return i + 1;
    }
}
