package androidx.appcompat.app;

import android.view.View;

class c implements Runnable {
    final /* synthetic */ View b;
    final /* synthetic */ View c;
    final /* synthetic */ AlertController d;

    c(AlertController alertController, View view, View view2) {
        this.d = alertController;
        this.b = view;
        this.c = view2;
    }

    public void run() {
        AlertController.d(this.d.A, this.b, this.c);
    }
}
