package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Calendar;
import java.util.Locale;
import photoeditor.cutout.backgrounderaser.R;

class d extends BaseAdapter {
    private static final int d = (Build.VERSION.SDK_INT >= 26 ? 4 : 1);
    private final Calendar a;
    private final int b;
    private final int c;

    public d() {
        Calendar e = c.e();
        this.a = e;
        this.b = e.getMaximum(7);
        this.c = e.getFirstDayOfWeek();
    }

    public int getCount() {
        return this.b;
    }

    public Object getItem(int i) {
        int i2 = this.b;
        if (i >= i2) {
            return null;
        }
        int i3 = i + this.c;
        if (i3 > i2) {
            i3 -= i2;
        }
        return Integer.valueOf(i3);
    }

    public long getItemId(int i) {
        return 0;
    }

    @SuppressLint({"WrongConstant"})
    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.cx, viewGroup, false);
        }
        Calendar calendar = this.a;
        int i2 = i + this.c;
        int i3 = this.b;
        if (i2 > i3) {
            i2 -= i3;
        }
        calendar.set(7, i2);
        textView.setText(this.a.getDisplayName(7, d, Locale.getDefault()));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.dm), this.a.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
