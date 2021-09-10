package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.c;
import defpackage.af;
import defpackage.jf;
import defpackage.jj;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class d {
    private final Map<Class<?>, j<?, ?>> a = new x();
    private wd b;
    private qe c;
    private oe d;
    private Cif e;
    private lf f;
    private lf g;
    private af.a h;
    private jf i;
    private bj j;
    private c.a k = new a(this);
    private jj.b l;
    private lf m;
    private List<bk<Object>> n;

    /* access modifiers changed from: package-private */
    public class a implements c.a {
        a(d dVar) {
        }
    }

    /* access modifiers changed from: package-private */
    public c a(Context context) {
        if (this.f == null) {
            this.f = lf.d();
        }
        if (this.g == null) {
            this.g = lf.c();
        }
        if (this.m == null) {
            this.m = lf.b();
        }
        if (this.i == null) {
            this.i = new jf.a(context).a();
        }
        if (this.j == null) {
            this.j = new dj();
        }
        if (this.c == null) {
            int b2 = this.i.b();
            if (b2 > 0) {
                this.c = new we((long) b2);
            } else {
                this.c = new re();
            }
        }
        if (this.d == null) {
            this.d = new ve(this.i.a());
        }
        if (this.e == null) {
            this.e = new hf((long) this.i.c());
        }
        if (this.h == null) {
            this.h = new gf(context);
        }
        if (this.b == null) {
            this.b = new wd(this.e, this.h, this.g, this.f, lf.e(), this.m, false);
        }
        List<bk<Object>> list = this.n;
        if (list == null) {
            this.n = Collections.emptyList();
        } else {
            this.n = Collections.unmodifiableList(list);
        }
        return new c(context, this.b, this.e, this.c, this.d, new jj(this.l), this.j, 4, this.k, this.a, this.n, false, false);
    }

    /* access modifiers changed from: package-private */
    public void b(jj.b bVar) {
        this.l = bVar;
    }
}
