package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;

public abstract class zzaiw extends zzgy implements zzaix {
    public zzaiw() {
        super("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheCallback");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        zza((ParcelFileDescriptor) zzgx.zza(parcel, ParcelFileDescriptor.CREATOR));
        return true;
    }
}
