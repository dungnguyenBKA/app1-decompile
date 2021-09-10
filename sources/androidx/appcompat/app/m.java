package androidx.appcompat.app;

import android.view.View;

/* access modifiers changed from: package-private */
public class m implements Runnable {
    final /* synthetic */ AppCompatDelegateImpl b;

    class a extends j3 {
        a() {
        }

        @Override // defpackage.i3
        public void b(View view) {
            m.this.b.q.setAlpha(1.0f);
            m.this.b.t.f(null);
            m.this.b.t = null;
        }

        @Override // defpackage.j3, defpackage.i3
        public void c(View view) {
            m.this.b.q.setVisibility(0);
        }
    }

    m(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.b = appCompatDelegateImpl;
    }

    public void run() {
        AppCompatDelegateImpl appCompatDelegateImpl = this.b;
        appCompatDelegateImpl.r.showAtLocation(appCompatDelegateImpl.q, 55, 0, 0);
        this.b.N();
        if (this.b.c0()) {
            this.b.q.setAlpha(0.0f);
            AppCompatDelegateImpl appCompatDelegateImpl2 = this.b;
            h3 a2 = c3.a(appCompatDelegateImpl2.q);
            a2.a(1.0f);
            appCompatDelegateImpl2.t = a2;
            this.b.t.f(new a());
            return;
        }
        this.b.q.setAlpha(1.0f);
        this.b.q.setVisibility(0);
    }
}
