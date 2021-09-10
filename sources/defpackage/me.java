package defpackage;

import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.g;
import defpackage.rd;
import defpackage.zf;
import java.util.Collections;
import java.util.List;

/* renamed from: me  reason: default package */
class me implements rd, rd.a {
    private final sd<?> b;
    private final rd.a c;
    private int d;
    private od e;
    private Object f;
    private volatile zf.a<?> g;
    private pd h;

    me(sd<?> sdVar, rd.a aVar) {
        this.b = sdVar;
        this.c = aVar;
    }

    @Override // defpackage.rd.a
    public void a(g gVar, Exception exc, uc<?> ucVar, a aVar) {
        this.c.a(gVar, exc, ucVar, this.g.c.d());
    }

    /* JADX INFO: finally extract failed */
    @Override // defpackage.rd
    public boolean b() {
        Object obj = this.f;
        if (obj != null) {
            this.f = null;
            int i = dl.b;
            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            try {
                d<X> p = this.b.p(obj);
                qd qdVar = new qd(p, obj, this.b.k());
                this.h = new pd(this.g.a, this.b.o());
                this.b.d().a(this.h, qdVar);
                if (Log.isLoggable("SourceGenerator", 2)) {
                    String str = "Finished encoding source to cache, key: " + this.h + ", data: " + obj + ", encoder: " + p + ", duration: " + dl.a(elapsedRealtimeNanos);
                }
                this.g.c.b();
                this.e = new od(Collections.singletonList(this.g.a), this.b, this);
            } catch (Throwable th) {
                this.g.c.b();
                throw th;
            }
        }
        od odVar = this.e;
        if (odVar != null && odVar.b()) {
            return true;
        }
        this.e = null;
        this.g = null;
        boolean z = false;
        while (!z) {
            if (!(this.d < this.b.g().size())) {
                break;
            }
            List<zf.a<?>> g2 = this.b.g();
            int i2 = this.d;
            this.d = i2 + 1;
            this.g = g2.get(i2);
            if (this.g != null && (this.b.e().c(this.g.c.d()) || this.b.t(this.g.c.a()))) {
                this.g.c.e(this.b.l(), new le(this, this.g));
                z = true;
            }
        }
        return z;
    }

    @Override // defpackage.rd.a
    public void c() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.rd
    public void cancel() {
        zf.a<?> aVar = this.g;
        if (aVar != null) {
            aVar.c.cancel();
        }
    }

    @Override // defpackage.rd.a
    public void d(g gVar, Object obj, uc<?> ucVar, a aVar, g gVar2) {
        this.c.d(gVar, obj, ucVar, this.g.c.d(), gVar);
    }

    /* access modifiers changed from: package-private */
    public boolean e(zf.a<?> aVar) {
        zf.a<?> aVar2 = this.g;
        return aVar2 != null && aVar2 == aVar;
    }

    /* access modifiers changed from: package-private */
    public void f(zf.a<?> aVar, Object obj) {
        vd e2 = this.b.e();
        if (obj == null || !e2.c(aVar.c.d())) {
            rd.a aVar2 = this.c;
            g gVar = aVar.a;
            uc<Data> ucVar = aVar.c;
            aVar2.d(gVar, obj, ucVar, ucVar.d(), this.h);
            return;
        }
        this.f = obj;
        this.c.c();
    }

    /* access modifiers changed from: package-private */
    public void g(zf.a<?> aVar, Exception exc) {
        rd.a aVar2 = this.c;
        pd pdVar = this.h;
        uc<Data> ucVar = aVar.c;
        aVar2.a(pdVar, exc, ucVar, ucVar.d());
    }
}
