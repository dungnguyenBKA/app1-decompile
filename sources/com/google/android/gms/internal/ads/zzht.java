package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import com.vungle.warren.error.VungleException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class zzht implements Parcelable {
    public static final Parcelable.Creator<zzht> CREATOR = new zzhs();
    public final int height;
    private final String id;
    public final int width;
    public final int zzaha;
    public final String zzahb;
    private final zzmh zzahc;
    public final String zzahd;
    public final String zzahe;
    public final int zzahf;
    public final List<byte[]> zzahg;
    public final zzjo zzahh;
    public final float zzahi;
    public final int zzahj;
    public final float zzahk;
    private final int zzahl;
    private final byte[] zzahm;
    private final zzpy zzahn;
    public final int zzaho;
    public final int zzahp;
    public final int zzahq;
    private final int zzahr;
    private final int zzahs;
    public final long zzaht;
    public final int zzahu;
    public final String zzahv;
    private final int zzahw;
    private int zzahx;

    private zzht(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, zzpy zzpy, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, zzjo zzjo, zzmh zzmh) {
        this.id = str;
        this.zzahd = str2;
        this.zzahe = str3;
        this.zzahb = str4;
        this.zzaha = i;
        this.zzahf = i2;
        this.width = i3;
        this.height = i4;
        this.zzahi = f;
        this.zzahj = i5;
        this.zzahk = f2;
        this.zzahm = bArr;
        this.zzahl = i6;
        this.zzahn = zzpy;
        this.zzaho = i7;
        this.zzahp = i8;
        this.zzahq = i9;
        this.zzahr = i10;
        this.zzahs = i11;
        this.zzahu = i12;
        this.zzahv = str5;
        this.zzahw = i13;
        this.zzaht = j;
        this.zzahg = list == null ? Collections.emptyList() : list;
        this.zzahh = zzjo;
        this.zzahc = zzmh;
    }

    public static zzht zza(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, zzpy zzpy, zzjo zzjo) {
        return new zzht(str, null, str2, null, -1, i2, i3, i4, -1.0f, i5, f2, bArr, i6, zzpy, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, zzjo, null);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzht.class == obj.getClass()) {
            zzht zzht = (zzht) obj;
            if (this.zzaha == zzht.zzaha && this.zzahf == zzht.zzahf && this.width == zzht.width && this.height == zzht.height && this.zzahi == zzht.zzahi && this.zzahj == zzht.zzahj && this.zzahk == zzht.zzahk && this.zzahl == zzht.zzahl && this.zzaho == zzht.zzaho && this.zzahp == zzht.zzahp && this.zzahq == zzht.zzahq && this.zzahr == zzht.zzahr && this.zzahs == zzht.zzahs && this.zzaht == zzht.zzaht && this.zzahu == zzht.zzahu && zzpt.zza(this.id, zzht.id) && zzpt.zza(this.zzahv, zzht.zzahv) && this.zzahw == zzht.zzahw && zzpt.zza(this.zzahd, zzht.zzahd) && zzpt.zza(this.zzahe, zzht.zzahe) && zzpt.zza(this.zzahb, zzht.zzahb) && zzpt.zza(this.zzahh, zzht.zzahh) && zzpt.zza(this.zzahc, zzht.zzahc) && zzpt.zza(this.zzahn, zzht.zzahn) && Arrays.equals(this.zzahm, zzht.zzahm) && this.zzahg.size() == zzht.zzahg.size()) {
                for (int i = 0; i < this.zzahg.size(); i++) {
                    if (!Arrays.equals(this.zzahg.get(i), zzht.zzahg.get(i))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.zzahx == 0) {
            String str = this.id;
            int i = 0;
            int hashCode = ((str == null ? 0 : str.hashCode()) + 527) * 31;
            String str2 = this.zzahd;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.zzahe;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.zzahb;
            int hashCode4 = (((((((((((hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.zzaha) * 31) + this.width) * 31) + this.height) * 31) + this.zzaho) * 31) + this.zzahp) * 31;
            String str5 = this.zzahv;
            int hashCode5 = (((hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.zzahw) * 31;
            zzjo zzjo = this.zzahh;
            int hashCode6 = (hashCode5 + (zzjo == null ? 0 : zzjo.hashCode())) * 31;
            zzmh zzmh = this.zzahc;
            if (zzmh != null) {
                i = zzmh.hashCode();
            }
            this.zzahx = hashCode6 + i;
        }
        return this.zzahx;
    }

    public final String toString() {
        String str = this.id;
        String str2 = this.zzahd;
        String str3 = this.zzahe;
        int i = this.zzaha;
        String str4 = this.zzahv;
        int i2 = this.width;
        int i3 = this.height;
        float f = this.zzahi;
        int i4 = this.zzaho;
        int i5 = this.zzahp;
        StringBuilder p = ic.p(ic.m(str4, ic.m(str3, ic.m(str2, ic.m(str, 100)))), "Format(", str, ", ", str2);
        p.append(", ");
        p.append(str3);
        p.append(", ");
        p.append(i);
        p.append(", ");
        p.append(str4);
        p.append(", [");
        p.append(i2);
        p.append(", ");
        p.append(i3);
        p.append(", ");
        p.append(f);
        p.append("], [");
        p.append(i4);
        p.append(", ");
        p.append(i5);
        p.append("])");
        return p.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.zzahd);
        parcel.writeString(this.zzahe);
        parcel.writeString(this.zzahb);
        parcel.writeInt(this.zzaha);
        parcel.writeInt(this.zzahf);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeFloat(this.zzahi);
        parcel.writeInt(this.zzahj);
        parcel.writeFloat(this.zzahk);
        parcel.writeInt(this.zzahm != null ? 1 : 0);
        byte[] bArr = this.zzahm;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.zzahl);
        parcel.writeParcelable(this.zzahn, i);
        parcel.writeInt(this.zzaho);
        parcel.writeInt(this.zzahp);
        parcel.writeInt(this.zzahq);
        parcel.writeInt(this.zzahr);
        parcel.writeInt(this.zzahs);
        parcel.writeInt(this.zzahu);
        parcel.writeString(this.zzahv);
        parcel.writeInt(this.zzahw);
        parcel.writeLong(this.zzaht);
        int size = this.zzahg.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.zzahg.get(i2));
        }
        parcel.writeParcelable(this.zzahh, 0);
        parcel.writeParcelable(this.zzahc, 0);
    }

    public final zzht zzb(int i, int i2) {
        return new zzht(this.id, this.zzahd, this.zzahe, this.zzahb, this.zzaha, this.zzahf, this.width, this.height, this.zzahi, this.zzahj, this.zzahk, this.zzahm, this.zzahl, this.zzahn, this.zzaho, this.zzahp, this.zzahq, i, i2, this.zzahu, this.zzahv, this.zzahw, this.zzaht, this.zzahg, this.zzahh, this.zzahc);
    }

    public final zzht zzds(long j) {
        return new zzht(this.id, this.zzahd, this.zzahe, this.zzahb, this.zzaha, this.zzahf, this.width, this.height, this.zzahi, this.zzahj, this.zzahk, this.zzahm, this.zzahl, this.zzahn, this.zzaho, this.zzahp, this.zzahq, this.zzahr, this.zzahs, this.zzahu, this.zzahv, this.zzahw, j, this.zzahg, this.zzahh, this.zzahc);
    }

    public final int zzez() {
        int i;
        int i2 = this.width;
        if (i2 == -1 || (i = this.height) == -1) {
            return -1;
        }
        return i2 * i;
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(VungleException.NO_SPACE_TO_INIT)
    public final MediaFormat zzfa() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.zzahe);
        String str = this.zzahv;
        if (str != null) {
            mediaFormat.setString("language", str);
        }
        zza(mediaFormat, "max-input-size", this.zzahf);
        zza(mediaFormat, "width", this.width);
        zza(mediaFormat, "height", this.height);
        float f = this.zzahi;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        zza(mediaFormat, "rotation-degrees", this.zzahj);
        zza(mediaFormat, "channel-count", this.zzaho);
        zza(mediaFormat, "sample-rate", this.zzahp);
        zza(mediaFormat, "encoder-delay", this.zzahr);
        zza(mediaFormat, "encoder-padding", this.zzahs);
        for (int i = 0; i < this.zzahg.size(); i++) {
            mediaFormat.setByteBuffer(ic.C(15, "csd-", i), ByteBuffer.wrap(this.zzahg.get(i)));
        }
        zzpy zzpy = this.zzahn;
        if (zzpy != null) {
            zza(mediaFormat, "color-transfer", zzpy.zzarw);
            zza(mediaFormat, "color-standard", zzpy.zzarv);
            zza(mediaFormat, "color-range", zzpy.zzarx);
            byte[] bArr = zzpy.zzbkt;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    public final zzht zzv(int i) {
        return new zzht(this.id, this.zzahd, this.zzahe, this.zzahb, this.zzaha, i, this.width, this.height, this.zzahi, this.zzahj, this.zzahk, this.zzahm, this.zzahl, this.zzahn, this.zzaho, this.zzahp, this.zzahq, this.zzahr, this.zzahs, this.zzahu, this.zzahv, this.zzahw, this.zzaht, this.zzahg, this.zzahh, this.zzahc);
    }

    public static zzht zza(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, zzjo zzjo, int i5, String str4) {
        return zza(str, str2, null, -1, -1, i3, i4, -1, null, zzjo, 0, str4);
    }

    public static zzht zza(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, zzjo zzjo, int i6, String str4) {
        return new zzht(str, null, str2, null, -1, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, -1, -1, i6, str4, -1, Long.MAX_VALUE, list, zzjo, null);
    }

    public static zzht zza(String str, String str2, String str3, int i, int i2, String str4, zzjo zzjo) {
        return zza(str, str2, null, -1, i2, str4, -1, zzjo, Long.MAX_VALUE, Collections.emptyList());
    }

    public static zzht zza(String str, String str2, String str3, int i, int i2, String str4, int i3, zzjo zzjo, long j, List<byte[]> list) {
        return new zzht(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, -1, j, list, zzjo, null);
    }

    public static zzht zza(String str, String str2, String str3, int i, List<byte[]> list, String str4, zzjo zzjo) {
        return new zzht(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, zzjo, null);
    }

    public static zzht zza(String str, String str2, long j) {
        return new zzht(null, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, null, null);
    }

    public static zzht zza(String str, String str2, String str3, int i, zzjo zzjo) {
        return new zzht(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, zzjo, null);
    }

    public final zzht zza(zzjo zzjo) {
        return new zzht(this.id, this.zzahd, this.zzahe, this.zzahb, this.zzaha, this.zzahf, this.width, this.height, this.zzahi, this.zzahj, this.zzahk, this.zzahm, this.zzahl, this.zzahn, this.zzaho, this.zzahp, this.zzahq, this.zzahr, this.zzahs, this.zzahu, this.zzahv, this.zzahw, this.zzaht, this.zzahg, zzjo, this.zzahc);
    }

    public final zzht zza(zzmh zzmh) {
        return new zzht(this.id, this.zzahd, this.zzahe, this.zzahb, this.zzaha, this.zzahf, this.width, this.height, this.zzahi, this.zzahj, this.zzahk, this.zzahm, this.zzahl, this.zzahn, this.zzaho, this.zzahp, this.zzahq, this.zzahr, this.zzahs, this.zzahu, this.zzahv, this.zzahw, this.zzaht, this.zzahg, this.zzahh, zzmh);
    }

    @TargetApi(VungleException.NO_SPACE_TO_INIT)
    private static void zza(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    zzht(Parcel parcel) {
        this.id = parcel.readString();
        this.zzahd = parcel.readString();
        this.zzahe = parcel.readString();
        this.zzahb = parcel.readString();
        this.zzaha = parcel.readInt();
        this.zzahf = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.zzahi = parcel.readFloat();
        this.zzahj = parcel.readInt();
        this.zzahk = parcel.readFloat();
        this.zzahm = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.zzahl = parcel.readInt();
        this.zzahn = (zzpy) parcel.readParcelable(zzpy.class.getClassLoader());
        this.zzaho = parcel.readInt();
        this.zzahp = parcel.readInt();
        this.zzahq = parcel.readInt();
        this.zzahr = parcel.readInt();
        this.zzahs = parcel.readInt();
        this.zzahu = parcel.readInt();
        this.zzahv = parcel.readString();
        this.zzahw = parcel.readInt();
        this.zzaht = parcel.readLong();
        int readInt = parcel.readInt();
        this.zzahg = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.zzahg.add(parcel.createByteArray());
        }
        this.zzahh = (zzjo) parcel.readParcelable(zzjo.class.getClassLoader());
        this.zzahc = (zzmh) parcel.readParcelable(zzmh.class.getClassLoader());
    }
}
