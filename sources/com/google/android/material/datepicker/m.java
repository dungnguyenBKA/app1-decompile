package com.google.android.material.datepicker;

import android.widget.BaseAdapter;

class m extends BaseAdapter {
    static final int e = c.e().getMaximum(4);
    final Month a;
    final DateSelector<?> b;
    b c;
    final CalendarConstraints d;

    m(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints) {
        this.a = month;
        this.b = dateSelector;
        this.d = calendarConstraints;
    }

    /* access modifiers changed from: package-private */
    public int a() {
        return this.a.c();
    }

    /* renamed from: b */
    public Long getItem(int i) {
        if (i < this.a.c() || i > c()) {
            return null;
        }
        Month month = this.a;
        return Long.valueOf(month.d((i - month.c()) + 1));
    }

    /* access modifiers changed from: package-private */
    public int c() {
        return (this.a.c() + this.a.g) - 1;
    }

    public int getCount() {
        return this.a.g + a();
    }

    public long getItemId(int i) {
        return (long) (i / this.a.f);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x007a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
        // Method dump skipped, instructions count: 256
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.m.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    public boolean hasStableIds() {
        return true;
    }
}
