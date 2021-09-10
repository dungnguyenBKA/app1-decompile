package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.vungle.warren.error.VungleException;
import defpackage.zv;

public abstract class zzxx extends zzgy implements zzxy {
    public zzxx() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                zzxl zza = zza(zv.a.O(parcel.readStrongBinder()), (zzvs) zzgx.zza(parcel, zzvs.CREATOR), parcel.readString(), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza);
                return true;
            case 2:
                zzxl zzb = zzb(zv.a.O(parcel.readStrongBinder()), (zzvs) zzgx.zza(parcel, zzvs.CREATOR), parcel.readString(), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzb);
                return true;
            case 3:
                zzxi zza2 = zza(zv.a.O(parcel.readStrongBinder()), parcel.readString(), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza2);
                return true;
            case 4:
                zzyg zzc = zzc(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzc);
                return true;
            case 5:
                zzaev zza3 = zza(zv.a.O(parcel.readStrongBinder()), zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza3);
                return true;
            case 6:
                zzaur zza4 = zza(zv.a.O(parcel.readStrongBinder()), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza4);
                return true;
            case 7:
                zzasd zzd = zzd(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzd);
                return true;
            case 8:
                zzaro zzb2 = zzb(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzb2);
                return true;
            case 9:
                zzyg zza5 = zza(zv.a.O(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza5);
                return true;
            case 10:
                zzxl zza6 = zza(zv.a.O(parcel.readStrongBinder()), (zzvs) zzgx.zza(parcel, zzvs.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza6);
                return true;
            case 11:
                zzaey zza7 = zza(zv.a.O(parcel.readStrongBinder()), zv.a.O(parcel.readStrongBinder()), zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza7);
                return true;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                zzavm zzb3 = zzb(zv.a.O(parcel.readStrongBinder()), parcel.readString(), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzb3);
                return true;
            case 13:
                zzxl zzc2 = zzc(zv.a.O(parcel.readStrongBinder()), (zzvs) zzgx.zza(parcel, zzvs.CREATOR), parcel.readString(), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzc2);
                return true;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                zzaxy zzb4 = zzb(zv.a.O(parcel.readStrongBinder()), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzb4);
                return true;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                zzarf zzc3 = zzc(zv.a.O(parcel.readStrongBinder()), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzc3);
                return true;
            default:
                return false;
        }
    }
}
