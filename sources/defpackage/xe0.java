package defpackage;

import androidx.core.app.b;
import defpackage.xd0;

/* renamed from: xe0  reason: default package */
public final class xe0<T> extends ue0<T, T> {
    final xd0 b;
    final boolean c;
    final int d;

    /* renamed from: xe0$a */
    static final class a<T> extends re0<T> implements wd0<T>, Runnable {
        final wd0<? super T> b;
        final xd0.b c;
        final boolean d;
        final int e;
        qe0<T> f;
        be0 g;
        Throwable h;
        volatile boolean i;
        volatile boolean j;
        int k;
        boolean l;

        a(wd0<? super T> wd0, xd0.b bVar, boolean z, int i2) {
            this.b = wd0;
            this.c = bVar;
            this.d = z;
            this.e = i2;
        }

        @Override // defpackage.wd0
        public void a() {
            if (!this.i) {
                this.i = true;
                j();
            }
        }

        @Override // defpackage.wd0
        public void b(Throwable th) {
            if (this.i) {
                mf0.f(th);
                return;
            }
            this.h = th;
            this.i = true;
            j();
        }

        @Override // defpackage.wd0
        public void c(T t) {
            if (!this.i) {
                if (this.k != 2) {
                    this.f.d(t);
                }
                j();
            }
        }

        public void clear() {
            this.f.clear();
        }

        @Override // defpackage.be0
        public void e() {
            if (!this.j) {
                this.j = true;
                this.g.e();
                this.c.e();
                if (getAndIncrement() == 0) {
                    this.f.clear();
                }
            }
        }

        @Override // defpackage.wd0
        public void f(be0 be0) {
            boolean z;
            if (this.g != null) {
                be0.e();
                mf0.f(new ge0("Disposable already set!"));
                z = false;
            } else {
                z = true;
            }
            if (z) {
                this.g = be0;
                if (be0 instanceof pe0) {
                    pe0 pe0 = (pe0) be0;
                    int h2 = pe0.h(7);
                    if (h2 == 1) {
                        this.k = h2;
                        this.f = pe0;
                        this.i = true;
                        this.b.f(this);
                        j();
                        return;
                    } else if (h2 == 2) {
                        this.k = h2;
                        this.f = pe0;
                        this.b.f(this);
                        return;
                    }
                }
                this.f = new ze0(this.e);
                this.b.f(this);
            }
        }

        public T g() {
            return this.f.g();
        }

        @Override // defpackage.pe0
        public int h(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.l = true;
            return 2;
        }

        /* access modifiers changed from: package-private */
        public boolean i(boolean z, boolean z2, wd0<? super T> wd0) {
            if (this.j) {
                this.f.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                Throwable th = this.h;
                if (this.d) {
                    if (!z2) {
                        return false;
                    }
                    if (th != null) {
                        wd0.b(th);
                    } else {
                        wd0.a();
                    }
                    this.c.e();
                    return true;
                } else if (th != null) {
                    this.f.clear();
                    wd0.b(th);
                    this.c.e();
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    wd0.a();
                    this.c.e();
                    return true;
                }
            }
        }

        public boolean isEmpty() {
            return this.f.isEmpty();
        }

        /* access modifiers changed from: package-private */
        public void j() {
            if (getAndIncrement() == 0) {
                this.c.b(this);
            }
        }

        public void run() {
            int i2 = 1;
            if (this.l) {
                while (!this.j) {
                    boolean z = this.i;
                    Throwable th = this.h;
                    if (this.d || !z || th == null) {
                        this.b.c(null);
                        if (z) {
                            Throwable th2 = this.h;
                            if (th2 != null) {
                                this.b.b(th2);
                            } else {
                                this.b.a();
                            }
                            this.c.e();
                            return;
                        }
                        i2 = addAndGet(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    } else {
                        this.b.b(th);
                        this.c.e();
                        return;
                    }
                }
                return;
            }
            qe0<T> qe0 = this.f;
            wd0<? super T> wd0 = this.b;
            int i3 = 1;
            while (!i(this.i, qe0.isEmpty(), wd0)) {
                while (true) {
                    boolean z2 = this.i;
                    try {
                        T g2 = qe0.g();
                        boolean z3 = g2 == null;
                        if (!i(z2, z3, wd0)) {
                            if (z3) {
                                i3 = addAndGet(-i3);
                                if (i3 == 0) {
                                    return;
                                }
                            } else {
                                wd0.c(g2);
                            }
                        } else {
                            return;
                        }
                    } catch (Throwable th3) {
                        b.K0(th3);
                        this.g.e();
                        qe0.clear();
                        wd0.b(th3);
                        this.c.e();
                        return;
                    }
                }
            }
        }
    }

    public xe0(td0<T> td0, xd0 xd0, boolean z, int i) {
        super(td0);
        this.b = xd0;
        this.c = z;
        this.d = i;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.td0
    public void d(wd0<? super T> wd0) {
        xd0 xd0 = this.b;
        if (xd0 instanceof jf0) {
            this.a.c(wd0);
            return;
        }
        this.a.c(new a(wd0, xd0.a(), this.c, this.d));
    }
}
