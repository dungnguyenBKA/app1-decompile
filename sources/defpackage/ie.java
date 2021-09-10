package defpackage;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.g;
import defpackage.rd;
import defpackage.uc;
import defpackage.zf;
import java.io.File;
import java.util.List;

/* renamed from: ie  reason: default package */
class ie implements rd, uc.a<Object> {
    private final rd.a b;
    private final sd<?> c;
    private int d;
    private int e = -1;
    private g f;
    private List<zf<File, ?>> g;
    private int h;
    private volatile zf.a<?> i;
    private File j;
    private je k;

    ie(sd<?> sdVar, rd.a aVar) {
        this.c = sdVar;
        this.b = aVar;
    }

    @Override // defpackage.rd
    public boolean b() {
        List<g> c2 = this.c.c();
        if (c2.isEmpty()) {
            return false;
        }
        List<Class<?>> m = this.c.m();
        if (!m.isEmpty()) {
            while (true) {
                List<zf<File, ?>> list = this.g;
                if (list != null) {
                    if (this.h < list.size()) {
                        this.i = null;
                        boolean z = false;
                        while (!z) {
                            if (!(this.h < this.g.size())) {
                                break;
                            }
                            List<zf<File, ?>> list2 = this.g;
                            int i2 = this.h;
                            this.h = i2 + 1;
                            this.i = list2.get(i2).b(this.j, this.c.s(), this.c.f(), this.c.k());
                            if (this.i != null && this.c.t(this.i.c.a())) {
                                this.i.c.e(this.c.l(), this);
                                z = true;
                            }
                        }
                        return z;
                    }
                }
                int i3 = this.e + 1;
                this.e = i3;
                if (i3 >= m.size()) {
                    int i4 = this.d + 1;
                    this.d = i4;
                    if (i4 >= c2.size()) {
                        return false;
                    }
                    this.e = 0;
                }
                g gVar = c2.get(this.d);
                Class<?> cls = m.get(this.e);
                this.k = new je(this.c.b(), gVar, this.c.o(), this.c.s(), this.c.f(), this.c.r(cls), cls, this.c.k());
                File b2 = this.c.d().b(this.k);
                this.j = b2;
                if (b2 != null) {
                    this.f = gVar;
                    this.g = this.c.j(b2);
                    this.h = 0;
                }
            }
        } else if (File.class.equals(this.c.q())) {
            return false;
        } else {
            StringBuilder q = ic.q("Failed to find any load path from ");
            q.append(this.c.i());
            q.append(" to ");
            q.append(this.c.q());
            throw new IllegalStateException(q.toString());
        }
    }

    @Override // defpackage.uc.a
    public void c(Exception exc) {
        this.b.a(this.k, exc, this.i.c, a.RESOURCE_DISK_CACHE);
    }

    @Override // defpackage.rd
    public void cancel() {
        zf.a<?> aVar = this.i;
        if (aVar != null) {
            aVar.c.cancel();
        }
    }

    @Override // defpackage.uc.a
    public void f(Object obj) {
        this.b.d(this.f, obj, this.i.c, a.RESOURCE_DISK_CACHE, this.k);
    }
}
