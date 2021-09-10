package com.facebook.ads.internal.util.parcelable;

import android.os.Parcel;
import android.os.Parcelable;

public class WrappedParcelable implements Parcelable {
    public static final Parcelable.Creator<WrappedParcelable> CREATOR = new a();
    private final byte[] b;

    class a implements Parcelable.Creator<WrappedParcelable> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public WrappedParcelable createFromParcel(Parcel parcel) {
            return new WrappedParcelable(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public WrappedParcelable[] newArray(int i) {
            return new WrappedParcelable[i];
        }
    }

    protected WrappedParcelable(Parcel parcel) {
        this.b = parcel.createByteArray();
    }

    public static byte[] marshallParcelable(Parcelable parcelable) {
        Parcel obtain = Parcel.obtain();
        obtain.writeParcelable(parcelable, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    public int describeContents() {
        return 0;
    }

    public Parcelable unwrap(ClassLoader classLoader) {
        Parcel obtain = Parcel.obtain();
        byte[] bArr = this.b;
        if (bArr == null) {
            return null;
        }
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        Parcelable readParcelable = obtain.readParcelable(classLoader);
        obtain.recycle();
        return readParcelable;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.b);
    }

    public WrappedParcelable(Parcelable parcelable) {
        this.b = marshallParcelable(parcelable);
    }

    public WrappedParcelable(byte[] bArr) {
        this.b = bArr;
    }
}
