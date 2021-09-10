package androidx.appcompat.app;

import android.graphics.Rect;
import androidx.appcompat.widget.q;

/* access modifiers changed from: package-private */
public class k implements q.a {
    final /* synthetic */ AppCompatDelegateImpl a;

    k(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.a = appCompatDelegateImpl;
    }

    @Override // androidx.appcompat.widget.q.a
    public void a(Rect rect) {
        rect.top = this.a.e0(rect.top);
    }
}
