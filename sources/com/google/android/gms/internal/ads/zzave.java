package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;

public abstract class zzave extends zzgy implements zzavf {
    public zzave() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    public static zzavf zzap(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        if (queryLocalInterface instanceof zzavf) {
            return (zzavf) queryLocalInterface;
        }
        return new zzavh(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                zzaf(zv.a.O(parcel.readStrongBinder()));
                break;
            case 2:
                zzd(zv.a.O(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                zzag(zv.a.O(parcel.readStrongBinder()));
                break;
            case 4:
                zzah(zv.a.O(parcel.readStrongBinder()));
                break;
            case 5:
                zzai(zv.a.O(parcel.readStrongBinder()));
                break;
            case 6:
                zzaj(zv.a.O(parcel.readStrongBinder()));
                break;
            case 7:
                zza(zv.a.O(parcel.readStrongBinder()), (zzavj) zzgx.zza(parcel, zzavj.CREATOR));
                break;
            case 8:
                zzak(zv.a.O(parcel.readStrongBinder()));
                break;
            case 9:
                zze(zv.a.O(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                zzal(zv.a.O(parcel.readStrongBinder()));
                break;
            case 11:
                zzam(zv.a.O(parcel.readStrongBinder()));
                break;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                zzb((Bundle) zzgx.zza(parcel, Bundle.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
