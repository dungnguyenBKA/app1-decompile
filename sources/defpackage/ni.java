package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.h;
import com.bumptech.glide.i;
import com.bumptech.glide.load.m;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: ni  reason: default package */
public class ni {
    private final mc a;
    private final Handler b;
    private final List<b> c = new ArrayList();
    final i d;
    private final qe e;
    private boolean f;
    private boolean g;
    private h<Bitmap> h;
    private a i;
    private boolean j;
    private a k;
    private Bitmap l;
    private m<Bitmap> m;
    private a n;
    private int o;
    private int p;
    private int q;

    /* access modifiers changed from: package-private */
    /* renamed from: ni$a */
    public static class a extends hk<Bitmap> {
        private final Handler e;
        final int f;
        private final long g;
        private Bitmap h;

        a(Handler handler, int i, long j) {
            this.e = handler;
            this.f = i;
            this.g = j;
        }

        @Override // defpackage.nk
        public void b(Object obj, sk skVar) {
            this.h = (Bitmap) obj;
            this.e.sendMessageAtTime(this.e.obtainMessage(1, this), this.g);
        }

        @Override // defpackage.nk
        public void g(Drawable drawable) {
            this.h = null;
        }

        /* access modifiers changed from: package-private */
        public Bitmap i() {
            return this.h;
        }
    }

    /* renamed from: ni$b */
    public interface b {
        void a();
    }

    /* renamed from: ni$c */
    private class c implements Handler.Callback {
        c() {
        }

        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                ni.this.k((a) message.obj);
                return true;
            } else if (i != 2) {
                return false;
            } else {
                ni.this.d.m((a) message.obj);
                return false;
            }
        }
    }

    ni(com.bumptech.glide.c cVar, mc mcVar, int i2, int i3, m<Bitmap> mVar, Bitmap bitmap) {
        qe e2 = cVar.e();
        i p2 = com.bumptech.glide.c.p(cVar.g());
        h<Bitmap> Z = com.bumptech.glide.c.p(cVar.g()).j().a(((ck) ((ck) ((ck) new ck().f(vd.b)).X(true)).S(true)).M(i2, i3));
        this.d = p2;
        Handler handler = new Handler(Looper.getMainLooper(), new c());
        this.e = e2;
        this.b = handler;
        this.h = Z;
        this.a = mcVar;
        l(mVar, bitmap);
    }

    private void j() {
        if (this.f && !this.g) {
            a aVar = this.n;
            if (aVar != null) {
                this.n = null;
                k(aVar);
                return;
            }
            this.g = true;
            long uptimeMillis = SystemClock.uptimeMillis() + ((long) this.a.d());
            this.a.b();
            this.k = new a(this.b, this.a.f(), uptimeMillis);
            this.h.a((ck) new ck().R(new xk(Double.valueOf(Math.random())))).i0(this.a).c0(this.k);
        }
    }

    /* access modifiers changed from: package-private */
    public void a() {
        this.c.clear();
        Bitmap bitmap = this.l;
        if (bitmap != null) {
            this.e.d(bitmap);
            this.l = null;
        }
        this.f = false;
        a aVar = this.i;
        if (aVar != null) {
            this.d.m(aVar);
            this.i = null;
        }
        a aVar2 = this.k;
        if (aVar2 != null) {
            this.d.m(aVar2);
            this.k = null;
        }
        a aVar3 = this.n;
        if (aVar3 != null) {
            this.d.m(aVar3);
            this.n = null;
        }
        this.a.clear();
        this.j = true;
    }

    /* access modifiers changed from: package-private */
    public ByteBuffer b() {
        return this.a.e().asReadOnlyBuffer();
    }

    /* access modifiers changed from: package-private */
    public Bitmap c() {
        a aVar = this.i;
        return aVar != null ? aVar.i() : this.l;
    }

    /* access modifiers changed from: package-private */
    public int d() {
        a aVar = this.i;
        if (aVar != null) {
            return aVar.f;
        }
        return -1;
    }

    /* access modifiers changed from: package-private */
    public Bitmap e() {
        return this.l;
    }

    /* access modifiers changed from: package-private */
    public int f() {
        return this.a.c();
    }

    /* access modifiers changed from: package-private */
    public int g() {
        return this.q;
    }

    /* access modifiers changed from: package-private */
    public int h() {
        return this.a.g() + this.o;
    }

    /* access modifiers changed from: package-private */
    public int i() {
        return this.p;
    }

    /* access modifiers changed from: package-private */
    public void k(a aVar) {
        this.g = false;
        if (this.j) {
            this.b.obtainMessage(2, aVar).sendToTarget();
        } else if (!this.f) {
            this.n = aVar;
        } else {
            if (aVar.i() != null) {
                Bitmap bitmap = this.l;
                if (bitmap != null) {
                    this.e.d(bitmap);
                    this.l = null;
                }
                a aVar2 = this.i;
                this.i = aVar;
                int size = this.c.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    this.c.get(size).a();
                }
                if (aVar2 != null) {
                    this.b.obtainMessage(2, aVar2).sendToTarget();
                }
            }
            j();
        }
    }

    /* access modifiers changed from: package-private */
    public void l(m<Bitmap> mVar, Bitmap bitmap) {
        Objects.requireNonNull(mVar, "Argument must not be null");
        this.m = mVar;
        Objects.requireNonNull(bitmap, "Argument must not be null");
        this.l = bitmap;
        this.h = this.h.a(new ck().T(mVar));
        this.o = hl.d(bitmap);
        this.p = bitmap.getWidth();
        this.q = bitmap.getHeight();
    }

    /* access modifiers changed from: package-private */
    public void m(b bVar) {
        if (this.j) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        } else if (!this.c.contains(bVar)) {
            boolean isEmpty = this.c.isEmpty();
            this.c.add(bVar);
            if (isEmpty && !this.f) {
                this.f = true;
                this.j = false;
                j();
            }
        } else {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
    }

    /* access modifiers changed from: package-private */
    public void n(b bVar) {
        this.c.remove(bVar);
        if (this.c.isEmpty()) {
            this.f = false;
        }
    }
}
