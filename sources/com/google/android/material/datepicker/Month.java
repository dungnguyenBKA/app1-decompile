package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* access modifiers changed from: package-private */
public final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new a();
    private final Calendar b;
    private final String c;
    final int d;
    final int e;
    final int f;
    final int g;

    static class a implements Parcelable.Creator<Month> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public Month createFromParcel(Parcel parcel) {
            return Month.b(parcel.readInt(), parcel.readInt());
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public Month[] newArray(int i) {
            return new Month[i];
        }
    }

    private Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar a2 = c.a(calendar);
        this.b = a2;
        this.d = a2.get(2);
        this.e = a2.get(1);
        this.f = a2.getMaximum(7);
        this.g = a2.getActualMaximum(5);
        this.c = c.h().format(a2.getTime());
        a2.getTimeInMillis();
    }

    static Month b(int i, int i2) {
        Calendar e2 = c.e();
        e2.set(1, i);
        e2.set(2, i2);
        return new Month(e2);
    }

    static Month i() {
        return new Month(c.d());
    }

    /* renamed from: a */
    public int compareTo(Month month) {
        return this.b.compareTo(month.b);
    }

    /* access modifiers changed from: package-private */
    public int c() {
        int firstDayOfWeek = this.b.get(7) - this.b.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.f : firstDayOfWeek;
    }

    /* access modifiers changed from: package-private */
    public long d(int i) {
        Calendar a2 = c.a(this.b);
        a2.set(5, i);
        return a2.getTimeInMillis();
    }

    public int describeContents() {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public String e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        if (this.d == month.d && this.e == month.e) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public long f() {
        return this.b.getTimeInMillis();
    }

    /* access modifiers changed from: package-private */
    public Month g(int i) {
        Calendar a2 = c.a(this.b);
        a2.add(2, i);
        return new Month(a2);
    }

    /* access modifiers changed from: package-private */
    public int h(Month month) {
        if (this.b instanceof GregorianCalendar) {
            return (month.d - this.d) + ((month.e - this.e) * 12);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.d), Integer.valueOf(this.e)});
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.e);
        parcel.writeInt(this.d);
    }
}
