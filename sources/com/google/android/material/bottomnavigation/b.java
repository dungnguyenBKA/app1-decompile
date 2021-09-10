package com.google.android.material.bottomnavigation;

import android.view.View;
import com.google.android.material.internal.j;

class b implements j.b {
    b(BottomNavigationView bottomNavigationView) {
    }

    @Override // com.google.android.material.internal.j.b
    public l3 a(View view, l3 l3Var, j.c cVar) {
        int b = l3Var.b() + cVar.d;
        cVar.d = b;
        int i = cVar.a;
        int i2 = cVar.b;
        int i3 = cVar.c;
        int i4 = c3.g;
        view.setPaddingRelative(i, i2, i3, b);
        return l3Var;
    }
}
