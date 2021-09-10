package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import defpackage.aj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class i implements ComponentCallbacks2, gj {
    private static final ck m = ((ck) ((ck) new ck().e(Bitmap.class)).H());
    protected final c b;
    protected final Context c;
    final fj d;
    private final lj e;
    private final kj f;
    private final nj g = new nj();
    private final Runnable h;
    private final Handler i;
    private final aj j;
    private final CopyOnWriteArrayList<bk<Object>> k;
    private ck l;

    class a implements Runnable {
        a() {
        }

        public void run() {
            i iVar = i.this;
            iVar.d.a(iVar);
        }
    }

    private static class b extends ik<View, Object> {
        b(View view) {
            super(view);
        }

        @Override // defpackage.nk
        public void b(Object obj, sk<? super Object> skVar) {
        }

        @Override // defpackage.nk
        public void d(Drawable drawable) {
        }
    }

    private class c implements aj.a {
        private final lj a;

        c(lj ljVar) {
            this.a = ljVar;
        }

        @Override // defpackage.aj.a
        public void a(boolean z) {
            if (z) {
                synchronized (i.this) {
                    this.a.d();
                }
            }
        }
    }

    static {
        ck ckVar = (ck) ((ck) new ck().e(ji.class)).H();
        ck ckVar2 = (ck) ((ck) ((ck) new ck().f(vd.c)).O(f.LOW)).S(true);
    }

    public i(c cVar, fj fjVar, kj kjVar, Context context) {
        lj ljVar = new lj();
        bj f2 = cVar.f();
        a aVar = new a();
        this.h = aVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.i = handler;
        this.b = cVar;
        this.d = fjVar;
        this.f = kjVar;
        this.e = ljVar;
        this.c = context;
        aj a2 = ((dj) f2).a(context.getApplicationContext(), new c(ljVar));
        this.j = a2;
        if (hl.g()) {
            handler.post(aVar);
        } else {
            fjVar.a(this);
        }
        fjVar.a(a2);
        this.k = new CopyOnWriteArrayList<>(cVar.h().c());
        p(cVar.h().d());
        cVar.l(this);
    }

    public <ResourceType> h<ResourceType> i(Class<ResourceType> cls) {
        return new h<>(this.b, this, cls, this.c);
    }

    public h<Bitmap> j() {
        return i(Bitmap.class).a(m);
    }

    public h<Drawable> k() {
        return i(Drawable.class);
    }

    public void l(View view) {
        m(new b(view));
    }

    public void m(nk<?> nkVar) {
        if (nkVar != null) {
            boolean r = r(nkVar);
            zj f2 = nkVar.f();
            if (!r && !this.b.m(nkVar) && f2 != null) {
                nkVar.c(null);
                f2.clear();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public List<bk<Object>> n() {
        return this.k;
    }

    /* access modifiers changed from: package-private */
    public synchronized ck o() {
        return this.l;
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // defpackage.gj
    public synchronized void onDestroy() {
        this.g.onDestroy();
        Iterator it = ((ArrayList) this.g.j()).iterator();
        while (it.hasNext()) {
            m((nk) it.next());
        }
        this.g.i();
        this.e.b();
        this.d.b(this);
        this.d.b(this.j);
        this.i.removeCallbacks(this.h);
        this.b.o(this);
    }

    public void onLowMemory() {
    }

    @Override // defpackage.gj
    public synchronized void onStart() {
        synchronized (this) {
            this.e.e();
        }
        this.g.onStart();
    }

    @Override // defpackage.gj
    public synchronized void onStop() {
        synchronized (this) {
            this.e.c();
        }
        this.g.onStop();
    }

    public void onTrimMemory(int i2) {
    }

    /* access modifiers changed from: protected */
    public synchronized void p(ck ckVar) {
        this.l = (ck) ((ck) ckVar.clone()).b();
    }

    /* access modifiers changed from: package-private */
    public synchronized void q(nk<?> nkVar, zj zjVar) {
        this.g.k(nkVar);
        this.e.f(zjVar);
    }

    /* access modifiers changed from: package-private */
    public synchronized boolean r(nk<?> nkVar) {
        zj f2 = nkVar.f();
        if (f2 == null) {
            return true;
        }
        if (!this.e.a(f2)) {
            return false;
        }
        this.g.l(nkVar);
        nkVar.c(null);
        return true;
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.e + ", treeNode=" + this.f + "}";
    }
}
