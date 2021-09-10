package com.google.android.material.datepicker;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;

class h extends RecyclerView.s {
    final /* synthetic */ o a;
    final /* synthetic */ MaterialButton b;
    final /* synthetic */ e c;

    h(e eVar, o oVar, MaterialButton materialButton) {
        this.c = eVar;
        this.a = oVar;
        this.b = materialButton;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public void a(RecyclerView recyclerView, int i) {
        if (i == 0) {
            recyclerView.announceForAccessibility(this.b.getText());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public void b(RecyclerView recyclerView, int i, int i2) {
        int i3;
        if (i < 0) {
            i3 = this.c.w1().x1();
        } else {
            i3 = this.c.w1().A1();
        }
        this.c.Y = this.a.A(i3);
        this.b.setText(this.a.B(i3));
    }
}
