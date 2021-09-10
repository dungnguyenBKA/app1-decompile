package androidx.appcompat.app;

import android.view.View;
import androidx.core.widget.NestedScrollView;

class b implements NestedScrollView.b {
    final /* synthetic */ View a;
    final /* synthetic */ View b;

    b(AlertController alertController, View view, View view2) {
        this.a = view;
        this.b = view2;
    }

    @Override // androidx.core.widget.NestedScrollView.b
    public void a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        AlertController.d(nestedScrollView, this.a, this.b);
    }
}
