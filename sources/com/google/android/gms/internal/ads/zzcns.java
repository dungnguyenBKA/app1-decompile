package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;

public final class zzcns extends zzcnl {
    private String zzgow;
    private int zzgox = zzcnt.zzgoy;

    public zzcns(Context context) {
        this.zzgor = new zzasy(context, zzr.zzlf().zzzp(), this, this);
    }

    @Override // com.google.android.gms.internal.ads.zzcnl, com.google.android.gms.common.internal.b.a
    public final void onConnected(Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.zzgop) {
                this.zzgop = true;
                try {
                    int i = this.zzgox;
                    if (i == zzcnt.zzgoz) {
                        this.zzgor.zzwi().zzc(this.zzgoq, new zzcno(this));
                    } else if (i == zzcnt.zzgpa) {
                        this.zzgor.zzwi().zza(this.zzgow, new zzcno(this));
                    } else {
                        this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
                    }
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
                } catch (Throwable th) {
                    zzr.zzkv().zza(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
                    this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.b.AbstractC0047b, com.google.android.gms.internal.ads.zzcnl
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zzazk.zzdy("Cannot connect to remote service, fallback to local instance.");
        this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
    }

    public final zzdzw<InputStream> zzgi(String str) {
        synchronized (this.mLock) {
            int i = this.zzgox;
            if (i != zzcnt.zzgoy && i != zzcnt.zzgpa) {
                return zzdzk.immediateFailedFuture(new zzcoc(zzdom.INVALID_REQUEST));
            } else if (this.zzgoo) {
                return this.zzdlg;
            } else {
                this.zzgox = zzcnt.zzgpa;
                this.zzgoo = true;
                this.zzgow = str;
                this.zzgor.checkAvailabilityAndConnect();
                this.zzdlg.addListener(new zzcnu(this), zzazp.zzeih);
                return this.zzdlg;
            }
        }
    }

    public final zzdzw<InputStream> zzk(zzatq zzatq) {
        synchronized (this.mLock) {
            int i = this.zzgox;
            if (i != zzcnt.zzgoy && i != zzcnt.zzgoz) {
                return zzdzk.immediateFailedFuture(new zzcoc(zzdom.INVALID_REQUEST));
            } else if (this.zzgoo) {
                return this.zzdlg;
            } else {
                this.zzgox = zzcnt.zzgoz;
                this.zzgoo = true;
                this.zzgoq = zzatq;
                this.zzgor.checkAvailabilityAndConnect();
                this.zzdlg.addListener(new zzcnr(this), zzazp.zzeih);
                return this.zzdlg;
            }
        }
    }
}
