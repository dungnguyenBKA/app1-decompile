package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import defpackage.bw;
import java.util.HashMap;

public final class zzagu extends bw<zzafd> {
    public zzagu() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // defpackage.bw
    public final /* synthetic */ zzafd getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        if (queryLocalInterface instanceof zzafd) {
            return (zzafd) queryLocalInterface;
        }
        return new zzafc(iBinder);
    }

    public final zzaey zzb(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        try {
            IBinder zzb = ((zzafd) getRemoteCreatorInstance(view.getContext())).zzb(aw.Q(view), aw.Q(hashMap), aw.Q(hashMap2));
            if (zzb == null) {
                return null;
            }
            IInterface queryLocalInterface = zzb.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            if (queryLocalInterface instanceof zzaey) {
                return (zzaey) queryLocalInterface;
            }
            return new zzafa(zzb);
        } catch (RemoteException | bw.a e) {
            zzazk.zzd("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }
}
