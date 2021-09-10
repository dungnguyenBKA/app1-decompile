package androidx.appcompat.app;

import androidx.appcompat.widget.ContentFrameLayout;

/* access modifiers changed from: package-private */
public class l implements ContentFrameLayout.a {
    final /* synthetic */ AppCompatDelegateImpl a;

    l(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.a = appCompatDelegateImpl;
    }

    @Override // androidx.appcompat.widget.ContentFrameLayout.a
    public void a() {
    }

    @Override // androidx.appcompat.widget.ContentFrameLayout.a
    public void onDetachedFromWindow() {
        this.a.K();
    }
}
