package androidx.lifecycle;

import androidx.lifecycle.f;
import java.util.Map;

public abstract class LiveData<T> {
    static final Object j = new Object();
    final Object a = new Object();
    private w<o<? super T>, LiveData<T>.b> b = new w<>();
    int c = 0;
    private volatile Object d;
    volatile Object e;
    private int f;
    private boolean g;
    private boolean h;
    private final Runnable i;

    class LifecycleBoundObserver extends LiveData<T>.b implements Object {
        final i e;
        final /* synthetic */ LiveData f;

        public void c(i iVar, f.a aVar) {
            if (this.e.getLifecycle().b() == f.b.DESTROYED) {
                this.f.g(this.a);
            } else {
                h(j());
            }
        }

        /* access modifiers changed from: package-private */
        @Override // androidx.lifecycle.LiveData.b
        public void i() {
            this.e.getLifecycle().c(this);
        }

        /* access modifiers changed from: package-private */
        @Override // androidx.lifecycle.LiveData.b
        public boolean j() {
            return this.e.getLifecycle().b().compareTo(f.b.STARTED) >= 0;
        }
    }

    class a implements Runnable {
        a() {
        }

        /* JADX DEBUG: Multi-variable search result rejected for r0v2, resolved type: androidx.lifecycle.LiveData */
        /* JADX WARN: Multi-variable type inference failed */
        public void run() {
            Object obj;
            synchronized (LiveData.this.a) {
                obj = LiveData.this.e;
                LiveData.this.e = LiveData.j;
            }
            LiveData.this.h(obj);
        }
    }

    /* access modifiers changed from: private */
    public abstract class b {
        final o<? super T> a;
        boolean b;
        int c;
        final /* synthetic */ LiveData d;

        /* access modifiers changed from: package-private */
        public void h(boolean z) {
            if (z != this.b) {
                this.b = z;
                LiveData liveData = this.d;
                int i = liveData.c;
                int i2 = 1;
                boolean z2 = i == 0;
                if (!z) {
                    i2 = -1;
                }
                liveData.c = i + i2;
                if (z2 && z) {
                    liveData.d();
                }
                LiveData liveData2 = this.d;
                if (liveData2.c == 0 && !this.b) {
                    liveData2.e();
                }
                if (this.b) {
                    this.d.c(this);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void i() {
        }

        /* access modifiers changed from: package-private */
        public abstract boolean j();
    }

    public LiveData() {
        Object obj = j;
        this.d = obj;
        this.e = obj;
        this.f = -1;
        this.i = new a();
    }

    private static void a(String str) {
        if (!s.e().b()) {
            throw new IllegalStateException("Cannot invoke " + str + " on a background" + " thread");
        }
    }

    private void b(LiveData<T>.b bVar) {
        if (bVar.b) {
            if (!bVar.j()) {
                bVar.h(false);
                return;
            }
            int i2 = bVar.c;
            int i3 = this.f;
            if (i2 < i3) {
                bVar.c = i3;
                bVar.a.a((Object) this.d);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void c(LiveData<T>.b bVar) {
        if (this.g) {
            this.h = true;
            return;
        }
        this.g = true;
        do {
            this.h = false;
            if (bVar == null) {
                w<K, V>.d d2 = this.b.d();
                while (d2.hasNext()) {
                    b((b) ((Map.Entry) d2.next()).getValue());
                    if (this.h) {
                        break;
                    }
                }
            } else {
                b(bVar);
                bVar = null;
            }
        } while (this.h);
        this.g = false;
    }

    /* access modifiers changed from: protected */
    public void d() {
    }

    /* access modifiers changed from: protected */
    public void e() {
    }

    /* access modifiers changed from: protected */
    public void f(T t) {
        boolean z;
        synchronized (this.a) {
            z = this.e == j;
            this.e = t;
        }
        if (z) {
            s.e().c(this.i);
        }
    }

    public void g(o<? super T> oVar) {
        a("removeObserver");
        LiveData<T>.b g2 = this.b.g(oVar);
        if (g2 != null) {
            g2.i();
            g2.h(false);
        }
    }

    /* access modifiers changed from: protected */
    public void h(T t) {
        a("setValue");
        this.f++;
        this.d = t;
        c(null);
    }
}
