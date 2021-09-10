package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.b;

/* access modifiers changed from: package-private */
public final class zzaje implements b.AbstractC0047b {
    private final /* synthetic */ zzbaa zzbwb;

    zzaje(zzajb zzajb, zzbaa zzbaa) {
        this.zzbwb = zzbaa;
    }

    @Override // com.google.android.gms.common.internal.b.AbstractC0047b
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzbwb.setException(new RuntimeException("Connection failed."));
    }
}
