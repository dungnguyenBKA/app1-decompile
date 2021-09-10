package com.google.android.material.tabs;

import android.view.View;
import com.google.android.material.tabs.TabLayout;
import java.util.Objects;

class b implements View.OnLayoutChangeListener {
    final /* synthetic */ View b;
    final /* synthetic */ TabLayout.f c;

    b(TabLayout.f fVar, View view) {
        this.c = fVar;
        this.b = view;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.b.getVisibility() == 0) {
            Objects.requireNonNull(this.c);
        }
    }
}
