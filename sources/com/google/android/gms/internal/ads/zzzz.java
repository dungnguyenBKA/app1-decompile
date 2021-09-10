package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.bw;

public final class zzzz extends bw<zzyh> {
    public zzzz() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // defpackage.bw
    public final /* synthetic */ zzyh getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        if (queryLocalInterface instanceof zzyh) {
            return (zzyh) queryLocalInterface;
        }
        return new zzyk(iBinder);
    }

    public final zzyg zzh(Context context) {
        try {
            IBinder zzb = ((zzyh) getRemoteCreatorInstance(context)).zzb(aw.Q(context), 204204000);
            if (zzb == null) {
                return null;
            }
            IInterface queryLocalInterface = zzb.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (queryLocalInterface instanceof zzyg) {
                return (zzyg) queryLocalInterface;
            }
            return new zzyi(zzb);
        } catch (RemoteException | bw.a e) {
            zzazk.zzd("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
