package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;

/* access modifiers changed from: package-private */
public final class f extends RecyclerView.s {
    private ViewPager2.g a;
    private final ViewPager2 b;
    private final RecyclerView c;
    private final LinearLayoutManager d;
    private int e;
    private int f;
    private a g = new a();
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;

    /* access modifiers changed from: private */
    public static final class a {
        int a;
        float b;
        int c;

        a() {
        }

        /* access modifiers changed from: package-private */
        public void a() {
            this.a = -1;
            this.b = 0.0f;
            this.c = 0;
        }
    }

    f(ViewPager2 viewPager2) {
        this.b = viewPager2;
        RecyclerView recyclerView = viewPager2.j;
        this.c = recyclerView;
        this.d = (LinearLayoutManager) recyclerView.getLayoutManager();
        j();
    }

    private void c(int i2) {
        ViewPager2.g gVar = this.a;
        if (gVar != null) {
            gVar.c(i2);
        }
    }

    private void d(int i2) {
        if ((this.e != 3 || this.f != 0) && this.f != i2) {
            this.f = i2;
            ViewPager2.g gVar = this.a;
            if (gVar != null) {
                gVar.a(i2);
            }
        }
    }

    private void j() {
        this.e = 0;
        this.f = 0;
        this.g.a();
        this.h = -1;
        this.i = -1;
        this.j = false;
        this.k = false;
        this.m = false;
        this.l = false;
    }

    private void l() {
        int i2;
        a aVar = this.g;
        int x1 = this.d.x1();
        aVar.a = x1;
        if (x1 == -1) {
            aVar.a();
            return;
        }
        View w = this.d.w(x1);
        if (w == null) {
            aVar.a();
            return;
        }
        int Q = this.d.Q(w);
        int Z = this.d.Z(w);
        int c0 = this.d.c0(w);
        int A = this.d.A(w);
        ViewGroup.LayoutParams layoutParams = w.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            Q += marginLayoutParams.leftMargin;
            Z += marginLayoutParams.rightMargin;
            c0 += marginLayoutParams.topMargin;
            A += marginLayoutParams.bottomMargin;
        }
        int height = w.getHeight() + c0 + A;
        int width = w.getWidth() + Q + Z;
        if (this.d.I1() == 0) {
            i2 = (w.getLeft() - Q) - this.c.getPaddingLeft();
            if (this.b.f()) {
                i2 = -i2;
            }
            height = width;
        } else {
            i2 = (w.getTop() - c0) - this.c.getPaddingTop();
        }
        int i3 = -i2;
        aVar.c = i3;
        if (i3 >= 0) {
            aVar.b = height == 0 ? 0.0f : ((float) i3) / ((float) height);
        } else if (new b(this.d).b()) {
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        } else {
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(aVar.c)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public void a(RecyclerView recyclerView, int i2) {
        ViewPager2.g gVar;
        int i3 = this.e;
        boolean z = true;
        if (!(i3 == 1 && this.f == 1) && i2 == 1) {
            this.m = false;
            this.e = 1;
            int i4 = this.i;
            if (i4 != -1) {
                this.h = i4;
                this.i = -1;
            } else if (this.h == -1) {
                this.h = this.d.x1();
            }
            d(1);
            return;
        }
        if (!(i3 == 1 || i3 == 4) || i2 != 2) {
            if ((i3 == 1 || i3 == 4) && i2 == 0) {
                l();
                if (!this.k) {
                    int i5 = this.g.a;
                    if (!(i5 == -1 || (gVar = this.a) == null)) {
                        gVar.b(i5, 0.0f, 0);
                    }
                } else {
                    a aVar = this.g;
                    if (aVar.c == 0) {
                        int i6 = this.h;
                        int i7 = aVar.a;
                        if (i6 != i7) {
                            c(i7);
                        }
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    d(0);
                    j();
                }
            }
            if (this.e == 2 && i2 == 0 && this.l) {
                l();
                a aVar2 = this.g;
                if (aVar2.c == 0) {
                    int i8 = this.i;
                    int i9 = aVar2.a;
                    if (i8 != i9) {
                        if (i9 == -1) {
                            i9 = 0;
                        }
                        c(i9);
                    }
                    d(0);
                    j();
                }
            }
        } else if (this.k) {
            d(2);
            this.j = true;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001d, code lost:
        if ((r6 < 0) == r4.b.f()) goto L_0x0022;
     */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0039  */
    @Override // androidx.recyclerview.widget.RecyclerView.s
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(androidx.recyclerview.widget.RecyclerView r5, int r6, int r7) {
        /*
        // Method dump skipped, instructions count: 118
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.f.b(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    /* access modifiers changed from: package-private */
    public double e() {
        l();
        a aVar = this.g;
        double d2 = (double) aVar.a;
        double d3 = (double) aVar.b;
        Double.isNaN(d2);
        Double.isNaN(d3);
        return d2 + d3;
    }

    /* access modifiers changed from: package-private */
    public int f() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public boolean g() {
        return this.m;
    }

    /* access modifiers changed from: package-private */
    public boolean h() {
        return this.f == 0;
    }

    /* access modifiers changed from: package-private */
    public void i(int i2, boolean z) {
        ViewPager2.g gVar;
        this.e = z ? 2 : 3;
        boolean z2 = false;
        this.m = false;
        if (this.i != i2) {
            z2 = true;
        }
        this.i = i2;
        d(2);
        if (z2 && (gVar = this.a) != null) {
            gVar.c(i2);
        }
    }

    /* access modifiers changed from: package-private */
    public void k(ViewPager2.g gVar) {
        this.a = gVar;
    }
}
