package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* renamed from: v90  reason: default package */
public class v90 {
    private static v90 c = new v90();
    private final ArrayList<u90> a = new ArrayList<>();
    private final ArrayList<u90> b = new ArrayList<>();

    private v90() {
    }

    public static v90 a() {
        return c;
    }

    public void b(u90 u90) {
        this.a.add(u90);
    }

    public Collection<u90> c() {
        return Collections.unmodifiableCollection(this.a);
    }

    public void d(u90 u90) {
        boolean g = g();
        this.b.add(u90);
        if (!g) {
            ba0.a().d();
        }
    }

    public Collection<u90> e() {
        return Collections.unmodifiableCollection(this.b);
    }

    public void f(u90 u90) {
        boolean g = g();
        this.a.remove(u90);
        this.b.remove(u90);
        if (g && !g()) {
            ba0.a().e();
        }
    }

    public boolean g() {
        return this.b.size() > 0;
    }
}
