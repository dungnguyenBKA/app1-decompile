package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.bw;

public final class zzarp extends bw<zzart> {
    public zzarp() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // defpackage.bw
    public final /* synthetic */ zzart getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        if (queryLocalInterface instanceof zzart) {
            return (zzart) queryLocalInterface;
        }
        return new zzars(iBinder);
    }

    public final zzaro zze(Activity activity) {
        try {
            IBinder zzae = ((zzart) getRemoteCreatorInstance(activity)).zzae(aw.Q(activity));
            if (zzae == null) {
                return null;
            }
            IInterface queryLocalInterface = zzae.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            if (queryLocalInterface instanceof zzaro) {
                return (zzaro) queryLocalInterface;
            }
            return new zzarq(zzae);
        } catch (RemoteException e) {
            zzazk.zzd("Could not create remote AdOverlay.", e);
            return null;
        } catch (bw.a e2) {
            zzazk.zzd("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
