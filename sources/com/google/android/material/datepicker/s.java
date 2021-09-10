package com.google.android.material.datepicker;

import android.view.View;
import com.google.android.material.datepicker.e;

class s implements View.OnClickListener {
    final /* synthetic */ int b;
    final /* synthetic */ t c;

    s(t tVar, int i) {
        this.c = tVar;
        this.b = i;
    }

    public void onClick(View view) {
        this.c.c.y1(Month.b(this.b, this.c.c.u1().d));
        this.c.c.z1(e.EnumC0076e.DAY);
    }
}
