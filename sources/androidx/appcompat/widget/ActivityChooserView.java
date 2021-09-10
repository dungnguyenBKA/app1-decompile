package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.p;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class ActivityChooserView extends ViewGroup {
    final f b;
    private final g c;
    private final View d;
    private final Drawable e;
    final FrameLayout f;
    private final ImageView g;
    final FrameLayout h;
    private final ImageView i;
    private final int j;
    final DataSetObserver k;
    private final ViewTreeObserver.OnGlobalLayoutListener l;
    private ListPopupWindow m;
    int n;
    private boolean o;

    public static class InnerLayout extends LinearLayout {
        private static final int[] b = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            i0 t = i0.t(context, attributeSet, b);
            setBackgroundDrawable(t.g(0));
            t.v();
        }
    }

    class a extends DataSetObserver {
        a() {
        }

        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.b.notifyDataSetChanged();
        }

        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.b.notifyDataSetInvalidated();
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        public void onGlobalLayout() {
            if (!ActivityChooserView.this.c()) {
                return;
            }
            if (!ActivityChooserView.this.isShown()) {
                ActivityChooserView.this.b().dismiss();
                return;
            }
            ActivityChooserView.this.b().show();
            Objects.requireNonNull(ActivityChooserView.this);
        }
    }

    class c extends View.AccessibilityDelegate {
        c(ActivityChooserView activityChooserView) {
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            n3.s0(accessibilityNodeInfo).O(true);
        }
    }

    class d extends r {
        d(View view) {
            super(view);
        }

        @Override // androidx.appcompat.widget.r
        public p b() {
            return ActivityChooserView.this.b();
        }

        /* access modifiers changed from: protected */
        @Override // androidx.appcompat.widget.r
        public boolean c() {
            ActivityChooserView.this.d();
            return true;
        }

        /* access modifiers changed from: protected */
        @Override // androidx.appcompat.widget.r
        public boolean d() {
            ActivityChooserView.this.a();
            return true;
        }
    }

    class e extends DataSetObserver {
        e() {
        }

        public void onChanged() {
            super.onChanged();
            Objects.requireNonNull(ActivityChooserView.this.b);
            throw null;
        }
    }

    /* access modifiers changed from: private */
    public class f extends BaseAdapter {
        private int a = 4;
        private boolean b;
        private boolean c;

        f() {
        }

        public boolean a() {
            return this.b;
        }

        public int getCount() {
            throw null;
        }

        public Object getItem(int i) {
            if (this.c) {
                throw null;
            } else if (!this.b) {
                throw null;
            } else {
                throw null;
            }
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public int getItemViewType(int i) {
            if (!this.c) {
                return 0;
            }
            throw null;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (!this.c) {
                if (view == null || view.getId() != R.id.kl) {
                    view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R.layout.h, viewGroup, false);
                }
                ActivityChooserView.this.getContext().getPackageManager();
                ImageView imageView = (ImageView) view.findViewById(R.id.id);
                getItem(i);
                throw null;
            }
            throw null;
        }

        public int getViewTypeCount() {
            return 3;
        }
    }

    /* access modifiers changed from: private */
    public class g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        g() {
        }

        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.h) {
                activityChooserView.a();
                Objects.requireNonNull(ActivityChooserView.this.b);
                throw null;
            } else if (view == activityChooserView.f) {
                activityChooserView.e(activityChooserView.n);
                throw null;
            } else {
                throw new IllegalArgumentException();
            }
        }

        public void onDismiss() {
            Objects.requireNonNull(ActivityChooserView.this);
            Objects.requireNonNull(ActivityChooserView.this);
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ((f) adapterView.getAdapter()).getItemViewType(i);
            ActivityChooserView.this.a();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            Objects.requireNonNull(activityChooserView);
            activityChooserView.b.a();
            Objects.requireNonNull(ActivityChooserView.this.b);
            throw null;
        }

        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.h) {
                Objects.requireNonNull(activityChooserView.b);
                throw null;
            }
            throw new IllegalArgumentException();
        }
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public boolean a() {
        if (!c()) {
            return true;
        }
        b().dismiss();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.l);
        return true;
    }

    /* access modifiers changed from: package-private */
    public ListPopupWindow b() {
        if (this.m == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext(), null, R.attr.n7);
            this.m = listPopupWindow;
            listPopupWindow.r(this.b);
            this.m.s(this);
            this.m.y(true);
            this.m.A(this.c);
            ListPopupWindow listPopupWindow2 = this.m;
            listPopupWindow2.A.setOnDismissListener(this.c);
        }
        return this.m;
    }

    public boolean c() {
        return b().a();
    }

    public boolean d() {
        if (c() || !this.o) {
            return false;
        }
        e(this.n);
        throw null;
    }

    /* access modifiers changed from: package-private */
    public void e(int i2) {
        Objects.requireNonNull(this.b);
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Objects.requireNonNull(this.b);
        this.o = true;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Objects.requireNonNull(this.b);
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.l);
        }
        if (c()) {
            a();
        }
        this.o = false;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        this.d.layout(0, 0, i4 - i2, i5 - i3);
        if (!c()) {
            a();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        View view = this.d;
        if (this.h.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), 1073741824);
        }
        measureChild(view, i2, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.k = new a();
        this.l = new b();
        this.n = 4;
        int[] iArr = R$styleable.e;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, i2, 0);
        }
        this.n = obtainStyledAttributes.getInt(1, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(R.layout.g, (ViewGroup) this, true);
        g gVar = new g();
        this.c = gVar;
        View findViewById = findViewById(R.id.b5);
        this.d = findViewById;
        this.e = findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.g7);
        this.h = frameLayout;
        frameLayout.setOnClickListener(gVar);
        frameLayout.setOnLongClickListener(gVar);
        this.i = (ImageView) frameLayout.findViewById(R.id.iw);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R.id.gz);
        frameLayout2.setOnClickListener(gVar);
        frameLayout2.setAccessibilityDelegate(new c(this));
        frameLayout2.setOnTouchListener(new d(frameLayout2));
        this.f = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(R.id.iw);
        this.g = imageView;
        imageView.setImageDrawable(drawable);
        f fVar = new f();
        this.b = fVar;
        fVar.registerDataSetObserver(new e());
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.x));
    }
}
