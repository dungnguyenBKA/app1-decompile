package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.R$styleable;
import androidx.recyclerview.widget.RecyclerView;
import photoeditor.cutout.backgrounderaser.R;

public class ActionBarContainer extends FrameLayout {
    private boolean b;
    private View c;
    private View d;
    private View e;
    Drawable f;
    Drawable g;
    Drawable h;
    boolean i;
    boolean j;
    private int k;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b bVar = new b(this);
        int i2 = c3.g;
        setBackground(bVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.a);
        boolean z = false;
        this.f = obtainStyledAttributes.getDrawable(0);
        this.g = obtainStyledAttributes.getDrawable(2);
        this.k = obtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.qq) {
            this.i = true;
            this.h = obtainStyledAttributes.getDrawable(1);
        }
        obtainStyledAttributes.recycle();
        if (!this.i ? this.f == null && this.g == null : this.h == null) {
            z = true;
        }
        setWillNotDraw(z);
    }

    private int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean c(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    public View b() {
        return this.c;
    }

    public void d(Drawable drawable) {
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f);
        }
        this.f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.d;
            if (view != null) {
                this.f.setBounds(view.getLeft(), this.d.getTop(), this.d.getRight(), this.d.getBottom());
            }
        }
        boolean z = true;
        if (!this.i ? !(this.f == null && this.g == null) : this.h != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f;
        if (drawable != null && drawable.isStateful()) {
            this.f.setState(getDrawableState());
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null && drawable2.isStateful()) {
            this.g.setState(getDrawableState());
        }
        Drawable drawable3 = this.h;
        if (drawable3 != null && drawable3.isStateful()) {
            this.h.setState(getDrawableState());
        }
    }

    public void e(y yVar) {
        View view = this.c;
        if (view != null) {
            removeView(view);
        }
        this.c = null;
    }

    public void f(boolean z) {
        this.b = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.h;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.d = findViewById(R.id.an);
        this.e = findViewById(R.id.av);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.b || super.onInterceptTouchEvent(motionEvent);
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        Drawable drawable;
        super.onLayout(z, i2, i3, i4, i5);
        View view = this.c;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = (view == null || view.getVisibility() == 8) ? false : true;
        if (!(view == null || view.getVisibility() == 8)) {
            int measuredHeight = getMeasuredHeight();
            int i6 = ((FrameLayout.LayoutParams) view.getLayoutParams()).bottomMargin;
            view.layout(i2, (measuredHeight - view.getMeasuredHeight()) - i6, i4, measuredHeight - i6);
        }
        if (this.i) {
            Drawable drawable2 = this.h;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z2 = false;
            }
        } else {
            if (this.f != null) {
                if (this.d.getVisibility() == 0) {
                    this.f.setBounds(this.d.getLeft(), this.d.getTop(), this.d.getRight(), this.d.getBottom());
                } else {
                    View view2 = this.e;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f.setBounds(0, 0, 0, 0);
                    } else {
                        this.f.setBounds(this.e.getLeft(), this.e.getTop(), this.e.getRight(), this.e.getBottom());
                    }
                }
                z3 = true;
            }
            this.j = z4;
            if (!z4 || (drawable = this.g) == null) {
                z2 = z3;
            } else {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z2) {
            invalidate();
        }
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        if (this.d == null && View.MeasureSpec.getMode(i3) == Integer.MIN_VALUE && (i5 = this.k) >= 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i5, View.MeasureSpec.getSize(i3)), RecyclerView.UNDEFINED_DURATION);
        }
        super.onMeasure(i2, i3);
        if (this.d != null) {
            int mode = View.MeasureSpec.getMode(i3);
            View view = this.c;
            if (view != null && view.getVisibility() != 8 && mode != 1073741824) {
                if (!c(this.d)) {
                    i4 = a(this.d);
                } else {
                    i4 = !c(this.e) ? a(this.e) : 0;
                }
                setMeasuredDimension(getMeasuredWidth(), Math.min(i4 + a(this.c), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.h;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i2) {
        if (i2 != 0) {
            return super.startActionModeForChild(view, callback, i2);
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f && !this.i) || (drawable == this.g && this.j) || ((drawable == this.h && this.i) || super.verifyDrawable(drawable));
    }
}
