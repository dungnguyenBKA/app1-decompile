package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;

public final class zzcnn extends zzcnl {
    public zzcnn(Context context) {
        this.zzgor = new zzasy(context, zzr.zzlf().zzzp(), this, this);
    }

    @Override // com.google.android.gms.internal.ads.zzcnl, com.google.android.gms.common.internal.b.a
    public final void onConnected(Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.zzgop) {
                this.zzgop = true;
                try {
                    this.zzgor.zzwi().zzb(this.zzgoq, new zzcno(this));
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
                } catch (Throwable th) {
                    zzr.zzkv().zza(th, "RemoteSignalsClientTask.onConnected");
                    this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
                }
            }
        }
    }

    public final zzdzw<InputStream> zzj(zzatq zzatq) {
        synchronized (this.mLock) {
            if (this.zzgoo) {
                return this.zzdlg;
            }
            this.zzgoo = true;
            this.zzgoq = zzatq;
            this.zzgor.checkAvailabilityAndConnect();
            this.zzdlg.addListener(new zzcnq(this), zzazp.zzeih);
            return this.zzdlg;
        }
    }
}
