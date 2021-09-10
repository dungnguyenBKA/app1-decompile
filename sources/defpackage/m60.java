package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: m60  reason: default package */
public final class m60 extends p60 implements Iterable<p60> {
    private final List<p60> b = new ArrayList();

    @Override // defpackage.p60
    public boolean a() {
        if (this.b.size() == 1) {
            return this.b.get(0).a();
        }
        throw new IllegalStateException();
    }

    @Override // defpackage.p60
    public double b() {
        if (this.b.size() == 1) {
            return this.b.get(0).b();
        }
        throw new IllegalStateException();
    }

    @Override // defpackage.p60
    public float c() {
        if (this.b.size() == 1) {
            return this.b.get(0).c();
        }
        throw new IllegalStateException();
    }

    @Override // defpackage.p60
    public int d() {
        if (this.b.size() == 1) {
            return this.b.get(0).d();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof m60) && ((m60) obj).b.equals(this.b));
    }

    @Override // defpackage.p60
    public long g() {
        if (this.b.size() == 1) {
            return this.b.get(0).g();
        }
        throw new IllegalStateException();
    }

    @Override // defpackage.p60
    public String h() {
        if (this.b.size() == 1) {
            return this.b.get(0).h();
        }
        throw new IllegalStateException();
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public void i(p60 p60) {
        if (p60 == null) {
            p60 = r60.a;
        }
        this.b.add(p60);
    }

    @Override // java.lang.Iterable
    public Iterator<p60> iterator() {
        return this.b.iterator();
    }

    public void j(String str) {
        this.b.add(str == null ? r60.a : new u60(str));
    }

    public p60 k(int i) {
        return this.b.get(i);
    }

    public int size() {
        return this.b.size();
    }
}
