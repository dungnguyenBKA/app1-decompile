package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.b;

/* access modifiers changed from: package-private */
public final class zzajf implements b.a {
    private final /* synthetic */ zzbaa zzbwb;
    private final /* synthetic */ zzajb zzdis;

    zzajf(zzajb zzajb, zzbaa zzbaa) {
        this.zzdis = zzajb;
        this.zzbwb = zzbaa;
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnected(Bundle bundle) {
        try {
            this.zzbwb.set(this.zzdis.zzdir.zzub());
        } catch (DeadObjectException e) {
            this.zzbwb.setException(e);
        }
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnectionSuspended(int i) {
        this.zzbwb.setException(new RuntimeException(ic.C(34, "onConnectionSuspended: ", i)));
    }
}
