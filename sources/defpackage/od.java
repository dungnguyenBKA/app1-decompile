package defpackage;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.g;
import defpackage.rd;
import defpackage.uc;
import defpackage.zf;
import java.io.File;
import java.util.List;

/* renamed from: od  reason: default package */
class od implements rd, uc.a<Object> {
    private final List<g> b;
    private final sd<?> c;
    private final rd.a d;
    private int e = -1;
    private g f;
    private List<zf<File, ?>> g;
    private int h;
    private volatile zf.a<?> i;
    private File j;

    od(sd<?> sdVar, rd.a aVar) {
        List<g> c2 = sdVar.c();
        this.b = c2;
        this.c = sdVar;
        this.d = aVar;
    }

    @Override // defpackage.rd
    public boolean b() {
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
            if (i3 >= this.b.size()) {
                return false;
            }
            g gVar = this.b.get(this.e);
            File b2 = this.c.d().b(new pd(gVar, this.c.o()));
            this.j = b2;
            if (b2 != null) {
                this.f = gVar;
                this.g = this.c.j(b2);
                this.h = 0;
            }
        }
    }

    @Override // defpackage.uc.a
    public void c(Exception exc) {
        this.d.a(this.f, exc, this.i.c, a.DATA_DISK_CACHE);
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
        this.d.d(this.f, obj, this.i.c, a.DATA_DISK_CACHE, this.f);
    }

    od(List<g> list, sd<?> sdVar, rd.a aVar) {
        this.b = list;
        this.c = sdVar;
        this.d = aVar;
    }
}
