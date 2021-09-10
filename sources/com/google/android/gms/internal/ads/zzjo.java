package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;

public final class zzjo implements Parcelable, Comparator<zza> {
    public static final Parcelable.Creator<zzjo> CREATOR = new zzjq();
    private int zzahx;
    private final zza[] zzaoi;
    public final int zzaoj;

    public static final class zza implements Parcelable {
        public static final Parcelable.Creator<zza> CREATOR = new zzjs();
        private final byte[] data;
        private final String mimeType;
        private final UUID uuid;
        private int zzahx;
        public final boolean zzaon;

        public zza(UUID uuid2, String str, byte[] bArr) {
            this(uuid2, str, bArr, false);
        }

        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            zza zza = (zza) obj;
            return this.mimeType.equals(zza.mimeType) && zzpt.zza(this.uuid, zza.uuid) && Arrays.equals(this.data, zza.data);
        }

        public final int hashCode() {
            if (this.zzahx == 0) {
                this.zzahx = Arrays.hashCode(this.data) + ic.w(this.mimeType, this.uuid.hashCode() * 31, 31);
            }
            return this.zzahx;
        }

        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.uuid.getMostSignificantBits());
            parcel.writeLong(this.uuid.getLeastSignificantBits());
            parcel.writeString(this.mimeType);
            parcel.writeByteArray(this.data);
            parcel.writeByte(this.zzaon ? (byte) 1 : 0);
        }

        private zza(UUID uuid2, String str, byte[] bArr, boolean z) {
            this.uuid = (UUID) zzpg.checkNotNull(uuid2);
            this.mimeType = (String) zzpg.checkNotNull(str);
            this.data = (byte[]) zzpg.checkNotNull(bArr);
            this.zzaon = false;
        }

        zza(Parcel parcel) {
            this.uuid = new UUID(parcel.readLong(), parcel.readLong());
            this.mimeType = parcel.readString();
            this.data = parcel.createByteArray();
            this.zzaon = parcel.readByte() != 0;
        }
    }

    public zzjo(List<zza> list) {
        this(false, (zza[]) list.toArray(new zza[list.size()]));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zza zza2, zza zza3) {
        zza zza4 = zza2;
        zza zza5 = zza3;
        UUID uuid = zzhf.UUID_NIL;
        if (uuid.equals(zza4.uuid)) {
            return uuid.equals(zza5.uuid) ? 0 : 1;
        }
        return zza4.uuid.compareTo(zza5.uuid);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzjo.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.zzaoi, ((zzjo) obj).zzaoi);
    }

    public final int hashCode() {
        if (this.zzahx == 0) {
            this.zzahx = Arrays.hashCode(this.zzaoi);
        }
        return this.zzahx;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.zzaoi, 0);
    }

    public final zza zzac(int i) {
        return this.zzaoi[i];
    }

    public zzjo(zza... zzaArr) {
        this(true, zzaArr);
    }

    private zzjo(boolean z, zza... zzaArr) {
        zzaArr = z ? (zza[]) zzaArr.clone() : zzaArr;
        Arrays.sort(zzaArr, this);
        for (int i = 1; i < zzaArr.length; i++) {
            if (zzaArr[i - 1].uuid.equals(zzaArr[i].uuid)) {
                String valueOf = String.valueOf(zzaArr[i].uuid);
                throw new IllegalArgumentException(ic.d(valueOf.length() + 25, "Duplicate data for uuid: ", valueOf));
            }
        }
        this.zzaoi = zzaArr;
        this.zzaoj = zzaArr.length;
    }

    zzjo(Parcel parcel) {
        zza[] zzaArr = (zza[]) parcel.createTypedArray(zza.CREATOR);
        this.zzaoi = zzaArr;
        this.zzaoj = zzaArr.length;
    }
}
