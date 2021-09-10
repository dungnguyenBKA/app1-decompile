package com.google.android.material.appbar;

import android.view.View;

/* access modifiers changed from: package-private */
public class d {
    private final View a;
    private int b;
    private int c;
    private int d;
    private int e;

    public d(View view) {
        this.a = view;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        View view = this.a;
        c3.o(view, this.d - (view.getTop() - this.b));
        View view2 = this.a;
        c3.n(view2, this.e - (view2.getLeft() - this.c));
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public void d() {
        this.b = this.a.getTop();
        this.c = this.a.getLeft();
    }

    public boolean e(int i) {
        if (this.d == i) {
            return false;
        }
        this.d = i;
        a();
        return true;
    }
}
