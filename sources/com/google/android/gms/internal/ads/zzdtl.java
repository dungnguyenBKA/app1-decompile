package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.b;

/* access modifiers changed from: package-private */
public final class zzdtl implements b.a, b.AbstractC0047b {
    private final Object lock = new Object();
    private boolean zzgoo = false;
    private boolean zzgop = false;
    private final zzduh zzhsx;
    private final zzdua zzhsy;

    zzdtl(Context context, Looper looper, zzdua zzdua) {
        this.zzhsy = zzdua;
        this.zzhsx = new zzduh(context, looper, this, this, 12800000);
    }

    private final void zzarp() {
        synchronized (this.lock) {
            if (this.zzhsx.isConnected() || this.zzhsx.isConnecting()) {
                this.zzhsx.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnected(Bundle bundle) {
        synchronized (this.lock) {
            if (!this.zzgop) {
                this.zzgop = true;
                try {
                    this.zzhsx.zzayh().zza(new zzduf(this.zzhsy.toByteArray()));
                } catch (Exception unused) {
                } finally {
                    zzarp();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.b.AbstractC0047b
    public final void onConnectionFailed(ConnectionResult connectionResult) {
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnectionSuspended(int i) {
    }

    /* access modifiers changed from: package-private */
    public final void zzaxv() {
        synchronized (this.lock) {
            if (!this.zzgoo) {
                this.zzgoo = true;
                this.zzhsx.checkAvailabilityAndConnect();
            }
        }
    }
}
