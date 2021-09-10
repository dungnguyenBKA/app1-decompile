package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

public final class zzmi extends zzmo {
    public static final Parcelable.Creator<zzmi> CREATOR = new zzmk();
    private final String description;
    private final String mimeType;
    private final int zzbdi;
    private final byte[] zzbdj;

    public zzmi(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.mimeType = str;
        this.description = null;
        this.zzbdi = 3;
        this.zzbdj = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmi.class == obj.getClass()) {
            zzmi zzmi = (zzmi) obj;
            return this.zzbdi == zzmi.zzbdi && zzpt.zza(this.mimeType, zzmi.mimeType) && zzpt.zza(this.description, zzmi.description) && Arrays.equals(this.zzbdj, zzmi.zzbdj);
        }
    }

    public final int hashCode() {
        int i = (this.zzbdi + 527) * 31;
        String str = this.mimeType;
        int i2 = 0;
        int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.description;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return Arrays.hashCode(this.zzbdj) + ((hashCode + i2) * 31);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.zzbdi);
        parcel.writeByteArray(this.zzbdj);
    }

    zzmi(Parcel parcel) {
        super("APIC");
        this.mimeType = parcel.readString();
        this.description = parcel.readString();
        this.zzbdi = parcel.readInt();
        this.zzbdj = parcel.createByteArray();
    }
}
