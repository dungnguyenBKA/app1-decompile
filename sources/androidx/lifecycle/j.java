package androidx.lifecycle;

import androidx.lifecycle.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public class j extends f {
    private v<h, a> a = new v<>();
    private f.b b;
    private final WeakReference<i> c;
    private int d = 0;
    private boolean e = false;
    private boolean f = false;
    private ArrayList<f.b> g = new ArrayList<>();

    /* access modifiers changed from: package-private */
    public static class a {
        f.b a;
        g b;

        a(h hVar, f.b bVar) {
            this.b = l.d(hVar);
            this.a = bVar;
        }

        /* access modifiers changed from: package-private */
        public void a(i iVar, f.a aVar) {
            f.b e = j.e(aVar);
            this.a = j.h(this.a, e);
            this.b.c(iVar, aVar);
            this.a = e;
        }
    }

    public j(i iVar) {
        this.c = new WeakReference<>(iVar);
        this.b = f.b.INITIALIZED;
    }

    private f.b d(h hVar) {
        Map.Entry<h, a> h = this.a.h(hVar);
        f.b bVar = null;
        f.b bVar2 = h != null ? h.getValue().a : null;
        if (!this.g.isEmpty()) {
            ArrayList<f.b> arrayList = this.g;
            bVar = arrayList.get(arrayList.size() - 1);
        }
        return h(h(this.b, bVar2), bVar);
    }

    static f.b e(f.a aVar) {
        int ordinal = aVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    return f.b.RESUMED;
                }
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return f.b.DESTROYED;
                        }
                        throw new IllegalArgumentException("Unexpected event value " + aVar);
                    }
                }
            }
            return f.b.STARTED;
        }
        return f.b.CREATED;
    }

    static f.b h(f.b bVar, f.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    private void i(f.b bVar) {
        if (this.b != bVar) {
            this.b = bVar;
            if (this.e || this.d != 0) {
                this.f = true;
                return;
            }
            this.e = true;
            l();
            this.e = false;
        }
    }

    private void j() {
        ArrayList<f.b> arrayList = this.g;
        arrayList.remove(arrayList.size() - 1);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v3, resolved type: v<androidx.lifecycle.h, androidx.lifecycle.j$a> */
    /* JADX WARN: Multi-variable type inference failed */
    private void l() {
        f.a aVar;
        f.b bVar;
        i iVar = this.c.get();
        if (iVar != null) {
            while (true) {
                if (!(this.a.size() == 0 || (this.a.b().getValue().a == (bVar = this.a.e().getValue().a) && this.b == bVar))) {
                    this.f = false;
                    if (this.b.compareTo((Enum) this.a.b().getValue().a) < 0) {
                        Iterator<Map.Entry<h, a>> a2 = this.a.a();
                        while (a2.hasNext() && !this.f) {
                            Map.Entry<h, a> next = a2.next();
                            a value = next.getValue();
                            while (value.a.compareTo((Enum) this.b) > 0 && !this.f && this.a.contains(next.getKey())) {
                                f.b bVar2 = value.a;
                                int ordinal = bVar2.ordinal();
                                if (ordinal == 0) {
                                    throw new IllegalArgumentException();
                                } else if (ordinal != 1) {
                                    if (ordinal == 2) {
                                        aVar = f.a.ON_DESTROY;
                                    } else if (ordinal == 3) {
                                        aVar = f.a.ON_STOP;
                                    } else if (ordinal == 4) {
                                        aVar = f.a.ON_PAUSE;
                                    } else {
                                        throw new IllegalArgumentException("Unexpected state value " + bVar2);
                                    }
                                    this.g.add(e(aVar));
                                    value.a(iVar, aVar);
                                    j();
                                } else {
                                    throw new IllegalArgumentException();
                                }
                            }
                        }
                    }
                    Map.Entry<h, a> e2 = this.a.e();
                    if (!this.f && e2 != null && this.b.compareTo((Enum) e2.getValue().a) > 0) {
                        w<K, V>.d d2 = this.a.d();
                        while (d2.hasNext() && !this.f) {
                            Map.Entry entry = (Map.Entry) d2.next();
                            a aVar2 = (a) entry.getValue();
                            while (aVar2.a.compareTo((Enum) this.b) < 0 && !this.f && this.a.contains(entry.getKey())) {
                                this.g.add(aVar2.a);
                                aVar2.a(iVar, m(aVar2.a));
                                j();
                            }
                        }
                    }
                } else {
                    this.f = false;
                    return;
                }
            }
        } else {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
    }

    private static f.a m(f.b bVar) {
        int ordinal = bVar.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            return f.a.ON_CREATE;
        }
        if (ordinal == 2) {
            return f.a.ON_START;
        }
        if (ordinal == 3) {
            return f.a.ON_RESUME;
        }
        if (ordinal != 4) {
            throw new IllegalArgumentException("Unexpected state value " + bVar);
        }
        throw new IllegalArgumentException();
    }

    @Override // androidx.lifecycle.f
    public void a(h hVar) {
        i iVar;
        f.b bVar = this.b;
        f.b bVar2 = f.b.DESTROYED;
        if (bVar != bVar2) {
            bVar2 = f.b.INITIALIZED;
        }
        a aVar = new a(hVar, bVar2);
        if (this.a.i(hVar, aVar) == null && (iVar = this.c.get()) != null) {
            boolean z = this.d != 0 || this.e;
            f.b d2 = d(hVar);
            this.d++;
            while (aVar.a.compareTo((Enum) d2) < 0 && this.a.contains(hVar)) {
                this.g.add(aVar.a);
                aVar.a(iVar, m(aVar.a));
                j();
                d2 = d(hVar);
            }
            if (!z) {
                l();
            }
            this.d--;
        }
    }

    @Override // androidx.lifecycle.f
    public f.b b() {
        return this.b;
    }

    @Override // androidx.lifecycle.f
    public void c(h hVar) {
        this.a.g(hVar);
    }

    public void f(f.a aVar) {
        i(e(aVar));
    }

    @Deprecated
    public void g(f.b bVar) {
        i(bVar);
    }

    public void k(f.b bVar) {
        i(bVar);
    }
}
