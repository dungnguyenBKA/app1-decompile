package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.widget.ImageView;
import defpackage.ql;
import java.lang.ref.WeakReference;
import java.util.Objects;
import org.apache.http.HttpStatus;

/* renamed from: sl  reason: default package */
public abstract class sl {
    protected ql a;
    private ql.a b;
    private Drawable c;
    private boolean d = true;
    private boolean e = false;
    protected boolean f = false;
    private final Object g = new Object();
    protected Context h;
    protected Resources i;

    /* access modifiers changed from: protected */
    /* renamed from: sl$a */
    public static class a extends BitmapDrawable {
        private final WeakReference<b> a;

        public a(Resources resources, Bitmap bitmap, b bVar) {
            super(resources, (Bitmap) null);
            this.a = new WeakReference<>(bVar);
        }

        public b a() {
            return this.a.get();
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: sl$b */
    public class b extends ml<Void, Void, BitmapDrawable> {
        private Object n;
        private d o;
        private int p;
        private int q;
        private final WeakReference<ImageView> r;

        public b(Object obj, ImageView imageView, int i, int i2, d dVar) {
            this.n = obj;
            this.o = dVar;
            this.p = i;
            this.q = i2;
            this.r = new WeakReference<>(imageView);
        }

        private ImageView o() {
            ImageView imageView = this.r.get();
            if (this == sl.h(imageView)) {
                return imageView;
            }
            return null;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object[]] */
        /* access modifiers changed from: protected */
        /* JADX WARNING: Removed duplicated region for block: B:39:0x00a4  */
        @Override // defpackage.ml
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public android.graphics.drawable.BitmapDrawable f(java.lang.Void[] r8) {
            /*
            // Method dump skipped, instructions count: 188
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.sl.b.f(java.lang.Object[]):java.lang.Object");
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        /* access modifiers changed from: protected */
        @Override // defpackage.ml
        public void l(BitmapDrawable bitmapDrawable) {
            BitmapDrawable bitmapDrawable2 = bitmapDrawable;
            if (j() || sl.this.e) {
                bitmapDrawable2 = null;
            }
            ImageView o2 = o();
            d dVar = this.o;
            if (!(dVar == null || o2 == null)) {
                dVar.d(this.n, o2, bitmapDrawable2);
            }
            if (!(bitmapDrawable2 == null || o2 == null)) {
                sl.c(sl.this, this.n, o2, bitmapDrawable2, this.o);
            }
            if (this.o != null) {
                if (bitmapDrawable2 != null ? cm.l(bitmapDrawable2.getBitmap()) : false) {
                    this.o.b(this.n, o2, bitmapDrawable2);
                }
            }
            if (bitmapDrawable2 == null) {
                if (o2 != null) {
                    o2.setImageDrawable(null);
                }
                d dVar2 = this.o;
                if (dVar2 == null) {
                    return;
                }
                if (o2 != null) {
                    dVar2.a(this.n, -7, "ERROR_BACKGROUND_TASK_POST_NULL_BITMAP_-7");
                } else {
                    k(null);
                }
            }
        }

        /* access modifiers changed from: protected */
        /* renamed from: p */
        public void k(BitmapDrawable bitmapDrawable) {
            d dVar = this.o;
            if (dVar != null) {
                dVar.e(this.n, this.r.get(), bitmapDrawable);
            }
            synchronized (sl.this.g) {
                sl.this.g.notifyAll();
            }
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: sl$c */
    public class c extends ml<Object, Void, Void> {
        protected c() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* access modifiers changed from: protected */
        @Override // defpackage.ml
        public Void f(Object[] objArr) {
            int intValue = ((Integer) objArr[0]).intValue();
            if (intValue == 0) {
                sl slVar = sl.this;
                Objects.requireNonNull(slVar);
                try {
                    ql qlVar = slVar.a;
                    if (qlVar != null) {
                        qlVar.d();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (intValue == 1) {
                ql qlVar2 = sl.this.a;
                if (qlVar2 != null) {
                    qlVar2.n();
                }
            } else if (intValue == 2) {
                ql qlVar3 = sl.this.a;
                if (qlVar3 != null) {
                    qlVar3.f();
                }
            } else if (intValue == 3) {
                sl slVar2 = sl.this;
                if (slVar2.a != null) {
                    slVar2.a = null;
                }
            }
            return null;
        }
    }

    /* renamed from: sl$d */
    public interface d {
        void a(Object obj, int i, Object obj2);

        void b(Object obj, ImageView imageView, BitmapDrawable bitmapDrawable);

        void c(Object obj, ImageView imageView, BitmapDrawable bitmapDrawable);

        void d(Object obj, ImageView imageView, BitmapDrawable bitmapDrawable);

        void e(Object obj, ImageView imageView, BitmapDrawable bitmapDrawable);
    }

    protected sl(Context context) {
        this.h = context;
        this.i = context.getResources();
    }

    static void c(sl slVar, Object obj, ImageView imageView, BitmapDrawable bitmapDrawable, d dVar) {
        if (slVar.d) {
            TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{new ColorDrawable(slVar.i.getColor(17170445)), bitmapDrawable});
            imageView.setBackgroundDrawable(slVar.c);
            imageView.setImageDrawable(transitionDrawable);
            transitionDrawable.startTransition(HttpStatus.SC_OK);
        } else {
            imageView.setImageDrawable(bitmapDrawable);
        }
        if (dVar != null) {
            dVar.c(obj, imageView, bitmapDrawable);
        }
    }

    /* access modifiers changed from: private */
    public static b h(ImageView imageView) {
        if (imageView == null) {
            return null;
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof a) {
            return ((a) drawable).a();
        }
        return null;
    }

    public void e(Context context, ql.a aVar) {
        this.b = aVar;
        this.a = ql.k(aVar);
        new c().g(1);
    }

    public void f() {
        ql qlVar = this.a;
        if (qlVar != null) {
            qlVar.e();
        }
    }

    public void g() {
        new c().g(3);
    }

    /* access modifiers changed from: protected */
    public abstract String i(Object obj);

    public void j(Object obj, ImageView imageView, int i2, int i3) {
        if (obj != null) {
            ql qlVar = this.a;
            BitmapDrawable h2 = qlVar != null ? qlVar.h(i(obj)) : null;
            if (h2 != null) {
                imageView.setImageDrawable(h2);
                return;
            }
            b h3 = h(imageView);
            boolean z = true;
            if (h3 != null) {
                Object obj2 = h3.n;
                if (obj2 == null || !obj2.equals(obj)) {
                    imageView.setImageDrawable(null);
                    h3.e(true);
                } else {
                    z = false;
                }
            }
            if (z) {
                b bVar = new b(obj, imageView, i2, i3, null);
                imageView.setImageDrawable(new a(this.i, null, bVar));
                bVar.i(ml.j, new Void[0]);
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract Bitmap k(Object obj, int i2, int i3, d dVar);

    public void l(boolean z) {
        this.e = z;
        o(false);
    }

    public void m(boolean z) {
        this.d = z;
    }

    public void n(int i2) {
        this.c = new ColorDrawable(this.i.getColor(i2));
    }

    public void o(boolean z) {
        synchronized (this.g) {
            this.f = z;
            if (!z) {
                this.g.notifyAll();
            }
        }
    }
}
