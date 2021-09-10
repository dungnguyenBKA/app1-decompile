package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.l0;
import androidx.core.widget.c;
import com.facebook.ads.AdError;
import com.google.android.material.badge.BadgeDrawable;
import photoeditor.cutout.backgrounderaser.R;

public class BottomNavigationItemView extends FrameLayout implements n.a {
    private static final int[] p = {16842912};
    private final int b;
    private float c;
    private float d;
    private float e;
    private int f;
    private boolean g;
    private ImageView h;
    private final TextView i;
    private final TextView j;
    private i k;
    private ColorStateList l;
    private Drawable m;
    private Drawable n;
    private BadgeDrawable o;

    class a implements View.OnLayoutChangeListener {
        a() {
        }

        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (BottomNavigationItemView.this.h.getVisibility() == 0) {
                BottomNavigationItemView bottomNavigationItemView = BottomNavigationItemView.this;
                BottomNavigationItemView.b(bottomNavigationItemView, bottomNavigationItemView.h);
            }
        }
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    static void b(BottomNavigationItemView bottomNavigationItemView, View view) {
        if (bottomNavigationItemView.e()) {
            com.google.android.material.badge.a.b(bottomNavigationItemView.o, view, null);
        }
    }

    private void d(float f2, float f3) {
        this.c = f2 - f3;
        this.d = (f3 * 1.0f) / f2;
        this.e = (f2 * 1.0f) / f3;
    }

    private boolean e() {
        return this.o != null;
    }

    private void t(View view, int i2, int i3) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i2;
        layoutParams.gravity = i3;
        view.setLayoutParams(layoutParams);
    }

    private void u(View view, float f2, float f3, int i2) {
        view.setScaleX(f2);
        view.setScaleY(f3);
        view.setVisibility(i2);
    }

    @Override // androidx.appcompat.view.menu.n.a
    public i c() {
        return this.k;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean f() {
        return false;
    }

    /* access modifiers changed from: package-private */
    public void g() {
        ImageView imageView = this.h;
        if (e()) {
            if (imageView != null) {
                setClipChildren(true);
                setClipToPadding(true);
                BadgeDrawable badgeDrawable = this.o;
                if (badgeDrawable != null) {
                    imageView.getOverlay().remove(badgeDrawable);
                }
            }
            this.o = null;
        }
    }

    /* access modifiers changed from: package-private */
    public void h(BadgeDrawable badgeDrawable) {
        this.o = badgeDrawable;
        ImageView imageView = this.h;
        if (imageView != null && e() && imageView != null) {
            setClipChildren(false);
            setClipToPadding(false);
            BadgeDrawable badgeDrawable2 = this.o;
            com.google.android.material.badge.a.b(badgeDrawable2, imageView, null);
            imageView.getOverlay().add(badgeDrawable2);
        }
    }

    public void i() {
        refreshDrawableState();
    }

    public void j(boolean z) {
        TextView textView = this.j;
        textView.setPivotX((float) (textView.getWidth() / 2));
        TextView textView2 = this.j;
        textView2.setPivotY((float) textView2.getBaseline());
        TextView textView3 = this.i;
        textView3.setPivotX((float) (textView3.getWidth() / 2));
        TextView textView4 = this.i;
        textView4.setPivotY((float) textView4.getBaseline());
        int i2 = this.f;
        if (i2 != -1) {
            if (i2 == 0) {
                if (z) {
                    t(this.h, this.b, 49);
                    u(this.j, 1.0f, 1.0f, 0);
                } else {
                    t(this.h, this.b, 17);
                    u(this.j, 0.5f, 0.5f, 4);
                }
                this.i.setVisibility(4);
            } else if (i2 != 1) {
                if (i2 == 2) {
                    t(this.h, this.b, 17);
                    this.j.setVisibility(8);
                    this.i.setVisibility(8);
                }
            } else if (z) {
                t(this.h, (int) (((float) this.b) + this.c), 49);
                u(this.j, 1.0f, 1.0f, 0);
                TextView textView5 = this.i;
                float f2 = this.d;
                u(textView5, f2, f2, 4);
            } else {
                t(this.h, this.b, 49);
                TextView textView6 = this.j;
                float f3 = this.e;
                u(textView6, f3, f3, 4);
                u(this.i, 1.0f, 1.0f, 0);
            }
        } else if (this.g) {
            if (z) {
                t(this.h, this.b, 49);
                u(this.j, 1.0f, 1.0f, 0);
            } else {
                t(this.h, this.b, 17);
                u(this.j, 0.5f, 0.5f, 4);
            }
            this.i.setVisibility(4);
        } else if (z) {
            t(this.h, (int) (((float) this.b) + this.c), 49);
            u(this.j, 1.0f, 1.0f, 0);
            TextView textView7 = this.i;
            float f4 = this.d;
            u(textView7, f4, f4, 4);
        } else {
            t(this.h, this.b, 49);
            TextView textView8 = this.j;
            float f5 = this.e;
            u(textView8, f5, f5, 4);
            u(this.i, 1.0f, 1.0f, 0);
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void k(i iVar, int i2) {
        CharSequence charSequence;
        this.k = iVar;
        iVar.isCheckable();
        i();
        j(iVar.isChecked());
        setEnabled(iVar.isEnabled());
        Drawable icon = iVar.getIcon();
        if (icon != this.m) {
            this.m = icon;
            if (icon != null) {
                Drawable.ConstantState constantState = icon.getConstantState();
                if (constantState != null) {
                    icon = constantState.newDrawable();
                }
                icon = androidx.core.graphics.drawable.a.j(icon).mutate();
                this.n = icon;
                ColorStateList colorStateList = this.l;
                if (colorStateList != null) {
                    androidx.core.graphics.drawable.a.g(icon, colorStateList);
                }
            }
            this.h.setImageDrawable(icon);
        }
        CharSequence title = iVar.getTitle();
        this.i.setText(title);
        this.j.setText(title);
        i iVar2 = this.k;
        if (iVar2 == null || TextUtils.isEmpty(iVar2.getContentDescription())) {
            setContentDescription(title);
        }
        i iVar3 = this.k;
        if (iVar3 != null && !TextUtils.isEmpty(iVar3.getTooltipText())) {
            title = this.k.getTooltipText();
        }
        l0.b(this, title);
        setId(iVar.getItemId());
        if (!TextUtils.isEmpty(iVar.getContentDescription())) {
            setContentDescription(iVar.getContentDescription());
        }
        if (!TextUtils.isEmpty(iVar.getTooltipText())) {
            charSequence = iVar.getTooltipText();
        } else {
            charSequence = iVar.getTitle();
        }
        l0.b(this, charSequence);
        setVisibility(iVar.isVisible() ? 0 : 8);
    }

    public void l(int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.h.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = i2;
        this.h.setLayoutParams(layoutParams);
    }

    public void m(ColorStateList colorStateList) {
        Drawable drawable;
        this.l = colorStateList;
        if (this.k != null && (drawable = this.n) != null) {
            androidx.core.graphics.drawable.a.g(drawable, colorStateList);
            this.n.invalidateSelf();
        }
    }

    public void n(Drawable drawable) {
        if (!(drawable == null || drawable.getConstantState() == null)) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        int i2 = c3.g;
        setBackground(drawable);
    }

    public void o(int i2) {
        if (this.f != i2) {
            this.f = i2;
            i iVar = this.k;
            if (iVar != null) {
                j(iVar.isChecked());
            }
        }
    }

    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        i iVar = this.k;
        if (iVar != null && iVar.isCheckable() && this.k.isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, p);
        }
        return onCreateDrawableState;
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.o;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.k.getTitle();
            if (!TextUtils.isEmpty(this.k.getContentDescription())) {
                title = this.k.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.o.d()));
        }
    }

    public void p(boolean z) {
        if (this.g != z) {
            this.g = z;
            i iVar = this.k;
            if (iVar != null) {
                j(iVar.isChecked());
            }
        }
    }

    public void q(int i2) {
        c.h(this.j, i2);
        d(this.i.getTextSize(), this.j.getTextSize());
    }

    public void r(int i2) {
        c.h(this.i, i2);
        d(this.i.getTextSize(), this.j.getTextSize());
    }

    public void s(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.i.setTextColor(colorStateList);
            this.j.setTextColor(colorStateList);
        }
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.i.setEnabled(z);
        this.j.setEnabled(z);
        this.h.setEnabled(z);
        if (z) {
            c3.y(this, a3.b(getContext(), AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE));
        } else {
            c3.y(this, null);
        }
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(R.layout.ao, (ViewGroup) this, true);
        setBackgroundResource(R.drawable.eg);
        this.b = resources.getDimensionPixelSize(R.dimen.mt);
        this.h = (ImageView) findViewById(R.id.id);
        TextView textView = (TextView) findViewById(R.id.qa);
        this.i = textView;
        TextView textView2 = (TextView) findViewById(R.id.jy);
        this.j = textView2;
        int i3 = c3.g;
        textView.setImportantForAccessibility(2);
        textView2.setImportantForAccessibility(2);
        setFocusable(true);
        d(textView.getTextSize(), textView2.getTextSize());
        ImageView imageView = this.h;
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new a());
        }
        c3.u(this, null);
    }
}
