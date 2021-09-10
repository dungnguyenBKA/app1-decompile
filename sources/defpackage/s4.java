package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: s4  reason: default package */
public class s4 extends x4 implements Animatable {
    private b c;
    private Context d;
    private ArgbEvaluator e;
    final Drawable.Callback f;

    /* renamed from: s4$a */
    class a implements Drawable.Callback {
        a() {
        }

        public void invalidateDrawable(Drawable drawable) {
            s4.this.invalidateSelf();
        }

        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            s4.this.scheduleSelf(runnable, j);
        }

        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            s4.this.unscheduleSelf(runnable);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: s4$b */
    public static class b extends Drawable.ConstantState {
        int a;
        y4 b;
        AnimatorSet c;
        ArrayList<Animator> d;
        x<Animator, String> e;

        public b(b bVar, Drawable.Callback callback, Resources resources) {
            if (bVar != null) {
                this.a = bVar.a;
                y4 y4Var = bVar.b;
                if (y4Var != null) {
                    Drawable.ConstantState constantState = y4Var.getConstantState();
                    if (resources != null) {
                        this.b = (y4) constantState.newDrawable(resources);
                    } else {
                        this.b = (y4) constantState.newDrawable();
                    }
                    y4 y4Var2 = this.b;
                    y4Var2.mutate();
                    this.b = y4Var2;
                    y4Var2.setCallback(callback);
                    this.b.setBounds(bVar.b.getBounds());
                    this.b.c(false);
                }
                ArrayList<Animator> arrayList = bVar.d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.d = new ArrayList<>(size);
                    this.e = new x<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = bVar.d.get(i);
                        Animator clone = animator.clone();
                        String orDefault = bVar.e.getOrDefault(animator, null);
                        clone.setTarget(this.b.b(orDefault));
                        this.d.add(clone);
                        this.e.put(clone, orDefault);
                    }
                    if (this.c == null) {
                        this.c = new AnimatorSet();
                    }
                    this.c.playTogether(this.d);
                }
            }
        }

        public int getChangingConfigurations() {
            return this.a;
        }

        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    s4() {
        this(null, null, null);
    }

    public static s4 a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        s4 s4Var = new s4(context, null, null);
        s4Var.inflate(resources, xmlPullParser, attributeSet, theme);
        return s4Var;
    }

    private void b(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                b(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.e == null) {
                    this.e = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.e);
            }
        }
    }

    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.b;
        if (drawable != null && Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    public boolean canApplyTheme() {
        Drawable drawable = this.b;
        if (drawable == null || Build.VERSION.SDK_INT < 21) {
            return false;
        }
        return drawable.canApplyTheme();
    }

    public void draw(Canvas canvas) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.c.b.draw(canvas);
        if (this.c.c.isStarted()) {
            invalidateSelf();
        }
    }

    public int getAlpha() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.getAlpha();
        }
        return this.c.b.getAlpha();
    }

    public int getChangingConfigurations() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.c.a;
    }

    public ColorFilter getColorFilter() {
        Drawable drawable = this.b;
        if (drawable == null) {
            return this.c.b.getColorFilter();
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    public Drawable.ConstantState getConstantState() {
        if (this.b == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new c(this.b.getConstantState());
    }

    public int getIntrinsicHeight() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return this.c.b.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return this.c.b.getIntrinsicWidth();
    }

    public int getOpacity() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return this.c.b.getOpacity();
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0084 A[Catch:{ XmlPullParserException -> 0x0096, IOException -> 0x0091 }] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0089 A[SYNTHETIC] */
    @Override // android.graphics.drawable.Drawable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void inflate(android.content.res.Resources r17, org.xmlpull.v1.XmlPullParser r18, android.util.AttributeSet r19, android.content.res.Resources.Theme r20) {
        /*
        // Method dump skipped, instructions count: 317
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s4.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    public boolean isAutoMirrored() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.isAutoMirrored();
        }
        return this.c.b.isAutoMirrored();
    }

    public boolean isRunning() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return ((AnimatedVectorDrawable) drawable).isRunning();
        }
        return this.c.c.isRunning();
    }

    public boolean isStateful() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return this.c.b.isStateful();
    }

    public Drawable mutate() {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.c.b.setBounds(rect);
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.x4
    public boolean onLevelChange(int i) {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        return this.c.b.setLevel(i);
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        return this.c.b.setState(iArr);
    }

    public void setAlpha(int i) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.c.b.setAlpha(i);
        }
    }

    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.c.b.setAutoMirrored(z);
        }
    }

    public void setFilterBitmap(boolean z) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setFilterBitmap(z);
        }
    }

    public void setHotspot(float f2, float f3) {
        Drawable drawable = this.b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.c(drawable, f2, f3);
        }
    }

    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Drawable drawable = this.b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.d(drawable, i, i2, i3, i4);
        }
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTint(int i) {
        Drawable drawable = this.b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.f(drawable, i);
        } else {
            this.c.b.setTint(i);
        }
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.g(drawable, colorStateList);
        } else {
            this.c.b.setTintList(colorStateList);
        }
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.h(drawable, mode);
        } else {
            this.c.b.setTintMode(mode);
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.c.b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    public void start() {
        Drawable drawable = this.b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else if (!this.c.c.isStarted()) {
            this.c.c.start();
            invalidateSelf();
        }
    }

    public void stop() {
        Drawable drawable = this.b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.c.c.end();
        }
    }

    private s4(Context context, b bVar, Resources resources) {
        this.e = null;
        a aVar = new a();
        this.f = aVar;
        this.d = context;
        this.c = new b(null, aVar, null);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.c.b.setColorFilter(colorFilter);
        }
    }

    /* renamed from: s4$c */
    private static class c extends Drawable.ConstantState {
        private final Drawable.ConstantState a;

        public c(Drawable.ConstantState constantState) {
            this.a = constantState;
        }

        public boolean canApplyTheme() {
            return this.a.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.a.getChangingConfigurations();
        }

        public Drawable newDrawable() {
            s4 s4Var = new s4();
            Drawable newDrawable = this.a.newDrawable();
            s4Var.b = newDrawable;
            newDrawable.setCallback(s4Var.f);
            return s4Var;
        }

        public Drawable newDrawable(Resources resources) {
            s4 s4Var = new s4();
            Drawable newDrawable = this.a.newDrawable(resources);
            s4Var.b = newDrawable;
            newDrawable.setCallback(s4Var.f);
            return s4Var;
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            s4 s4Var = new s4();
            Drawable newDrawable = this.a.newDrawable(resources, theme);
            s4Var.b = newDrawable;
            newDrawable.setCallback(s4Var.f);
            return s4Var;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
