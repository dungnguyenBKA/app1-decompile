package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.b;

/* access modifiers changed from: package-private */
public final class zztd implements b.AbstractC0047b {
    private final /* synthetic */ zzsz zzbvc;

    zztd(zzsz zzsz) {
        this.zzbvc = zzsz;
    }

    @Override // com.google.android.gms.common.internal.b.AbstractC0047b
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        synchronized (this.zzbvc.lock) {
            this.zzbvc.zzbvf = null;
            if (this.zzbvc.zzbve != null) {
                this.zzbvc.zzbve = null;
            }
            this.zzbvc.lock.notifyAll();
        }
    }
}
