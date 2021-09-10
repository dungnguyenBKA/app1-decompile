package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.OnPaidEventListener;

public final class zzaap extends zzyv {
    private final OnPaidEventListener zzcls;

    public zzaap(OnPaidEventListener onPaidEventListener) {
        this.zzcls = onPaidEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzyw
    public final void zza(zzvu zzvu) {
        if (this.zzcls != null) {
            this.zzcls.onPaidEvent(AdValue.zza(zzvu.zzadc, zzvu.zzadd, zzvu.zzade));
        }
    }
}
