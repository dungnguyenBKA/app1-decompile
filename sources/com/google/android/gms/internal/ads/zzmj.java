package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

public final class zzmj extends zzmo {
    public static final Parcelable.Creator<zzmj> CREATOR = new zzmm();
    public final String description;
    public final String text;
    private final String zzahv;

    public zzmj(String str, String str2, String str3) {
        super("COMM");
        this.zzahv = str;
        this.description = str2;
        this.text = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmj.class == obj.getClass()) {
            zzmj zzmj = (zzmj) obj;
            return zzpt.zza(this.description, zzmj.description) && zzpt.zza(this.zzahv, zzmj.zzahv) && zzpt.zza(this.text, zzmj.text);
        }
    }

    public final int hashCode() {
        String str = this.zzahv;
        int i = 0;
        int hashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.description;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.text;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return hashCode2 + i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.zzahv);
        parcel.writeString(this.text);
    }

    zzmj(Parcel parcel) {
        super("COMM");
        this.zzahv = parcel.readString();
        this.description = parcel.readString();
        this.text = parcel.readString();
    }
}
