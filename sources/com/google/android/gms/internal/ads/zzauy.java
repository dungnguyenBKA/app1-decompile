package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.bw;

public final class zzauy extends bw<zzaus> {
    public zzauy() {
        super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // defpackage.bw
    public final /* synthetic */ zzaus getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
        if (queryLocalInterface instanceof zzaus) {
            return (zzaus) queryLocalInterface;
        }
        return new zzauv(iBinder);
    }

    public final zzaur zzc(Context context, zzane zzane) {
        try {
            IBinder zzd = ((zzaus) getRemoteCreatorInstance(context)).zzd(aw.Q(context), zzane, 204204000);
            if (zzd == null) {
                return null;
            }
            IInterface queryLocalInterface = zzd.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
            if (queryLocalInterface instanceof zzaur) {
                return (zzaur) queryLocalInterface;
            }
            return new zzaut(zzd);
        } catch (RemoteException | bw.a e) {
            zzazk.zzd("Could not get remote RewardedVideoAd.", e);
            return null;
        }
    }
}
