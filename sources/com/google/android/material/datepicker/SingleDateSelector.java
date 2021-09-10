package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collection;

public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new a();
    private Long b;

    static class a implements Parcelable.Creator<SingleDateSelector> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public SingleDateSelector createFromParcel(Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.b = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public SingleDateSelector[] newArray(int i) {
            return new SingleDateSelector[i];
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection<Long> S() {
        ArrayList arrayList = new ArrayList();
        Long l = this.b;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.material.datepicker.DateSelector
    public Long V() {
        return this.b;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void b0(long j) {
        this.b = Long.valueOf(j);
    }

    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection<j2<Long, Long>> j() {
        return new ArrayList();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.b);
    }
}
