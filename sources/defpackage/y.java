package defpackage;

import java.util.Map;

/* access modifiers changed from: package-private */
/* renamed from: y  reason: default package */
public class y extends d0<E, E> {
    final /* synthetic */ z d;

    y(z zVar) {
        this.d = zVar;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.d0
    public void a() {
        this.d.clear();
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.d0
    public Object b(int i, int i2) {
        return this.d.c[i];
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.d0
    public Map<E, E> c() {
        throw new UnsupportedOperationException("not a map");
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.d0
    public int d() {
        return this.d.d;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.d0
    public int e(Object obj) {
        return this.d.indexOf(obj);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.d0
    public int f(Object obj) {
        return this.d.indexOf(obj);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.d0
    public void g(E e, E e2) {
        this.d.add(e);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.d0
    public void h(int i) {
        this.d.e(i);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.d0
    public E i(int i, E e) {
        throw new UnsupportedOperationException("not a map");
    }
}
