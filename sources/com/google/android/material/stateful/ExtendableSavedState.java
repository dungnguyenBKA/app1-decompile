package com.google.android.material.stateful;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;

public class ExtendableSavedState extends AbsSavedState {
    public static final Parcelable.Creator<ExtendableSavedState> CREATOR = new a();
    public final e0<String, Bundle> d;

    static class a implements Parcelable.ClassLoaderCreator<ExtendableSavedState> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public ExtendableSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new ExtendableSavedState(parcel, classLoader, null);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new ExtendableSavedState[i];
        }

        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new ExtendableSavedState(parcel, null, null);
        }
    }

    public ExtendableSavedState(Parcelable parcelable) {
        super(parcelable);
        this.d = new e0<>();
    }

    public String toString() {
        StringBuilder q = ic.q("ExtendableSavedState{");
        q.append(Integer.toHexString(System.identityHashCode(this)));
        q.append(" states=");
        q.append(this.d);
        q.append("}");
        return q.toString();
    }

    @Override // androidx.customview.view.AbsSavedState
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        int size = this.d.size();
        parcel.writeInt(size);
        String[] strArr = new String[size];
        Bundle[] bundleArr = new Bundle[size];
        for (int i2 = 0; i2 < size; i2++) {
            strArr[i2] = this.d.h(i2);
            bundleArr[i2] = this.d.l(i2);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    ExtendableSavedState(Parcel parcel, ClassLoader classLoader, a aVar) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[readInt];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.d = new e0<>(readInt);
        for (int i = 0; i < readInt; i++) {
            this.d.put(strArr[i], bundleArr[i]);
        }
    }
}
