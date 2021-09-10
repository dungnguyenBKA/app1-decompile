package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.bw;

public final class zzvj extends bw<zzxq> {
    public zzvj() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // defpackage.bw
    public final /* synthetic */ zzxq getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        if (queryLocalInterface instanceof zzxq) {
            return (zzxq) queryLocalInterface;
        }
        return new zzxp(iBinder);
    }

    public final zzxl zza(Context context, zzvs zzvs, String str, zzane zzane, int i) {
        try {
            IBinder zza = ((zzxq) getRemoteCreatorInstance(context)).zza(aw.Q(context), zzvs, str, zzane, 204204000, i);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzxl) {
                return (zzxl) queryLocalInterface;
            }
            return new zzxn(zza);
        } catch (RemoteException | bw.a e) {
            zzazk.zzb("Could not create remote AdManager.", e);
            return null;
        }
    }
}
