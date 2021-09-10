package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;

/* access modifiers changed from: package-private */
public class s implements AdapterView.OnItemSelectedListener {
    final /* synthetic */ ListPopupWindow b;

    s(ListPopupWindow listPopupWindow) {
        this.b = listPopupWindow;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        p pVar;
        if (i != -1 && (pVar = this.b.d) != null) {
            pVar.c(false);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
