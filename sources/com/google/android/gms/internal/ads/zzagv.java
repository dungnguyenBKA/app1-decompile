package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import defpackage.bw;

public final class zzagv extends bw<zzaew> {
    public zzagv() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // defpackage.bw
    public final /* synthetic */ zzaew getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        if (queryLocalInterface instanceof zzaew) {
            return (zzaew) queryLocalInterface;
        }
        return new zzaez(iBinder);
    }

    public final zzaev zzb(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            IBinder zza = ((zzaew) getRemoteCreatorInstance(context)).zza(aw.Q(context), aw.Q(frameLayout), aw.Q(frameLayout2), 204204000);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            if (queryLocalInterface instanceof zzaev) {
                return (zzaev) queryLocalInterface;
            }
            return new zzaex(zza);
        } catch (RemoteException | bw.a e) {
            zzazk.zzd("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }
}
