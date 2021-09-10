package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.a;

/* renamed from: g  reason: default package */
public class g extends Drawable implements Drawable.Callback {
    private Drawable b;

    public g(Drawable drawable) {
        Drawable drawable2 = this.b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    public Drawable a() {
        return this.b;
    }

    public void draw(Canvas canvas) {
        this.b.draw(canvas);
    }

    public int getChangingConfigurations() {
        return this.b.getChangingConfigurations();
    }

    public Drawable getCurrent() {
        return this.b.getCurrent();
    }

    public int getIntrinsicHeight() {
        return this.b.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        return this.b.getIntrinsicWidth();
    }

    public int getMinimumHeight() {
        return this.b.getMinimumHeight();
    }

    public int getMinimumWidth() {
        return this.b.getMinimumWidth();
    }

    public int getOpacity() {
        return this.b.getOpacity();
    }

    public boolean getPadding(Rect rect) {
        return this.b.getPadding(rect);
    }

    public int[] getState() {
        return this.b.getState();
    }

    public Region getTransparentRegion() {
        return this.b.getTransparentRegion();
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public boolean isAutoMirrored() {
        return this.b.isAutoMirrored();
    }

    public boolean isStateful() {
        return this.b.isStateful();
    }

    public void jumpToCurrentState() {
        this.b.jumpToCurrentState();
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        this.b.setBounds(rect);
    }

    /* access modifiers changed from: protected */
    public boolean onLevelChange(int i) {
        return this.b.setLevel(i);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    public void setAlpha(int i) {
        this.b.setAlpha(i);
    }

    public void setAutoMirrored(boolean z) {
        this.b.setAutoMirrored(z);
    }

    public void setChangingConfigurations(int i) {
        this.b.setChangingConfigurations(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.b.setColorFilter(colorFilter);
    }

    public void setDither(boolean z) {
        this.b.setDither(z);
    }

    public void setFilterBitmap(boolean z) {
        this.b.setFilterBitmap(z);
    }

    public void setHotspot(float f, float f2) {
        a.c(this.b, f, f2);
    }

    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        a.d(this.b, i, i2, i3, i4);
    }

    public boolean setState(int[] iArr) {
        return this.b.setState(iArr);
    }

    public void setTint(int i) {
        a.f(this.b, i);
    }

    public void setTintList(ColorStateList colorStateList) {
        a.g(this.b, colorStateList);
    }

    public void setTintMode(PorterDuff.Mode mode) {
        a.h(this.b, mode);
    }

    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.b.setVisible(z, z2);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
