package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;

public final class zze extends zzd implements zzc {
    zze(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final int zza(int i, String str, String str2) {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeString(str);
        zza.writeString(str2);
        Parcel zza2 = zza(1, zza);
        int readInt = zza2.readInt();
        zza2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final int zzb(int i, String str, String str2) {
        Parcel zza = zza();
        zza.writeInt(3);
        zza.writeString(str);
        zza.writeString(str2);
        Parcel zza2 = zza(5, zza);
        int readInt = zza2.readInt();
        zza2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final Bundle zzc(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel zza = zza();
        zza.writeInt(9);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeString(str3);
        zzf.zza(zza, bundle);
        Parcel zza2 = zza(11, zza);
        Bundle bundle2 = (Bundle) zzf.zza(zza2, Bundle.CREATOR);
        zza2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final Bundle zzd(int i, String str, String str2, Bundle bundle) {
        Parcel zza = zza();
        zza.writeInt(9);
        zza.writeString(str);
        zza.writeString(str2);
        zzf.zza(zza, bundle);
        Parcel zza2 = zza(902, zza);
        Bundle bundle2 = (Bundle) zzf.zza(zza2, Bundle.CREATOR);
        zza2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final Bundle zza(int i, String str, String str2, Bundle bundle) {
        Parcel zza = zza();
        zza.writeInt(3);
        zza.writeString(str);
        zza.writeString(str2);
        zzf.zza(zza, bundle);
        Parcel zza2 = zza(2, zza);
        Bundle bundle2 = (Bundle) zzf.zza(zza2, Bundle.CREATOR);
        zza2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final int zzb(int i, String str, String str2, Bundle bundle) {
        Parcel zza = zza();
        zza.writeInt(7);
        zza.writeString(str);
        zza.writeString(str2);
        zzf.zza(zza, bundle);
        Parcel zza2 = zza(10, zza);
        int readInt = zza2.readInt();
        zza2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final Bundle zzc(int i, String str, String str2, Bundle bundle) {
        Parcel zza = zza();
        zza.writeInt(9);
        zza.writeString(str);
        zza.writeString(str2);
        zzf.zza(zza, bundle);
        Parcel zza2 = zza(12, zza);
        Bundle bundle2 = (Bundle) zzf.zza(zza2, Bundle.CREATOR);
        zza2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final Bundle zza(int i, String str, String str2, String str3, String str4) {
        Parcel zza = zza();
        zza.writeInt(3);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeString(str3);
        zza.writeString(null);
        Parcel zza2 = zza(3, zza);
        Bundle bundle = (Bundle) zzf.zza(zza2, Bundle.CREATOR);
        zza2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final Bundle zzb(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel zza = zza();
        zza.writeInt(8);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeString(str3);
        zzf.zza(zza, bundle);
        Parcel zza2 = zza(801, zza);
        Bundle bundle2 = (Bundle) zzf.zza(zza2, Bundle.CREATOR);
        zza2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final Bundle zza(int i, String str, String str2, String str3) {
        Parcel zza = zza();
        zza.writeInt(3);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeString(str3);
        Parcel zza2 = zza(4, zza);
        Bundle bundle = (Bundle) zzf.zza(zza2, Bundle.CREATOR);
        zza2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final Bundle zza(int i, String str, List<String> list, String str2, String str3, String str4) {
        Parcel zza = zza();
        zza.writeInt(5);
        zza.writeString(str);
        zza.writeStringList(list);
        zza.writeString(str2);
        zza.writeString(str3);
        zza.writeString(null);
        Parcel zza2 = zza(7, zza);
        Bundle bundle = (Bundle) zzf.zza(zza2, Bundle.CREATOR);
        zza2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final Bundle zza(int i, String str, String str2, String str3, String str4, Bundle bundle) {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeString(str3);
        zza.writeString(str4);
        zzf.zza(zza, bundle);
        Parcel zza2 = zza(8, zza);
        Bundle bundle2 = (Bundle) zzf.zza(zza2, Bundle.CREATOR);
        zza2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final Bundle zza(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel zza = zza();
        zza.writeInt(6);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeString(str3);
        zzf.zza(zza, bundle);
        Parcel zza2 = zza(9, zza);
        Bundle bundle2 = (Bundle) zzf.zza(zza2, Bundle.CREATOR);
        zza2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzc
    public final Bundle zza(int i, String str, String str2, Bundle bundle, Bundle bundle2) {
        Parcel zza = zza();
        zza.writeInt(10);
        zza.writeString(str);
        zza.writeString(str2);
        zzf.zza(zza, bundle);
        zzf.zza(zza, bundle2);
        Parcel zza2 = zza(901, zza);
        Bundle bundle3 = (Bundle) zzf.zza(zza2, Bundle.CREATOR);
        zza2.recycle();
        return bundle3;
    }
}
