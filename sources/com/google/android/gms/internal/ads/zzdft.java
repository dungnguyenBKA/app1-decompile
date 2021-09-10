package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;

public final class zzdft implements zzdfj<Bundle> {
    private final String zzdyb;
    private final int zzdyc;
    private final int zzdyd;
    private final int zzdye;
    private final boolean zzdyf;
    private final int zzdyg;

    public zzdft(String str, int i, int i2, int i3, boolean z, int i4) {
        this.zzdyb = str;
        this.zzdyc = i;
        this.zzdyd = i2;
        this.zzdye = i3;
        this.zzdyf = z;
        this.zzdyg = i4;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.zzdyb;
        boolean z = true;
        zzdnz.zza(bundle2, "carrier", str, !TextUtils.isEmpty(str));
        Integer valueOf = Integer.valueOf(this.zzdyc);
        if (this.zzdyc == -2) {
            z = false;
        }
        zzdnz.zza(bundle2, "cnt", valueOf, z);
        bundle2.putInt("gnt", this.zzdyd);
        bundle2.putInt("pt", this.zzdye);
        Bundle zza = zzdnz.zza(bundle2, "device");
        bundle2.putBundle("device", zza);
        Bundle zza2 = zzdnz.zza(zza, "network");
        zza.putBundle("network", zza2);
        zza2.putInt("active_network_state", this.zzdyg);
        zza2.putBoolean("active_network_metered", this.zzdyf);
    }
}
