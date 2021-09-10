package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

public final class zzawc {
    public static zzavm zzd(Context context, String str, zzane zzane) {
        try {
            IBinder zzd = ((zzavs) zzazj.zza(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", zzawf.zzbyi)).zzd(aw.Q(context), str, zzane, 204204000);
            if (zzd == null) {
                return null;
            }
            IInterface queryLocalInterface = zzd.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            if (queryLocalInterface instanceof zzavm) {
                return (zzavm) queryLocalInterface;
            }
            return new zzavo(zzd);
        } catch (RemoteException | zzazl e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
