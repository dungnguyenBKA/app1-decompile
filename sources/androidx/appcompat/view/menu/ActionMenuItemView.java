package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.l0;
import androidx.appcompat.widget.r;

public class ActionMenuItemView extends AppCompatTextView implements n.a, View.OnClickListener, ActionMenuView.a {
    i e;
    private CharSequence f;
    private Drawable g;
    g.b h;
    private r i;
    b j;
    private boolean k;
    private int l;
    private int m;
    private int n;

    private class a extends r {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.r
        public p b() {
            b bVar = ActionMenuItemView.this.j;
            if (bVar != null) {
                return bVar.a();
            }
            return null;
        }

        /* access modifiers changed from: protected */
        @Override // androidx.appcompat.widget.r
        public boolean c() {
            p b;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            g.b bVar = actionMenuItemView.h;
            if (bVar == null || !bVar.a(actionMenuItemView.e) || (b = b()) == null || !b.a()) {
                return false;
            }
            return true;
        }
    }

    public static abstract class b {
        public abstract p a();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private boolean o() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        return i2 >= 480 || (i2 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    private void p() {
        CharSequence charSequence;
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f);
        if (this.g != null && (!this.e.w() || !this.k)) {
            z = false;
        }
        boolean z3 = z2 & z;
        CharSequence charSequence2 = null;
        setText(z3 ? this.f : null);
        CharSequence contentDescription = this.e.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            if (z3) {
                charSequence = null;
            } else {
                charSequence = this.e.getTitle();
            }
            setContentDescription(charSequence);
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.e.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            if (!z3) {
                charSequence2 = this.e.getTitle();
            }
            l0.b(this, charSequence2);
            return;
        }
        l0.b(this, tooltipText);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean b() {
        return l();
    }

    @Override // androidx.appcompat.view.menu.n.a
    public i c() {
        return this.e;
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean e() {
        return l() && this.e.getIcon() == null;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean f() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void k(i iVar, int i2) {
        this.e = iVar;
        Drawable icon = iVar.getIcon();
        this.g = icon;
        int i3 = 0;
        if (icon != null) {
            int intrinsicWidth = icon.getIntrinsicWidth();
            int intrinsicHeight = icon.getIntrinsicHeight();
            int i4 = this.n;
            if (intrinsicWidth > i4) {
                intrinsicHeight = (int) (((float) intrinsicHeight) * (((float) i4) / ((float) intrinsicWidth)));
                intrinsicWidth = i4;
            }
            if (intrinsicHeight > i4) {
                intrinsicWidth = (int) (((float) intrinsicWidth) * (((float) i4) / ((float) intrinsicHeight)));
            } else {
                i4 = intrinsicHeight;
            }
            icon.setBounds(0, 0, intrinsicWidth, i4);
        }
        setCompoundDrawables(icon, null, null, null);
        p();
        this.f = iVar.h(this);
        p();
        setId(iVar.getItemId());
        if (!iVar.isVisible()) {
            i3 = 8;
        }
        setVisibility(i3);
        setEnabled(iVar.isEnabled());
        if (iVar.hasSubMenu() && this.i == null) {
            this.i = new a();
        }
    }

    public boolean l() {
        return !TextUtils.isEmpty(getText());
    }

    public void m(g.b bVar) {
        this.h = bVar;
    }

    public void n(b bVar) {
        this.j = bVar;
    }

    public void onClick(View view) {
        g.b bVar = this.h;
        if (bVar != null) {
            bVar.a(this.e);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.k = o();
        p();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView
    public void onMeasure(int i2, int i3) {
        int i4;
        boolean l2 = l();
        if (l2 && (i4 = this.m) >= 0) {
            super.setPadding(i4, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.l) : this.l;
        if (mode != 1073741824 && this.l > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i3);
        }
        if (!l2 && this.g != null) {
            super.setPadding((getMeasuredWidth() - this.g.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        r rVar;
        if (!this.e.hasSubMenu() || (rVar = this.i) == null || !rVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
        this.m = i2;
        super.setPadding(i2, i3, i4, i5);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Resources resources = context.getResources();
        this.k = o();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.c, i2, 0);
        this.l = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        this.n = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.m = -1;
        setSaveEnabled(false);
    }
}
