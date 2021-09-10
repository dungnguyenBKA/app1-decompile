package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzddh implements zzdfj<Bundle> {
    private final Bundle zzdvb;

    public zzddh(Bundle bundle) {
        this.zzdvb = bundle;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle zza = zzdnz.zza(bundle2, "device");
        zza.putBundle("android_mem_info", this.zzdvb);
        bundle2.putBundle("device", zza);
    }
}
