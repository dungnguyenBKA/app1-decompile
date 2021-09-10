package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.f;

public class r {
    private final j a;
    private final Handler b = new Handler();
    private a c;

    /* access modifiers changed from: package-private */
    public static class a implements Runnable {
        private final j b;
        final f.a c;
        private boolean d = false;

        a(j jVar, f.a aVar) {
            this.b = jVar;
            this.c = aVar;
        }

        public void run() {
            if (!this.d) {
                this.b.f(this.c);
                this.d = true;
            }
        }
    }

    public r(i iVar) {
        this.a = new j(iVar);
    }

    private void f(f.a aVar) {
        a aVar2 = this.c;
        if (aVar2 != null) {
            aVar2.run();
        }
        a aVar3 = new a(this.a, aVar);
        this.c = aVar3;
        this.b.postAtFrontOfQueue(aVar3);
    }

    public f a() {
        return this.a;
    }

    public void b() {
        f(f.a.ON_START);
    }

    public void c() {
        f(f.a.ON_CREATE);
    }

    public void d() {
        f(f.a.ON_STOP);
        f(f.a.ON_DESTROY);
    }

    public void e() {
        f(f.a.ON_START);
    }
}
