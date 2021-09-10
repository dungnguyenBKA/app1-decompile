package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.b;

/* access modifiers changed from: package-private */
public final class zzta implements b.a {
    private final /* synthetic */ zzsz zzbvc;

    zzta(zzsz zzsz) {
        this.zzbvc = zzsz;
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzbvc.lock) {
            try {
                if (this.zzbvc.zzbve != null) {
                    zzsz zzsz = this.zzbvc;
                    zzsz.zzbvf = zzsz.zzbve.zznd();
                }
            } catch (DeadObjectException e) {
                zzazk.zzc("Unable to obtain a cache service instance.", e);
                this.zzbvc.disconnect();
            }
            this.zzbvc.lock.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnectionSuspended(int i) {
        synchronized (this.zzbvc.lock) {
            this.zzbvc.zzbvf = null;
            this.zzbvc.lock.notifyAll();
        }
    }
}
