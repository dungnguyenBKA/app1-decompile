package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import javax.net.ssl.SSLException;
import photoeditor.cutout.backgrounderaser.R;

public class LottieAnimationView extends AppCompatImageView {
    private static final String u = LottieAnimationView.class.getSimpleName();
    private static final i<Throwable> v = new a();
    private final i<e> d = new b();
    private final i<Throwable> e = new c();
    private int f = 0;
    private final g g = new g();
    private boolean h;
    private String i;
    private int j;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;
    private boolean n = false;
    private boolean o = true;
    private q p = q.AUTOMATIC;
    private Set<k> q = new HashSet();
    private int r = 0;
    private o<e> s;
    private e t;

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        String b;
        int c;
        float d;
        boolean e;
        String f;
        int g;
        int h;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.b);
            parcel.writeFloat(this.d);
            parcel.writeInt(this.e ? 1 : 0);
            parcel.writeString(this.f);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h);
        }

        SavedState(Parcel parcel, a aVar) {
            super(parcel);
            this.b = parcel.readString();
            this.d = parcel.readFloat();
            this.e = parcel.readInt() != 1 ? false : true;
            this.f = parcel.readString();
            this.g = parcel.readInt();
            this.h = parcel.readInt();
        }
    }

    class a implements i<Throwable> {
        a() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.airbnb.lottie.i
        public void a(Throwable th) {
            Throwable th2 = th;
            int i = dc.g;
            if ((th2 instanceof SocketException) || (th2 instanceof ClosedChannelException) || (th2 instanceof InterruptedIOException) || (th2 instanceof ProtocolException) || (th2 instanceof SSLException) || (th2 instanceof UnknownHostException) || (th2 instanceof UnknownServiceException)) {
                zb.c("Unable to load composition.", th2);
                return;
            }
            throw new IllegalStateException("Unable to parse composition", th2);
        }
    }

    class b implements i<e> {
        b() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.airbnb.lottie.i
        public void a(e eVar) {
            LottieAnimationView.this.v(eVar);
        }
    }

    class c implements i<Throwable> {
        c() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.airbnb.lottie.i
        public void a(Throwable th) {
            Throwable th2 = th;
            if (LottieAnimationView.this.f != 0) {
                LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                lottieAnimationView.setImageResource(lottieAnimationView.f);
            }
            Objects.requireNonNull(LottieAnimationView.this);
            ((a) LottieAnimationView.v).a(th2);
        }
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r(attributeSet, R.attr.ng);
    }

    private void p() {
        o<e> oVar = this.s;
        if (oVar != null) {
            oVar.h(this.d);
            this.s.g(this.e);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x003d, code lost:
        if (r3 != false) goto L_0x003f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:2:0x000a, code lost:
        if (r0 != 1) goto L_0x000c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void q() {
        /*
            r5 = this;
            com.airbnb.lottie.q r0 = r5.p
            int r0 = r0.ordinal()
            r1 = 2
            r2 = 1
            if (r0 == 0) goto L_0x000e
            if (r0 == r2) goto L_0x003f
        L_0x000c:
            r1 = 1
            goto L_0x003f
        L_0x000e:
            com.airbnb.lottie.e r0 = r5.t
            r3 = 0
            if (r0 == 0) goto L_0x0020
            boolean r0 = r0.o()
            if (r0 == 0) goto L_0x0020
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 28
            if (r0 >= r4) goto L_0x0020
            goto L_0x003d
        L_0x0020:
            com.airbnb.lottie.e r0 = r5.t
            if (r0 == 0) goto L_0x002c
            int r0 = r0.k()
            r4 = 4
            if (r0 <= r4) goto L_0x002c
            goto L_0x003d
        L_0x002c:
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 21
            if (r0 >= r4) goto L_0x0033
            goto L_0x003d
        L_0x0033:
            r4 = 24
            if (r0 == r4) goto L_0x003d
            r4 = 25
            if (r0 != r4) goto L_0x003c
            goto L_0x003d
        L_0x003c:
            r3 = 1
        L_0x003d:
            if (r3 == 0) goto L_0x000c
        L_0x003f:
            int r0 = r5.getLayerType()
            if (r1 == r0) goto L_0x0049
            r0 = 0
            r5.setLayerType(r1, r0)
        L_0x0049:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.LottieAnimationView.q():void");
    }

    private void r(AttributeSet attributeSet, int i2) {
        String string;
        boolean z = false;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.a, i2, 0);
        this.o = obtainStyledAttributes.getBoolean(1, true);
        boolean hasValue = obtainStyledAttributes.hasValue(9);
        boolean hasValue2 = obtainStyledAttributes.hasValue(5);
        boolean hasValue3 = obtainStyledAttributes.hasValue(15);
        if (!hasValue || !hasValue2) {
            if (hasValue) {
                int resourceId = obtainStyledAttributes.getResourceId(9, 0);
                if (resourceId != 0) {
                    t(resourceId);
                }
            } else if (hasValue2) {
                String string2 = obtainStyledAttributes.getString(5);
                if (string2 != null) {
                    u(string2);
                }
            } else if (hasValue3 && (string = obtainStyledAttributes.getString(15)) != null) {
                w(this.o ? f.l(getContext(), string) : f.m(getContext(), string, null));
            }
            this.f = obtainStyledAttributes.getResourceId(4, 0);
            if (obtainStyledAttributes.getBoolean(0, false)) {
                this.m = true;
                this.n = true;
            }
            if (obtainStyledAttributes.getBoolean(7, false)) {
                this.g.A(-1);
            }
            if (obtainStyledAttributes.hasValue(12)) {
                this.g.B(obtainStyledAttributes.getInt(12, 1));
            }
            if (obtainStyledAttributes.hasValue(11)) {
                this.g.A(obtainStyledAttributes.getInt(11, -1));
            }
            if (obtainStyledAttributes.hasValue(14)) {
                this.g.E(obtainStyledAttributes.getFloat(14, 1.0f));
            }
            this.g.y(obtainStyledAttributes.getString(6));
            this.g.z(obtainStyledAttributes.getFloat(8, 0.0f));
            this.g.j(obtainStyledAttributes.getBoolean(3, false));
            if (obtainStyledAttributes.hasValue(2)) {
                this.g.e(new o8("**"), l.C, new gc(new r(obtainStyledAttributes.getColor(2, 0))));
            }
            if (obtainStyledAttributes.hasValue(13)) {
                this.g.C(obtainStyledAttributes.getFloat(13, 1.0f));
            }
            if (obtainStyledAttributes.hasValue(10)) {
                int i3 = obtainStyledAttributes.getInt(10, 0);
                q.values();
                if (i3 >= 3) {
                    i3 = 0;
                }
                this.p = q.values()[i3];
                q();
            }
            if (getScaleType() != null) {
                this.g.D(getScaleType());
            }
            obtainStyledAttributes.recycle();
            g gVar = this.g;
            Context context = getContext();
            int i4 = dc.g;
            if (Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f) != 0.0f) {
                z = true;
            }
            gVar.F(Boolean.valueOf(z));
            q();
            this.h = true;
            return;
        }
        throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
    }

    private void w(o<e> oVar) {
        this.t = null;
        this.g.h();
        p();
        oVar.f(this.d);
        oVar.e(this.e);
        this.s = oVar;
    }

    public void buildDrawingCache(boolean z) {
        this.r++;
        super.buildDrawingCache(z);
        if (this.r == 1 && getWidth() > 0 && getHeight() > 0 && getLayerType() == 1 && getDrawingCache(z) == null) {
            this.p = q.HARDWARE;
            q();
        }
        this.r--;
        b.a("buildDrawingCache");
    }

    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        g gVar = this.g;
        if (drawable2 == gVar) {
            super.invalidateDrawable(gVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public void n(Animator.AnimatorListener animatorListener) {
        this.g.c(animatorListener);
    }

    public void o(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.g.d(animatorUpdateListener);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode() && (this.n || this.m)) {
            s();
            this.n = false;
            this.m = false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            onVisibilityChanged(this, getVisibility());
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        if (this.g.s()) {
            this.m = false;
            this.l = false;
            this.k = false;
            this.g.g();
            q();
            this.m = true;
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        String str = savedState.b;
        this.i = str;
        if (!TextUtils.isEmpty(str)) {
            u(this.i);
        }
        int i2 = savedState.c;
        this.j = i2;
        if (i2 != 0) {
            t(i2);
        }
        this.g.z(savedState.d);
        if (savedState.e) {
            s();
        }
        this.g.y(savedState.f);
        this.g.B(savedState.g);
        this.g.A(savedState.h);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        boolean z;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.b = this.i;
        savedState.c = this.j;
        savedState.d = this.g.o();
        if (!this.g.s()) {
            int i2 = c3.g;
            if (isAttachedToWindow() || !this.m) {
                z = false;
                savedState.e = z;
                savedState.f = this.g.n();
                savedState.g = this.g.q();
                savedState.h = this.g.p();
                return savedState;
            }
        }
        z = true;
        savedState.e = z;
        savedState.f = this.g.n();
        savedState.g = this.g.q();
        savedState.h = this.g.p();
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onVisibilityChanged(View view, int i2) {
        if (this.h) {
            if (isShown()) {
                if (this.l) {
                    if (isShown()) {
                        this.g.v();
                        q();
                    } else {
                        this.k = false;
                        this.l = true;
                    }
                } else if (this.k) {
                    s();
                }
                this.l = false;
                this.k = false;
            } else if (this.g.s()) {
                this.n = false;
                this.m = false;
                this.l = false;
                this.k = false;
                this.g.t();
                q();
                this.l = true;
            }
        }
    }

    public void s() {
        if (isShown()) {
            this.g.u();
            q();
            return;
        }
        this.k = true;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView
    public void setImageBitmap(Bitmap bitmap) {
        p();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView
    public void setImageDrawable(Drawable drawable) {
        p();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView
    public void setImageResource(int i2) {
        p();
        super.setImageResource(i2);
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        super.setScaleType(scaleType);
        g gVar = this.g;
        if (gVar != null) {
            gVar.D(scaleType);
        }
    }

    public void t(int i2) {
        o<e> oVar;
        this.j = i2;
        this.i = null;
        if (isInEditMode()) {
            oVar = new o<>(new c(this, i2), true);
        } else {
            oVar = this.o ? f.h(getContext(), i2) : f.i(getContext(), i2, null);
        }
        w(oVar);
    }

    public void u(String str) {
        o<e> oVar;
        this.i = str;
        this.j = 0;
        if (isInEditMode()) {
            oVar = new o<>(new d(this, str), true);
        } else {
            oVar = this.o ? f.c(getContext(), str) : f.d(getContext(), str, null);
        }
        w(oVar);
    }

    public void v(e eVar) {
        this.g.setCallback(this);
        this.t = eVar;
        boolean w = this.g.w(eVar);
        q();
        if (getDrawable() != this.g || w) {
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            for (k kVar : this.q) {
                kVar.a(eVar);
            }
        }
    }

    public void x(String str) {
        this.g.y(str);
    }

    public void y(float f2) {
        this.g.z(f2);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        r(attributeSet, i2);
    }
}
