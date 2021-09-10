package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;

public abstract class zzarr extends zzgy implements zzaro {
    public zzarr() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    public static zzaro zzai(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
        if (queryLocalInterface instanceof zzaro) {
            return (zzaro) queryLocalInterface;
        }
        return new zzarq(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                onCreate((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                onRestart();
                parcel2.writeNoException();
                return true;
            case 3:
                onStart();
                parcel2.writeNoException();
                return true;
            case 4:
                onResume();
                parcel2.writeNoException();
                return true;
            case 5:
                onPause();
                parcel2.writeNoException();
                return true;
            case 6:
                Bundle bundle = (Bundle) zzgx.zza(parcel, Bundle.CREATOR);
                onSaveInstanceState(bundle);
                parcel2.writeNoException();
                zzgx.zzb(parcel2, bundle);
                return true;
            case 7:
                onStop();
                parcel2.writeNoException();
                return true;
            case 8:
                onDestroy();
                parcel2.writeNoException();
                return true;
            case 9:
                zzdp();
                parcel2.writeNoException();
                return true;
            case 10:
                onBackPressed();
                parcel2.writeNoException();
                return true;
            case 11:
                boolean zzvw = zzvw();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, zzvw);
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                onActivityResult(parcel.readInt(), parcel.readInt(), (Intent) zzgx.zza(parcel, Intent.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                zzad(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                onUserLeaveHint();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
