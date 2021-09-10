package defpackage;

import java.util.HashSet;
import java.util.Iterator;

/* renamed from: z0  reason: default package */
public class z0 {
    HashSet<z0> a = new HashSet<>(2);
    int b = 0;

    public void a() {
        this.b = 1;
        Iterator<z0> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }

    public void b() {
        this.b = 0;
        Iterator<z0> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    public boolean c() {
        return this.b == 1;
    }

    public void d() {
    }
}
