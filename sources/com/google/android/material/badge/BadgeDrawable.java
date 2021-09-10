package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.internal.g;
import com.google.android.material.internal.i;
import java.lang.ref.WeakReference;
import photoeditor.cutout.backgrounderaser.R;

public class BadgeDrawable extends Drawable implements g.b {
    private final WeakReference<Context> b;
    private final my c = new my();
    private final g d;
    private final Rect e = new Rect();
    private final float f;
    private final float g;
    private final float h;
    private final SavedState i;
    private float j;
    private float k;
    private int l;
    private float m;
    private float n;
    private float o;
    private WeakReference<View> p;
    private WeakReference<ViewGroup> q;

    private BadgeDrawable(Context context) {
        zx zxVar;
        Context context2;
        WeakReference<Context> weakReference = new WeakReference<>(context);
        this.b = weakReference;
        i.b(context);
        Resources resources = context.getResources();
        this.f = (float) resources.getDimensionPixelSize(R.dimen.rn);
        this.h = (float) resources.getDimensionPixelSize(R.dimen.rm);
        this.g = (float) resources.getDimensionPixelSize(R.dimen.rq);
        g gVar = new g(this);
        this.d = gVar;
        gVar.d().setTextAlign(Paint.Align.CENTER);
        this.i = new SavedState(context);
        Context context3 = weakReference.get();
        if (context3 != null && gVar.c() != (zxVar = new zx(context3, R.style.ja)) && (context2 = weakReference.get()) != null) {
            gVar.f(zxVar, context2);
            i();
        }
    }

    static BadgeDrawable b(Context context, SavedState savedState) {
        int max;
        BadgeDrawable badgeDrawable = new BadgeDrawable(context);
        int i2 = savedState.f;
        if (badgeDrawable.i.f != i2) {
            badgeDrawable.i.f = i2;
            double d2 = (double) badgeDrawable.i.f;
            Double.isNaN(d2);
            Double.isNaN(d2);
            Double.isNaN(d2);
            Double.isNaN(d2);
            Double.isNaN(d2);
            badgeDrawable.l = ((int) Math.pow(10.0d, d2 - 1.0d)) - 1;
            badgeDrawable.d.g(true);
            badgeDrawable.i();
            badgeDrawable.invalidateSelf();
        }
        if (!(savedState.e == -1 || badgeDrawable.i.e == (max = Math.max(0, savedState.e)))) {
            badgeDrawable.i.e = max;
            badgeDrawable.d.g(true);
            badgeDrawable.i();
            badgeDrawable.invalidateSelf();
        }
        int i3 = savedState.b;
        badgeDrawable.i.b = i3;
        ColorStateList valueOf = ColorStateList.valueOf(i3);
        if (badgeDrawable.c.r() != valueOf) {
            badgeDrawable.c.F(valueOf);
            badgeDrawable.invalidateSelf();
        }
        int i4 = savedState.c;
        badgeDrawable.i.c = i4;
        if (badgeDrawable.d.d().getColor() != i4) {
            badgeDrawable.d.d().setColor(i4);
            badgeDrawable.invalidateSelf();
        }
        int i5 = savedState.i;
        if (badgeDrawable.i.i != i5) {
            badgeDrawable.i.i = i5;
            WeakReference<View> weakReference = badgeDrawable.p;
            if (!(weakReference == null || weakReference.get() == null)) {
                View view = badgeDrawable.p.get();
                WeakReference<ViewGroup> weakReference2 = badgeDrawable.q;
                ViewGroup viewGroup = weakReference2 != null ? weakReference2.get() : null;
                badgeDrawable.p = new WeakReference<>(view);
                badgeDrawable.q = new WeakReference<>(viewGroup);
                badgeDrawable.i();
                badgeDrawable.invalidateSelf();
            }
        }
        return badgeDrawable;
    }

    private String c() {
        if (e() <= this.l) {
            return Integer.toString(e());
        }
        Context context = this.b.get();
        if (context == null) {
            return "";
        }
        return context.getString(R.string.dd, Integer.valueOf(this.l), "+");
    }

    private void i() {
        Context context = this.b.get();
        WeakReference<View> weakReference = this.p;
        ViewGroup viewGroup = null;
        View view = weakReference != null ? weakReference.get() : null;
        if (context != null && view != null) {
            Rect rect = new Rect();
            rect.set(this.e);
            Rect rect2 = new Rect();
            view.getDrawingRect(rect2);
            WeakReference<ViewGroup> weakReference2 = this.q;
            if (weakReference2 != null) {
                viewGroup = weakReference2.get();
            }
            if (viewGroup != null) {
                if (viewGroup == null) {
                    viewGroup = (ViewGroup) view.getParent();
                }
                viewGroup.offsetDescendantRectToMyCoords(view, rect2);
            }
            int i2 = this.i.i;
            if (i2 == 8388691 || i2 == 8388693) {
                this.k = (float) rect2.bottom;
            } else {
                this.k = (float) rect2.top;
            }
            if (e() <= 9) {
                float f2 = !g() ? this.f : this.g;
                this.m = f2;
                this.o = f2;
                this.n = f2;
            } else {
                float f3 = this.g;
                this.m = f3;
                this.o = f3;
                this.n = (this.d.e(c()) / 2.0f) + this.h;
            }
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(g() ? R.dimen.ro : R.dimen.rl);
            int i3 = this.i.i;
            if (i3 == 8388659 || i3 == 8388691) {
                int i4 = c3.g;
                this.j = view.getLayoutDirection() == 0 ? (((float) rect2.left) - this.n) + ((float) dimensionPixelSize) : (((float) rect2.right) + this.n) - ((float) dimensionPixelSize);
            } else {
                int i5 = c3.g;
                this.j = view.getLayoutDirection() == 0 ? (((float) rect2.right) + this.n) - ((float) dimensionPixelSize) : (((float) rect2.left) - this.n) + ((float) dimensionPixelSize);
            }
            Rect rect3 = this.e;
            float f4 = this.j;
            float f5 = this.k;
            float f6 = this.n;
            float f7 = this.o;
            rect3.set((int) (f4 - f6), (int) (f5 - f7), (int) (f4 + f6), (int) (f5 + f7));
            this.c.D(this.m);
            if (!rect.equals(this.e)) {
                this.c.setBounds(this.e);
            }
        }
    }

    @Override // com.google.android.material.internal.g.b
    public void a() {
        invalidateSelf();
    }

    public CharSequence d() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        if (!g()) {
            return this.i.g;
        }
        if (this.i.h <= 0 || (context = this.b.get()) == null) {
            return null;
        }
        return context.getResources().getQuantityString(this.i.h, e(), Integer.valueOf(e()));
    }

    public void draw(Canvas canvas) {
        if (!getBounds().isEmpty() && getAlpha() != 0 && isVisible()) {
            this.c.draw(canvas);
            if (g()) {
                Rect rect = new Rect();
                String c2 = c();
                this.d.d().getTextBounds(c2, 0, c2.length(), rect);
                canvas.drawText(c2, this.j, this.k + ((float) (rect.height() / 2)), this.d.d());
            }
        }
    }

    public int e() {
        if (!g()) {
            return 0;
        }
        return this.i.e;
    }

    public SavedState f() {
        return this.i;
    }

    public boolean g() {
        return this.i.e != -1;
    }

    public int getAlpha() {
        return this.i.d;
    }

    public int getIntrinsicHeight() {
        return this.e.height();
    }

    public int getIntrinsicWidth() {
        return this.e.width();
    }

    public int getOpacity() {
        return -3;
    }

    public void h(View view, ViewGroup viewGroup) {
        this.p = new WeakReference<>(view);
        this.q = new WeakReference<>(viewGroup);
        i();
        invalidateSelf();
    }

    public boolean isStateful() {
        return false;
    }

    @Override // com.google.android.material.internal.g.b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    public void setAlpha(int i2) {
        this.i.d = i2;
        this.d.d().setAlpha(i2);
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public static final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        private int b;
        private int c;
        private int d = 255;
        private int e = -1;
        private int f;
        private CharSequence g;
        private int h;
        private int i;

        static class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Context context) {
            this.c = new zx(context, R.style.ja).b.getDefaultColor();
            this.g = context.getString(R.string.db);
            this.h = R.plurals.a;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e);
            parcel.writeInt(this.f);
            parcel.writeString(this.g.toString());
            parcel.writeInt(this.h);
            parcel.writeInt(this.i);
        }

        protected SavedState(Parcel parcel) {
            this.b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.readInt();
            this.e = parcel.readInt();
            this.f = parcel.readInt();
            this.g = parcel.readString();
            this.h = parcel.readInt();
            this.i = parcel.readInt();
        }
    }
}
