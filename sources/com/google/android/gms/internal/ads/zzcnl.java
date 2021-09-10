package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.b;
import java.io.InputStream;

public abstract class zzcnl implements b.a, b.AbstractC0047b {
    protected final Object mLock = new Object();
    protected final zzbaa<InputStream> zzdlg = new zzbaa<>();
    protected boolean zzgoo = false;
    protected boolean zzgop = false;
    protected zzatq zzgoq;
    protected zzasy zzgor;

    @Override // com.google.android.gms.common.internal.b.a
    public abstract /* synthetic */ void onConnected(Bundle bundle);

    @Override // com.google.android.gms.common.internal.b.AbstractC0047b
    public void onConnectionFailed(ConnectionResult connectionResult) {
        zzazk.zzdy("Disconnected from remote ad request service.");
        this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
    }

    @Override // com.google.android.gms.common.internal.b.a
    public void onConnectionSuspended(int i) {
        zzazk.zzdy("Cannot connect to remote service, fallback to local instance.");
    }

    /* access modifiers changed from: protected */
    public final void zzarp() {
        synchronized (this.mLock) {
            this.zzgop = true;
            if (this.zzgor.isConnected() || this.zzgor.isConnecting()) {
                this.zzgor.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }
}
