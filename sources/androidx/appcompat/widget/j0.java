package androidx.appcompat.widget;

import android.view.View;
import android.view.Window;
import androidx.appcompat.view.menu.a;

/* access modifiers changed from: package-private */
public class j0 implements View.OnClickListener {
    final a b;
    final /* synthetic */ k0 c;

    j0(k0 k0Var) {
        this.c = k0Var;
        this.b = new a(k0Var.a.getContext(), 0, 16908332, 0, 0, k0Var.i);
    }

    public void onClick(View view) {
        k0 k0Var = this.c;
        Window.Callback callback = k0Var.l;
        if (callback != null && k0Var.m) {
            callback.onMenuItemSelected(0, this.b);
        }
    }
}
