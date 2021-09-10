package com.google.android.material.datepicker;

import android.view.View;

class j implements View.OnClickListener {
    final /* synthetic */ o b;
    final /* synthetic */ e c;

    j(e eVar, o oVar) {
        this.c = eVar;
        this.b = oVar;
    }

    public void onClick(View view) {
        int x1 = this.c.w1().x1() + 1;
        if (x1 < this.c.c0.getAdapter().b()) {
            this.c.y1(this.b.A(x1));
        }
    }
}
