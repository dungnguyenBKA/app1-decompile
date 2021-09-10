package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;

/* access modifiers changed from: package-private */
public class f implements AdapterView.OnItemClickListener {
    final /* synthetic */ AlertController b;
    final /* synthetic */ AlertController.b c;

    f(AlertController.b bVar, AlertController alertController) {
        this.c = bVar;
        this.b = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.c.n.onClick(this.b.b, i);
        if (!this.c.p) {
            this.b.b.dismiss();
        }
    }
}
