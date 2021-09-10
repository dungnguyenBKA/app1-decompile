package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;

public final class zzsw {
    private final Context context;
    @AppOpenAd.AppOpenAdOrientation
    private final int orientation;
    private final zzvq zzact;
    private final zzzk zzacw;
    private final String zzbut;
    private zzxl zzbuz;
    private final AppOpenAd.AppOpenAdLoadCallback zzbva;
    private final zzanf zzbvb = new zzanf();

    public zzsw(Context context2, String str, zzzk zzzk, @AppOpenAd.AppOpenAdOrientation int i, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.context = context2;
        this.zzbut = str;
        this.zzacw = zzzk;
        this.orientation = i;
        this.zzbva = appOpenAdLoadCallback;
        this.zzact = zzvq.zzcif;
    }

    public final void zzmu() {
        try {
            this.zzbuz = zzwr.zzqo().zza(this.context, zzvs.zzqg(), this.zzbut, this.zzbvb);
            this.zzbuz.zza(new zzvx(this.orientation));
            this.zzbuz.zza(new zzsg(this.zzbva, this.zzbut));
            this.zzbuz.zza(zzvq.zza(this.context, this.zzacw));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
