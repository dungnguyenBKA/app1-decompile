package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzdby implements zzdfj<Bundle> {
    private final double zzdyh;
    private final boolean zzdyi;

    public zzdby(double d, boolean z) {
        this.zzdyh = d;
        this.zzdyi = z;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle zza = zzdnz.zza(bundle2, "device");
        bundle2.putBundle("device", zza);
        Bundle zza2 = zzdnz.zza(zza, "battery");
        zza.putBundle("battery", zza2);
        zza2.putBoolean("is_charging", this.zzdyi);
        zza2.putDouble("battery_level", this.zzdyh);
    }
}
