package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.bw;

public final class zzvk extends bw<zzxj> {
    public zzvk() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // defpackage.bw
    public final /* synthetic */ zzxj getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        if (queryLocalInterface instanceof zzxj) {
            return (zzxj) queryLocalInterface;
        }
        return new zzxm(iBinder);
    }

    public final zzxi zza(Context context, String str, zzane zzane) {
        try {
            IBinder zzc = ((zzxj) getRemoteCreatorInstance(context)).zzc(aw.Q(context), str, zzane, 204204000);
            if (zzc == null) {
                return null;
            }
            IInterface queryLocalInterface = zzc.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (queryLocalInterface instanceof zzxi) {
                return (zzxi) queryLocalInterface;
            }
            return new zzxk(zzc);
        } catch (RemoteException | bw.a e) {
            zzazk.zzd("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }
}
