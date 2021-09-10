package com.camerasideas.collagemaker.message;

import android.os.Parcel;
import android.os.Parcelable;

public class UpdateCutoutBGEvent implements Parcelable {
    public static final Parcelable.Creator<UpdateCutoutBGEvent> CREATOR = new a();
    private int b;
    private boolean c;

    class a implements Parcelable.Creator<UpdateCutoutBGEvent> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public UpdateCutoutBGEvent createFromParcel(Parcel parcel) {
            return new UpdateCutoutBGEvent(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public UpdateCutoutBGEvent[] newArray(int i) {
            return new UpdateCutoutBGEvent[i];
        }
    }

    public UpdateCutoutBGEvent() {
    }

    public int a() {
        return this.b;
    }

    public boolean b() {
        return this.c;
    }

    public void c(int i) {
        this.b = i;
    }

    public void d(boolean z) {
        this.c = z;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
    }

    protected UpdateCutoutBGEvent(Parcel parcel) {
        this.b = parcel.readInt();
    }
}
