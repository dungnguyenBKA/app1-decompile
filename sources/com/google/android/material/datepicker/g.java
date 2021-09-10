package com.google.android.material.datepicker;

import android.view.View;
import photoeditor.cutout.backgrounderaser.R;

class g extends n2 {
    final /* synthetic */ e d;

    g(e eVar) {
        this.d = eVar;
    }

    @Override // defpackage.n2
    public void e(View view, n3 n3Var) {
        String str;
        super.e(view, n3Var);
        if (this.d.e0.getVisibility() == 0) {
            str = this.d.T(R.string.e8);
        } else {
            str = this.d.T(R.string.e6);
        }
        n3Var.c0(str);
    }
}
