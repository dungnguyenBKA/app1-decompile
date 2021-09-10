package com.camerasideas.collagemaker.appdata;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

public class MediaFileInfo implements Parcelable {
    public static final Parcelable.Creator<MediaFileInfo> CREATOR = new a();
    private Uri b;
    private String c;
    private String d;
    private String e;
    private int f;
    private int g;
    private long h;
    private long i;
    private String j;
    private String k;
    private String l;
    private long m;
    private long n;
    private boolean o;
    private String p;
    private String q;
    private boolean r;
    private int s;
    private int t;

    class a implements Parcelable.Creator<MediaFileInfo> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public MediaFileInfo createFromParcel(Parcel parcel) {
            return new MediaFileInfo(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public MediaFileInfo[] newArray(int i) {
            return new MediaFileInfo[i];
        }
    }

    public MediaFileInfo(MediaFileInfo mediaFileInfo) {
        this.f = -1;
        this.h = -1;
        this.j = null;
        this.m = -1;
        this.n = -1;
        this.s = 0;
        this.t = -1;
        this.b = mediaFileInfo.b;
        this.c = mediaFileInfo.c;
        this.d = mediaFileInfo.d;
        this.e = mediaFileInfo.e;
        this.f = mediaFileInfo.f;
        this.g = mediaFileInfo.g;
        this.h = mediaFileInfo.h;
        this.i = mediaFileInfo.i;
        this.j = mediaFileInfo.j;
        this.k = mediaFileInfo.k;
        this.l = mediaFileInfo.l;
        this.m = mediaFileInfo.m;
        this.o = mediaFileInfo.o;
        this.p = mediaFileInfo.p;
        this.q = mediaFileInfo.q;
        this.r = mediaFileInfo.r;
        this.s = mediaFileInfo.s;
        this.t = mediaFileInfo.t;
    }

    public boolean a() {
        int i2 = this.g;
        return i2 == 3 || i2 == 4;
    }

    public String b() {
        return this.k;
    }

    public long c() {
        return this.i;
    }

    public String d() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public Uri e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof MediaFileInfo) {
            MediaFileInfo mediaFileInfo = (MediaFileInfo) obj;
            Uri uri = this.b;
            if ((uri != null && mediaFileInfo.b != null && TextUtils.equals(uri.toString(), mediaFileInfo.b.toString())) || TextUtils.equals(this.c, mediaFileInfo.c)) {
                return true;
            }
            String str = this.p;
            if (str != null && TextUtils.equals(mediaFileInfo.p, str)) {
                return true;
            }
        }
        return super.equals(obj);
    }

    public int f() {
        return this.g;
    }

    public int g() {
        return this.s;
    }

    public String h() {
        return this.p;
    }

    public boolean i() {
        return this.s > 0;
    }

    public boolean k() {
        return this.r;
    }

    public boolean l() {
        return this.o;
    }

    public void m(String str) {
        this.k = str;
    }

    public void n(long j2) {
        this.i = j2;
    }

    public void o(String str) {
        this.c = str;
    }

    public void p(Uri uri) {
        this.b = uri;
    }

    public void q(int i2) {
        this.g = i2;
    }

    public void r(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        this.s = i2;
    }

    public String toString() {
        Uri uri = this.b;
        return uri != null ? uri.toString() : "";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.b, i2);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeLong(this.h);
        parcel.writeLong(this.i);
        parcel.writeString(this.j);
        parcel.writeString(this.k);
        parcel.writeString(this.l);
        parcel.writeLong(this.m);
        parcel.writeLong(this.n);
        parcel.writeByte(this.o ? (byte) 1 : 0);
        parcel.writeString(this.p);
        parcel.writeString(this.q);
        parcel.writeByte(this.r ? (byte) 1 : 0);
        parcel.writeInt(this.s);
        parcel.writeInt(this.t);
    }

    public MediaFileInfo(Uri uri, String str, int i2) {
        this.f = -1;
        this.h = -1;
        this.j = null;
        this.m = -1;
        this.n = -1;
        this.s = 0;
        this.t = -1;
        this.b = uri;
        this.c = str;
        this.g = i2;
    }

    public MediaFileInfo() {
        this.f = -1;
        this.h = -1;
        this.j = null;
        this.m = -1;
        this.n = -1;
        this.s = 0;
        this.t = -1;
    }

    protected MediaFileInfo(Parcel parcel) {
        this.f = -1;
        this.h = -1;
        this.j = null;
        this.m = -1;
        this.n = -1;
        boolean z = false;
        this.s = 0;
        this.t = -1;
        this.b = (Uri) parcel.readParcelable(MediaFileInfo.class.getClassLoader());
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readLong();
        this.i = parcel.readLong();
        this.j = parcel.readString();
        this.k = parcel.readString();
        this.l = parcel.readString();
        this.m = parcel.readLong();
        this.n = parcel.readLong();
        this.o = parcel.readByte() != 0;
        this.p = parcel.readString();
        this.q = parcel.readString();
        this.r = parcel.readByte() != 0 ? true : z;
        this.s = parcel.readInt();
        this.t = parcel.readInt();
    }
}
