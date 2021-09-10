package com.facebook.rebound;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

public class b {
    private static int l;
    private c a;
    private final String b;
    private final C0041b c = new C0041b(null);
    private final C0041b d = new C0041b(null);
    private final C0041b e = new C0041b(null);
    private double f;
    private double g;
    private boolean h = true;
    private CopyOnWriteArraySet<e> i = new CopyOnWriteArraySet<>();
    private double j = 0.0d;
    private final g k;

    /* access modifiers changed from: private */
    /* renamed from: com.facebook.rebound.b$b  reason: collision with other inner class name */
    public static class C0041b {
        double a;
        double b;

        C0041b(a aVar) {
        }
    }

    b(g gVar) {
        this.k = gVar;
        StringBuilder q = ic.q("spring:");
        int i2 = l;
        l = i2 + 1;
        q.append(i2);
        this.b = q.toString();
        c cVar = c.c;
        if (cVar != null) {
            this.a = cVar;
            return;
        }
        throw new IllegalArgumentException("springConfig is required");
    }

    public b a(e eVar) {
        this.i.add(eVar);
        return this;
    }

    /* access modifiers changed from: package-private */
    public void b(double d2) {
        double d3;
        boolean z;
        boolean z2;
        boolean f2 = f();
        if (!f2 || !this.h) {
            double d4 = 0.064d;
            if (d2 <= 0.064d) {
                d4 = d2;
            }
            this.j += d4;
            c cVar = this.a;
            double d5 = cVar.b;
            double d6 = cVar.a;
            C0041b bVar = this.c;
            double d7 = bVar.a;
            double d8 = bVar.b;
            C0041b bVar2 = this.e;
            double d9 = bVar2.a;
            double d10 = bVar2.b;
            while (true) {
                d3 = this.j;
                if (d3 < 0.001d) {
                    break;
                }
                double d11 = d3 - 0.001d;
                this.j = d11;
                if (d11 < 0.001d) {
                    C0041b bVar3 = this.d;
                    bVar3.a = d7;
                    bVar3.b = d8;
                }
                double d12 = this.g;
                double d13 = ((d12 - d9) * d5) - (d6 * d8);
                double d14 = (d13 * 0.001d * 0.5d) + d8;
                double d15 = ((d12 - (((d8 * 0.001d) * 0.5d) + d7)) * d5) - (d6 * d14);
                double d16 = (d15 * 0.001d * 0.5d) + d8;
                double d17 = ((d12 - (((d14 * 0.001d) * 0.5d) + d7)) * d5) - (d6 * d16);
                double d18 = (d16 * 0.001d) + d7;
                double d19 = (d17 * 0.001d) + d8;
                d7 = ((((d14 + d16) * 2.0d) + d8 + d19) * 0.16666666666666666d * 0.001d) + d7;
                d8 += (((d15 + d17) * 2.0d) + d13 + (((d12 - d18) * d5) - (d6 * d19))) * 0.16666666666666666d * 0.001d;
                d9 = d18;
                d10 = d19;
            }
            C0041b bVar4 = this.e;
            bVar4.a = d9;
            bVar4.b = d10;
            C0041b bVar5 = this.c;
            bVar5.a = d7;
            bVar5.b = d8;
            if (d3 > 0.0d) {
                double d20 = d3 / 0.001d;
                C0041b bVar6 = this.d;
                double d21 = 1.0d - d20;
                bVar5.a = (bVar6.a * d21) + (d7 * d20);
                bVar5.b = (bVar6.b * d21) + (d8 * d20);
            }
            boolean z3 = true;
            if (!f()) {
                z = f2;
            } else {
                if (d5 > 0.0d) {
                    double d22 = this.g;
                    this.f = d22;
                    this.c.a = d22;
                } else {
                    double d23 = this.c.a;
                    this.g = d23;
                    this.f = d23;
                }
                C0041b bVar7 = this.c;
                if (0.0d != bVar7.b) {
                    bVar7.b = 0.0d;
                    this.k.a(this.b);
                }
                z = true;
            }
            if (this.h) {
                this.h = false;
                z2 = true;
            } else {
                z2 = false;
            }
            if (z) {
                this.h = true;
            } else {
                z3 = false;
            }
            Iterator<e> it = this.i.iterator();
            while (it.hasNext()) {
                e next = it.next();
                if (z2) {
                    next.c(this);
                }
                next.b(this);
                if (z3) {
                    next.d(this);
                }
            }
        }
    }

    public double c() {
        return this.c.a;
    }

    public double d() {
        return this.g;
    }

    public String e() {
        return this.b;
    }

    public boolean f() {
        if (Math.abs(this.c.b) <= 0.005d) {
            if (Math.abs(this.g - this.c.a) <= 0.005d || this.a.b == 0.0d) {
                return true;
            }
        }
        return false;
    }

    public b g(double d2) {
        this.f = d2;
        this.c.a = d2;
        this.k.a(this.b);
        Iterator<e> it = this.i.iterator();
        while (it.hasNext()) {
            it.next().b(this);
        }
        C0041b bVar = this.c;
        double d3 = bVar.a;
        this.g = d3;
        this.e.a = d3;
        bVar.b = 0.0d;
        return this;
    }

    public b h(double d2) {
        if (this.g == d2 && f()) {
            return this;
        }
        this.f = this.c.a;
        this.g = d2;
        this.k.a(this.b);
        Iterator<e> it = this.i.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
        return this;
    }

    public boolean i() {
        return !f() || !this.h;
    }
}
