package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.p;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import java.lang.reflect.Method;
import photoeditor.cutout.backgrounderaser.R;

public class ListPopupWindow implements p {
    private static Method B;
    private static Method C;
    private static Method D;
    PopupWindow A;
    private Context b;
    private ListAdapter c;
    p d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private boolean l;
    private int m;
    int n;
    private int o;
    private DataSetObserver p;
    private View q;
    private AdapterView.OnItemClickListener r;
    final e s;
    private final d t;
    private final c u;
    private final a v;
    final Handler w;
    private final Rect x;
    private Rect y;
    private boolean z;

    /* access modifiers changed from: private */
    public class a implements Runnable {
        a() {
        }

        public void run() {
            p pVar = ListPopupWindow.this.d;
            if (pVar != null) {
                pVar.c(true);
                pVar.requestLayout();
            }
        }
    }

    /* access modifiers changed from: private */
    public class b extends DataSetObserver {
        b() {
        }

        public void onChanged() {
            if (ListPopupWindow.this.a()) {
                ListPopupWindow.this.show();
            }
        }

        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    /* access modifiers changed from: private */
    public class c implements AbsListView.OnScrollListener {
        c() {
        }

        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        public void onScrollStateChanged(AbsListView absListView, int i) {
            boolean z = true;
            if (i == 1) {
                if (ListPopupWindow.this.A.getInputMethodMode() != 2) {
                    z = false;
                }
                if (!z && ListPopupWindow.this.A.getContentView() != null) {
                    ListPopupWindow listPopupWindow = ListPopupWindow.this;
                    listPopupWindow.w.removeCallbacks(listPopupWindow.s);
                    ListPopupWindow.this.s.run();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public class d implements View.OnTouchListener {
        d() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = ListPopupWindow.this.A) != null && popupWindow.isShowing() && x >= 0 && x < ListPopupWindow.this.A.getWidth() && y >= 0 && y < ListPopupWindow.this.A.getHeight()) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.w.postDelayed(listPopupWindow.s, 250);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ListPopupWindow listPopupWindow2 = ListPopupWindow.this;
                listPopupWindow2.w.removeCallbacks(listPopupWindow2.s);
                return false;
            }
        }
    }

    /* access modifiers changed from: private */
    public class e implements Runnable {
        e() {
        }

        public void run() {
            p pVar = ListPopupWindow.this.d;
            if (pVar != null) {
                int i = c3.g;
                if (pVar.isAttachedToWindow() && ListPopupWindow.this.d.getCount() > ListPopupWindow.this.d.getChildCount()) {
                    int childCount = ListPopupWindow.this.d.getChildCount();
                    ListPopupWindow listPopupWindow = ListPopupWindow.this;
                    if (childCount <= listPopupWindow.n) {
                        listPopupWindow.A.setInputMethodMode(2);
                        ListPopupWindow.this.show();
                    }
                }
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                B = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                D = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                C = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.n7);
    }

    public void A(AdapterView.OnItemClickListener onItemClickListener) {
        this.r = onItemClickListener;
    }

    public void B(boolean z2) {
        this.l = true;
        this.k = z2;
    }

    public void C(int i2) {
        this.o = i2;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        return this.A.isShowing();
    }

    /* access modifiers changed from: package-private */
    public p d(Context context, boolean z2) {
        return new p(context, z2);
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        this.A.dismiss();
        this.A.setContentView(null);
        this.d = null;
        this.w.removeCallbacks(this.s);
    }

    public int e() {
        return this.f;
    }

    public boolean f() {
        return this.z;
    }

    public void g(Drawable drawable) {
        this.A.setBackgroundDrawable(drawable);
    }

    public int h() {
        return this.g;
    }

    public void i(int i2) {
        this.g = i2;
    }

    public Drawable k() {
        return this.A.getBackground();
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView l() {
        return this.d;
    }

    public void n(int i2) {
        this.h = i2;
        this.j = true;
    }

    public int q() {
        if (!this.j) {
            return 0;
        }
        return this.h;
    }

    public void r(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.p;
        if (dataSetObserver == null) {
            this.p = new b();
        } else {
            ListAdapter listAdapter2 = this.c;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.c = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.p);
        }
        p pVar = this.d;
        if (pVar != null) {
            pVar.setAdapter(this.c);
        }
    }

    public void s(View view) {
        this.q = view;
    }

    @Override // androidx.appcompat.view.menu.p
    public void show() {
        int i2;
        int i3;
        int i4;
        p pVar;
        int i5;
        if (this.d == null) {
            p d2 = d(this.b, !this.z);
            this.d = d2;
            d2.setAdapter(this.c);
            this.d.setOnItemClickListener(this.r);
            this.d.setFocusable(true);
            this.d.setFocusableInTouchMode(true);
            this.d.setOnItemSelectedListener(new s(this));
            this.d.setOnScrollListener(this.u);
            this.A.setContentView(this.d);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.A.getContentView();
        }
        Drawable background = this.A.getBackground();
        int i6 = 0;
        if (background != null) {
            background.getPadding(this.x);
            Rect rect = this.x;
            int i7 = rect.top;
            i2 = rect.bottom + i7;
            if (!this.j) {
                this.h = -i7;
            }
        } else {
            this.x.setEmpty();
            i2 = 0;
        }
        boolean z2 = this.A.getInputMethodMode() == 2;
        View view = this.q;
        int i8 = this.h;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = C;
            if (method != null) {
                try {
                    i3 = ((Integer) method.invoke(this.A, view, Integer.valueOf(i8), Boolean.valueOf(z2))).intValue();
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            }
            i3 = this.A.getMaxAvailableHeight(view, i8);
        } else {
            i3 = this.A.getMaxAvailableHeight(view, i8, z2);
        }
        if (this.e == -1) {
            i4 = i3 + i2;
        } else {
            int i9 = this.f;
            if (i9 == -2) {
                int i10 = this.b.getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = this.x;
                i5 = View.MeasureSpec.makeMeasureSpec(i10 - (rect2.left + rect2.right), RecyclerView.UNDEFINED_DURATION);
            } else if (i9 != -1) {
                i5 = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
            } else {
                int i11 = this.b.getResources().getDisplayMetrics().widthPixels;
                Rect rect3 = this.x;
                i5 = View.MeasureSpec.makeMeasureSpec(i11 - (rect3.left + rect3.right), 1073741824);
            }
            int a2 = this.d.a(i5, 0, -1, i3 + 0, -1);
            i4 = a2 + (a2 > 0 ? this.d.getPaddingBottom() + this.d.getPaddingTop() + i2 + 0 : 0);
        }
        boolean z3 = this.A.getInputMethodMode() == 2;
        androidx.core.widget.c.i(this.A, this.i);
        if (this.A.isShowing()) {
            View view2 = this.q;
            int i12 = c3.g;
            if (view2.isAttachedToWindow()) {
                int i13 = this.f;
                if (i13 == -1) {
                    i13 = -1;
                } else if (i13 == -2) {
                    i13 = this.q.getWidth();
                }
                int i14 = this.e;
                if (i14 == -1) {
                    if (!z3) {
                        i4 = -1;
                    }
                    if (z3) {
                        this.A.setWidth(this.f == -1 ? -1 : 0);
                        this.A.setHeight(0);
                    } else {
                        PopupWindow popupWindow = this.A;
                        if (this.f == -1) {
                            i6 = -1;
                        }
                        popupWindow.setWidth(i6);
                        this.A.setHeight(-1);
                    }
                } else if (i14 != -2) {
                    i4 = i14;
                }
                this.A.setOutsideTouchable(true);
                this.A.update(this.q, this.g, this.h, i13 < 0 ? -1 : i13, i4 < 0 ? -1 : i4);
                return;
            }
            return;
        }
        int i15 = this.f;
        if (i15 == -1) {
            i15 = -1;
        } else if (i15 == -2) {
            i15 = this.q.getWidth();
        }
        int i16 = this.e;
        if (i16 == -1) {
            i4 = -1;
        } else if (i16 != -2) {
            i4 = i16;
        }
        this.A.setWidth(i15);
        this.A.setHeight(i4);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = B;
            if (method2 != null) {
                try {
                    method2.invoke(this.A, Boolean.TRUE);
                } catch (Exception unused2) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.A.setIsClippedToScreen(true);
        }
        this.A.setOutsideTouchable(true);
        this.A.setTouchInterceptor(this.t);
        if (this.l) {
            androidx.core.widget.c.g(this.A, this.k);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = D;
            if (method3 != null) {
                try {
                    method3.invoke(this.A, this.y);
                } catch (Exception e2) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                }
            }
        } else {
            this.A.setEpicenterBounds(this.y);
        }
        this.A.showAsDropDown(this.q, this.g, this.h, this.m);
        this.d.setSelection(-1);
        if ((!this.z || this.d.isInTouchMode()) && (pVar = this.d) != null) {
            pVar.c(true);
            pVar.requestLayout();
        }
        if (!this.z) {
            this.w.post(this.v);
        }
    }

    public void t(int i2) {
        this.A.setAnimationStyle(i2);
    }

    public void u(int i2) {
        Drawable background = this.A.getBackground();
        if (background != null) {
            background.getPadding(this.x);
            Rect rect = this.x;
            this.f = rect.left + rect.right + i2;
            return;
        }
        this.f = i2;
    }

    public void v(int i2) {
        this.m = i2;
    }

    public void w(Rect rect) {
        this.y = rect != null ? new Rect(rect) : null;
    }

    public void x(int i2) {
        this.A.setInputMethodMode(i2);
    }

    public void y(boolean z2) {
        this.z = z2;
        this.A.setFocusable(z2);
    }

    public void z(PopupWindow.OnDismissListener onDismissListener) {
        this.A.setOnDismissListener(onDismissListener);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.e = -2;
        this.f = -2;
        this.i = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        this.m = 0;
        this.n = Integer.MAX_VALUE;
        this.o = 0;
        this.s = new e();
        this.t = new d();
        this.u = new c();
        this.v = new a();
        this.x = new Rect();
        this.b = context;
        this.w = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.p, i2, i3);
        this.g = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.h = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.j = true;
        }
        obtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i2, i3);
        this.A = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }
}
