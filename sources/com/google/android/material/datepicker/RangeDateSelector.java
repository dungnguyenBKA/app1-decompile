package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collection;

public class RangeDateSelector implements DateSelector<j2<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new a();
    private Long b = null;
    private Long c = null;

    static class a implements Parcelable.Creator<RangeDateSelector> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public RangeDateSelector createFromParcel(Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.b = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.c = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public RangeDateSelector[] newArray(int i) {
            return new RangeDateSelector[i];
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection<Long> S() {
        ArrayList arrayList = new ArrayList();
        Long l = this.b;
        if (l != null) {
            arrayList.add(l);
        }
        Long l2 = this.c;
        if (l2 != null) {
            arrayList.add(l2);
        }
        return arrayList;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.material.datepicker.DateSelector
    public j2<Long, Long> V() {
        return new j2(this.b, this.c);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void b0(long j) {
        Long l = this.b;
        if (l == null) {
            this.b = Long.valueOf(j);
            return;
        }
        if (this.c == null) {
            if (l.longValue() <= j) {
                this.c = Long.valueOf(j);
                return;
            }
        }
        this.c = null;
        this.b = Long.valueOf(j);
    }

    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection<j2<Long, Long>> j() {
        if (this.b == null || this.c == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new j2(this.b, this.c));
        return arrayList;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.b);
        parcel.writeValue(this.c);
    }
}
