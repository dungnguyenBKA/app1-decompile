package defpackage;

import defpackage.eh0;
import java.util.List;

/* renamed from: ji0  reason: default package */
public final class ji0 implements eh0.a {
    private final List<eh0> a;
    private final di0 b;
    private final gi0 c;
    private final zh0 d;
    private final int e;
    private final jh0 f;
    private final og0 g;
    private final zg0 h;
    private final int i;
    private final int j;
    private final int k;
    private int l;

    public ji0(List<eh0> list, di0 di0, gi0 gi0, zh0 zh0, int i2, jh0 jh0, og0 og0, zg0 zg0, int i3, int i4, int i5) {
        this.a = list;
        this.d = zh0;
        this.b = di0;
        this.c = gi0;
        this.e = i2;
        this.f = jh0;
        this.g = og0;
        this.h = zg0;
        this.i = i3;
        this.j = i4;
        this.k = i5;
    }

    public og0 a() {
        return this.g;
    }

    public int b() {
        return this.i;
    }

    public sg0 c() {
        return this.d;
    }

    public zg0 d() {
        return this.h;
    }

    public gi0 e() {
        return this.c;
    }

    public lh0 f(jh0 jh0) {
        return g(jh0, this.b, this.c, this.d);
    }

    public lh0 g(jh0 jh0, di0 di0, gi0 gi0, zh0 zh0) {
        if (this.e < this.a.size()) {
            this.l++;
            if (this.c != null && !this.d.p(jh0.h())) {
                StringBuilder q = ic.q("network interceptor ");
                q.append(this.a.get(this.e - 1));
                q.append(" must retain the same host and port");
                throw new IllegalStateException(q.toString());
            } else if (this.c == null || this.l <= 1) {
                List<eh0> list = this.a;
                int i2 = this.e;
                ji0 ji0 = new ji0(list, di0, gi0, zh0, i2 + 1, jh0, this.g, this.h, this.i, this.j, this.k);
                eh0 eh0 = list.get(i2);
                lh0 intercept = eh0.intercept(ji0);
                if (gi0 != null && this.e + 1 < this.a.size() && ji0.l != 1) {
                    throw new IllegalStateException("network interceptor " + eh0 + " must call proceed() exactly once");
                } else if (intercept == null) {
                    throw new NullPointerException("interceptor " + eh0 + " returned null");
                } else if (intercept.j() != null) {
                    return intercept;
                } else {
                    throw new IllegalStateException("interceptor " + eh0 + " returned a response with no body");
                }
            } else {
                StringBuilder q2 = ic.q("network interceptor ");
                q2.append(this.a.get(this.e - 1));
                q2.append(" must call proceed() exactly once");
                throw new IllegalStateException(q2.toString());
            }
        } else {
            throw new AssertionError();
        }
    }

    public int h() {
        return this.j;
    }

    public jh0 i() {
        return this.f;
    }

    public di0 j() {
        return this.b;
    }

    public int k() {
        return this.k;
    }
}
