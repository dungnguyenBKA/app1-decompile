package com.google.android.material.datepicker;

import android.view.View;

class k implements View.OnClickListener {
    final /* synthetic */ o b;
    final /* synthetic */ e c;

    k(e eVar, o oVar) {
        this.c = eVar;
        this.b = oVar;
    }

    public void onClick(View view) {
        int A1 = this.c.w1().A1() - 1;
        if (A1 >= 0) {
            this.c.y1(this.b.A(A1));
        }
    }
}
