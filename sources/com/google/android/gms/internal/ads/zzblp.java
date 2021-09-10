package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;

public final class zzblp extends zzsn {
    private boolean zzbpk = false;
    private final zzxl zzbuz;
    private final zzblq zzfug;
    private final zzdil zzfuh;

    public zzblp(zzblq zzblq, zzxl zzxl, zzdil zzdil) {
        this.zzfug = zzblq;
        this.zzbuz = zzxl;
        this.zzfuh = zzdil;
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void setImmersiveMode(boolean z) {
        this.zzbpk = z;
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void zza(zzsq zzsq) {
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void zza(zv zvVar, zzsv zzsv) {
        try {
            this.zzfuh.zza(zzsv);
            this.zzfug.zza((Activity) aw.P(zvVar), zzsv, this.zzbpk);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final zzxl zzdx() {
        return this.zzbuz;
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final zzyx zzki() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyy)).booleanValue()) {
            return null;
        }
        return this.zzfug.zzakr();
    }
}
