package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;

public final class zzmh implements Parcelable {
    public static final Parcelable.Creator<zzmh> CREATOR = new zzmg();
    private final zza[] zzbdh;

    public interface zza extends Parcelable {
    }

    public zzmh(List<? extends zza> list) {
        zza[] zzaArr = new zza[list.size()];
        this.zzbdh = zzaArr;
        list.toArray(zzaArr);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzmh.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.zzbdh, ((zzmh) obj).zzbdh);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzbdh);
    }

    public final int length() {
        return this.zzbdh.length;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zzbdh.length);
        for (zza zza2 : this.zzbdh) {
            parcel.writeParcelable(zza2, 0);
        }
    }

    public final zza zzay(int i) {
        return this.zzbdh[i];
    }

    zzmh(Parcel parcel) {
        this.zzbdh = new zza[parcel.readInt()];
        int i = 0;
        while (true) {
            zza[] zzaArr = this.zzbdh;
            if (i < zzaArr.length) {
                zzaArr[i] = (zza) parcel.readParcelable(zza.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }
}
