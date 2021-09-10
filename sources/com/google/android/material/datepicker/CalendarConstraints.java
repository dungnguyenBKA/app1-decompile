package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new a();
    private final Month b;
    private final Month c;
    private final Month d;
    private final DateValidator e;
    private final int f;
    private final int g;

    public interface DateValidator extends Parcelable {
        boolean L(long j);
    }

    static class a implements Parcelable.Creator<CalendarConstraints> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public CalendarConstraints createFromParcel(Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), null);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    }

    CalendarConstraints(Month month, Month month2, Month month3, DateValidator dateValidator, a aVar) {
        this.b = month;
        this.c = month2;
        this.d = month3;
        this.e = dateValidator;
        if (month.compareTo(month3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        } else if (month3.compareTo(month2) <= 0) {
            this.g = month.h(month2) + 1;
            this.f = (month2.e - month.e) + 1;
        } else {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
    }

    public DateValidator a() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public Month b() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public int c() {
        return this.g;
    }

    /* access modifiers changed from: package-private */
    public Month d() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public Month e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        if (!this.b.equals(calendarConstraints.b) || !this.c.equals(calendarConstraints.c) || !this.d.equals(calendarConstraints.d) || !this.e.equals(calendarConstraints.e)) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public int f() {
        return this.f;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.c, this.d, this.e});
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.b, 0);
        parcel.writeParcelable(this.c, 0);
        parcel.writeParcelable(this.d, 0);
        parcel.writeParcelable(this.e, 0);
    }
}
