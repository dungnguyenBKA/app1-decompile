package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;

public final class zzcyy {
    @GuardedBy("this")
    private zzyx zzadv;
    @GuardedBy("this")
    private boolean zzafd = false;
    private final String zzbut;
    private final zzczc<zzbnt> zzgyx;

    public zzcyy(zzczc<zzbnt> zzczc, String str) {
        this.zzgyx = zzczc;
        this.zzbut = str;
    }

    public final synchronized String getMediationAdapterClassName() {
        try {
            zzyx zzyx = this.zzadv;
            if (zzyx == null) {
                return null;
            }
            return zzyx.getMediationAdapterClassName();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final synchronized boolean isLoading() {
        return this.zzgyx.isLoading();
    }

    public final synchronized void zza(zzvl zzvl, int i) {
        this.zzadv = null;
        this.zzafd = this.zzgyx.zza(zzvl, this.zzbut, new zzczd(i), new zzcyx(this));
    }

    public final synchronized String zzkh() {
        try {
            zzyx zzyx = this.zzadv;
            if (zzyx == null) {
                return null;
            }
            return zzyx.getMediationAdapterClassName();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
