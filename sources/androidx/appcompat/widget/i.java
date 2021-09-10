package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.widget.AppCompatSpinner;

/* access modifiers changed from: package-private */
public class i extends r {
    final /* synthetic */ AppCompatSpinner.d k;
    final /* synthetic */ AppCompatSpinner l;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    i(AppCompatSpinner appCompatSpinner, View view, AppCompatSpinner.d dVar) {
        super(view);
        this.l = appCompatSpinner;
        this.k = dVar;
    }

    @Override // androidx.appcompat.widget.r
    public p b() {
        return this.k;
    }

    @Override // androidx.appcompat.widget.r
    @SuppressLint({"SyntheticAccessor"})
    public boolean c() {
        if (this.l.b().a()) {
            return true;
        }
        this.l.c();
        return true;
    }
}
