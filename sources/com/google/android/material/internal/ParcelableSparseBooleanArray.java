package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;

public class ParcelableSparseBooleanArray extends SparseBooleanArray implements Parcelable {
    public static final Parcelable.Creator<ParcelableSparseBooleanArray> CREATOR = new a();

    static class a implements Parcelable.Creator<ParcelableSparseBooleanArray> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public ParcelableSparseBooleanArray createFromParcel(Parcel parcel) {
            int readInt = parcel.readInt();
            ParcelableSparseBooleanArray parcelableSparseBooleanArray = new ParcelableSparseBooleanArray(readInt);
            int[] iArr = new int[readInt];
            boolean[] zArr = new boolean[readInt];
            parcel.readIntArray(iArr);
            parcel.readBooleanArray(zArr);
            for (int i = 0; i < readInt; i++) {
                parcelableSparseBooleanArray.put(iArr[i], zArr[i]);
            }
            return parcelableSparseBooleanArray;
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public ParcelableSparseBooleanArray[] newArray(int i) {
            return new ParcelableSparseBooleanArray[i];
        }
    }

    public ParcelableSparseBooleanArray() {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int[] iArr = new int[size()];
        boolean[] zArr = new boolean[size()];
        for (int i2 = 0; i2 < size(); i2++) {
            iArr[i2] = keyAt(i2);
            zArr[i2] = valueAt(i2);
        }
        parcel.writeInt(size());
        parcel.writeIntArray(iArr);
        parcel.writeBooleanArray(zArr);
    }

    public ParcelableSparseBooleanArray(int i) {
        super(i);
    }
}
