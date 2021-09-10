package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.b;

/* access modifiers changed from: package-private */
public final class zztt implements b.AbstractC0047b {
    private final /* synthetic */ zztn zzbvu;
    private final /* synthetic */ zzbaa zzbwb;

    zztt(zztn zztn, zzbaa zzbaa) {
        this.zzbvu = zztn;
        this.zzbwb = zzbaa;
    }

    @Override // com.google.android.gms.common.internal.b.AbstractC0047b
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        synchronized (this.zzbvu.lock) {
            this.zzbwb.setException(new RuntimeException("Connection failed."));
        }
    }
}
