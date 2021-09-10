package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: ik  reason: default package */
public abstract class ik<T extends View, Z> implements nk<Z> {
    private final a b;
    protected final T c;

    /* renamed from: ik$a */
    static final class a {
        static Integer d;
        private final View a;
        private final List<mk> b = new ArrayList();
        private ViewTreeObserver$OnPreDrawListenerC0113a c;

        /* access modifiers changed from: private */
        /* renamed from: ik$a$a  reason: collision with other inner class name */
        public static final class ViewTreeObserver$OnPreDrawListenerC0113a implements ViewTreeObserver.OnPreDrawListener {
            private final WeakReference<a> b;

            ViewTreeObserver$OnPreDrawListenerC0113a(a aVar) {
                this.b = new WeakReference<>(aVar);
            }

            public boolean onPreDraw() {
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    String str = "OnGlobalLayoutListener called attachStateListener=" + this;
                }
                a aVar = this.b.get();
                if (aVar == null) {
                    return true;
                }
                aVar.a();
                return true;
            }
        }

        a(View view) {
            this.a = view;
        }

        private int d(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.a.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            if (Log.isLoggable("CustomViewTarget", 4)) {
                Log.i("CustomViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            Context context = this.a.getContext();
            if (d == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                Objects.requireNonNull(windowManager, "Argument must not be null");
                Display defaultDisplay = windowManager.getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                d = Integer.valueOf(Math.max(point.x, point.y));
            }
            return d.intValue();
        }

        private int e() {
            int paddingBottom = this.a.getPaddingBottom() + this.a.getPaddingTop();
            ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
            return d(this.a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingBottom);
        }

        private int f() {
            int paddingRight = this.a.getPaddingRight() + this.a.getPaddingLeft();
            ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
            return d(this.a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        }

        private boolean g(int i, int i2) {
            if (i > 0 || i == Integer.MIN_VALUE) {
                if (i2 > 0 || i2 == Integer.MIN_VALUE) {
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public void a() {
            if (!this.b.isEmpty()) {
                int f = f();
                int e = e();
                if (g(f, e)) {
                    Iterator it = new ArrayList(this.b).iterator();
                    while (it.hasNext()) {
                        ((mk) it.next()).a(f, e);
                    }
                    b();
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void b() {
            ViewTreeObserver viewTreeObserver = this.a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.c);
            }
            this.c = null;
            this.b.clear();
        }

        /* access modifiers changed from: package-private */
        public void c(mk mkVar) {
            int f = f();
            int e = e();
            if (g(f, e)) {
                mkVar.a(f, e);
                return;
            }
            if (!this.b.contains(mkVar)) {
                this.b.add(mkVar);
            }
            if (this.c == null) {
                ViewTreeObserver viewTreeObserver = this.a.getViewTreeObserver();
                ViewTreeObserver$OnPreDrawListenerC0113a aVar = new ViewTreeObserver$OnPreDrawListenerC0113a(this);
                this.c = aVar;
                viewTreeObserver.addOnPreDrawListener(aVar);
            }
        }

        /* access modifiers changed from: package-private */
        public void h(mk mkVar) {
            this.b.remove(mkVar);
        }
    }

    public ik(T t) {
        Objects.requireNonNull(t, "Argument must not be null");
        this.c = t;
        this.b = new a(t);
    }

    @Override // defpackage.nk
    public final void a(mk mkVar) {
        this.b.h(mkVar);
    }

    @Override // defpackage.nk
    public final void c(zj zjVar) {
        this.c.setTag(R.id.hy, zjVar);
    }

    @Override // defpackage.nk
    public final void e(Drawable drawable) {
    }

    @Override // defpackage.nk
    public final zj f() {
        Object tag = this.c.getTag(R.id.hy);
        if (tag == null) {
            return null;
        }
        if (tag instanceof zj) {
            return (zj) tag;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // defpackage.nk
    public final void g(Drawable drawable) {
        this.b.b();
    }

    @Override // defpackage.nk
    public final void h(mk mkVar) {
        this.b.c(mkVar);
    }

    @Override // defpackage.gj
    public void onDestroy() {
    }

    @Override // defpackage.gj
    public void onStart() {
    }

    @Override // defpackage.gj
    public void onStop() {
    }

    public String toString() {
        StringBuilder q = ic.q("Target for: ");
        q.append(this.c);
        return q.toString();
    }
}
