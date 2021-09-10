package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ads.zzcf;

public final class zzdum extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdum> CREATOR = new zzdul();
    private final int versionCode;
    private zzcf.zza zzhua = null;
    private byte[] zzhub;

    zzdum(int i, byte[] bArr) {
        this.versionCode = i;
        this.zzhub = bArr;
        zzayj();
    }

    private final void zzayj() {
        zzcf.zza zza = this.zzhua;
        if (zza == null && this.zzhub != null) {
            return;
        }
        if (zza != null && this.zzhub == null) {
            return;
        }
        if (zza != null && this.zzhub != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        } else if (zza == null && this.zzhub == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        } else {
            throw new IllegalStateException("Impossible");
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.versionCode);
        byte[] bArr = this.zzhub;
        if (bArr == null) {
            bArr = this.zzhua.toByteArray();
        }
        b.f(parcel, 2, bArr, false);
        b.b(parcel, a);
    }

    public final zzcf.zza zzayi() {
        if (!(this.zzhua != null)) {
            try {
                this.zzhua = zzcf.zza.zza(this.zzhub, zzeko.zzbhw());
                this.zzhub = null;
            } catch (zzelo | NullPointerException e) {
                throw new IllegalStateException(e);
            }
        }
        zzayj();
        return this.zzhua;
    }
}
