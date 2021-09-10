package androidx.appcompat.app;

import android.view.View;
import android.widget.AbsListView;

class d implements AbsListView.OnScrollListener {
    final /* synthetic */ View b;
    final /* synthetic */ View c;

    d(AlertController alertController, View view, View view2) {
        this.b = view;
        this.c = view2;
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        AlertController.d(absListView, this.b, this.c);
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
