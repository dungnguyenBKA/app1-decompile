package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$styleable;
import androidx.recyclerview.widget.RecyclerView;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public abstract class a extends ViewGroup {
    protected final C0003a b;
    protected final Context c;
    protected ActionMenuView d;
    protected ActionMenuPresenter e;
    protected int f;
    protected h3 g;
    private boolean h;
    private boolean i;

    /* access modifiers changed from: protected */
    /* renamed from: androidx.appcompat.widget.a$a  reason: collision with other inner class name */
    public class C0003a implements i3 {
        private boolean a = false;
        int b;

        protected C0003a() {
        }

        @Override // defpackage.i3
        public void a(View view) {
            this.a = true;
        }

        @Override // defpackage.i3
        public void b(View view) {
            if (!this.a) {
                a aVar = a.this;
                aVar.g = null;
                a.super.setVisibility(this.b);
            }
        }

        @Override // defpackage.i3
        public void c(View view) {
            a.super.setVisibility(0);
            this.a = false;
        }
    }

    a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* access modifiers changed from: protected */
    public int c(View view, int i2, int i3, int i4) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, RecyclerView.UNDEFINED_DURATION), i3);
        return Math.max(0, (i2 - view.getMeasuredWidth()) - i4);
    }

    /* access modifiers changed from: protected */
    public int d(View view, int i2, int i3, int i4, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = ((i4 - measuredHeight) / 2) + i3;
        if (z) {
            view.layout(i2 - measuredWidth, i5, i2, measuredHeight + i5);
        } else {
            view.layout(i2, i5, i2 + measuredWidth, measuredHeight + i5);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.a, R.attr.f, 0);
        ((ActionBarContextView) this).f = obtainStyledAttributes.getLayoutDimension(13, 0);
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.A();
        }
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.i = false;
        }
        if (!this.i) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.i = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.i = false;
        }
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.h = false;
        }
        if (!this.h) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.h = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.h = false;
        }
        return true;
    }

    public void setVisibility(int i2) {
        if (i2 != getVisibility()) {
            h3 h3Var = this.g;
            if (h3Var != null) {
                h3Var.b();
            }
            super.setVisibility(i2);
        }
    }

    a(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.b = new C0003a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.c, typedValue, true) || typedValue.resourceId == 0) {
            this.c = context;
        } else {
            this.c = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }
}
