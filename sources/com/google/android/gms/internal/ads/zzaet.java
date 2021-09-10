package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;

public final class zzaet extends zzgw implements zzaer {
    zzaet(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final int getHeight() {
        Parcel zza = zza(5, zzdo());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final double getScale() {
        Parcel zza = zza(3, zzdo());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final Uri getUri() {
        Parcel zza = zza(2, zzdo());
        Uri uri = (Uri) zzgx.zza(zza, Uri.CREATOR);
        zza.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final int getWidth() {
        Parcel zza = zza(4, zzdo());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final zv zzti() {
        return ic.A(zza(1, zzdo()));
    }
}
