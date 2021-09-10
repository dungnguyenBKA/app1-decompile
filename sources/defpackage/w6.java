package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: w6  reason: default package */
public class w6 {
    private static int a;
    private static int b;
    private static int c;
    private static int d;

    /* access modifiers changed from: private */
    /* renamed from: w6$a */
    public static class a implements ViewTreeObserver.OnGlobalLayoutListener {
        private int b = 0;
        private final ViewGroup c;
        private final cn.dreamtobe.kpswitch.b d;
        private final boolean e;
        private final boolean f;
        private final boolean g;
        private final int h;
        private boolean i;
        private final b j;
        private final int k;
        private boolean l = false;
        private int m;

        a(boolean z, boolean z2, boolean z3, ViewGroup viewGroup, cn.dreamtobe.kpswitch.b bVar, b bVar2, int i2) {
            this.c = viewGroup;
            this.d = bVar;
            this.e = z;
            this.f = z2;
            this.g = z3;
            this.h = x6.a(viewGroup.getContext());
            this.j = bVar2;
            this.k = i2;
        }

        private Context a() {
            return this.c.getContext();
        }

        @TargetApi(13)
        public void onGlobalLayout() {
            int i2;
            boolean z;
            int i3;
            int e2;
            View childAt = this.c.getChildAt(0);
            View view = (View) this.c.getParent();
            Rect rect = new Rect();
            if (this.f) {
                view.getWindowVisibleDisplayFrame(rect);
                i2 = rect.bottom - rect.top;
                if (!this.l) {
                    this.l = i2 == this.k;
                }
                if (!this.l) {
                    i2 += this.h;
                }
            } else {
                childAt.getWindowVisibleDisplayFrame(rect);
                i2 = rect.bottom - rect.top;
            }
            if (this.b == 0) {
                this.b = i2;
                this.d.d(w6.e(a()));
            } else {
                if (u6.d(this.e, this.f, this.g)) {
                    i3 = ((View) this.c.getParent()).getHeight() - i2;
                } else {
                    i3 = Math.abs(i2 - this.b);
                }
                if (i3 > w6.d(a())) {
                    if (i3 == this.h) {
                        Log.w("KeyboardStatusListener", String.format("On global layout change get keyboard height just equal statusBar height %d", Integer.valueOf(i3)));
                    } else if (w6.a(a(), i3) && this.d.getHeight() != (e2 = w6.e(a()))) {
                        this.d.d(e2);
                    }
                }
            }
            View view2 = (View) this.c.getParent();
            int height = view2.getHeight() - view2.getPaddingTop();
            if (u6.d(this.e, this.f, this.g)) {
                z = (this.f || height - i2 != this.h) ? height > i2 : this.i;
            } else {
                int i4 = this.c.getResources().getDisplayMetrics().heightPixels;
                if (this.f || i4 != height) {
                    int i5 = this.m;
                    if (i5 == 0) {
                        z = this.i;
                    } else {
                        z = i2 < i5 - w6.d(a());
                    }
                    this.m = Math.max(this.m, height);
                } else {
                    Log.w("KeyboardStatusListener", String.format("skip the keyboard status calculate, the current activity is paused. and phone-display-height %d, root-height+actionbar-height %d", Integer.valueOf(i4), Integer.valueOf(height)));
                    this.b = i2;
                }
            }
            if (this.i != z) {
                String.format("displayHeight %d actionBarOverlayLayoutHeight %d keyboard status change: %B", Integer.valueOf(i2), Integer.valueOf(height), Boolean.valueOf(z));
                this.d.a(z);
                b bVar = this.j;
                if (bVar != null) {
                    bVar.a(z);
                }
            }
            this.i = z;
            this.b = i2;
        }
    }

    /* renamed from: w6$b */
    public interface b {
        void a(boolean z);
    }

    static boolean a(Context context, int i) {
        if (a == i || i < 0) {
            return false;
        }
        a = i;
        String.format("save keyboard: %d", Integer.valueOf(i));
        return v6.b(context, i);
    }

    public static ViewTreeObserver.OnGlobalLayoutListener b(Activity activity, cn.dreamtobe.kpswitch.b bVar) {
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(16908290);
        boolean b2 = u6.b(activity);
        boolean e = u6.e(activity);
        boolean fitsSystemWindows = ((ViewGroup) activity.findViewById(16908290)).getChildAt(0).getFitsSystemWindows();
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        a aVar = new a(b2, e, fitsSystemWindows, viewGroup, bVar, null, point.y);
        viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(aVar);
        return aVar;
    }

    public static int c(Context context) {
        if (a == 0) {
            Resources resources = context.getResources();
            if (c == 0) {
                c = resources.getDimensionPixelSize(R.dimen.rf);
            }
            a = v6.a(context, c);
        }
        return a;
    }

    public static int d(Context context) {
        if (d == 0) {
            d = context.getResources().getDimensionPixelSize(R.dimen.re);
        }
        return d;
    }

    public static int e(Context context) {
        Resources resources = context.getResources();
        if (b == 0) {
            b = resources.getDimensionPixelSize(R.dimen.rd);
        }
        int i = b;
        Resources resources2 = context.getResources();
        if (c == 0) {
            c = resources2.getDimensionPixelSize(R.dimen.rf);
        }
        return Math.min(i, Math.max(c, c(context)));
    }

    public static void f(View view) {
        view.clearFocus();
        ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static void g(View view) {
        view.requestFocus();
        ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
    }
}
