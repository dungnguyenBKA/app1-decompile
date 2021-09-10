package defpackage;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import defpackage.f;
import defpackage.h;

@SuppressLint({"RestrictedAPI"})
/* renamed from: e  reason: default package */
public class e extends h implements androidx.core.graphics.drawable.b {
    private c q;
    private g r;
    private int s;
    private int t;
    private boolean u;

    /* access modifiers changed from: private */
    /* renamed from: e$b */
    public static class b extends g {
        private final Animatable a;

        b(Animatable animatable) {
            super(null);
            this.a = animatable;
        }

        @Override // defpackage.e.g
        public void c() {
            this.a.start();
        }

        @Override // defpackage.e.g
        public void d() {
            this.a.stop();
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: e$c */
    public static class c extends h.a {
        b0<Long> K;
        f0<Integer> L;

        c(c cVar, e eVar, Resources resources) {
            super(cVar, eVar, resources);
            if (cVar != null) {
                this.K = cVar.K;
                this.L = cVar.L;
                return;
            }
            this.K = new b0<>(10);
            this.L = new f0<>(10);
        }

        private static long m(int i, int i2) {
            return ((long) i2) | (((long) i) << 32);
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.h.a, defpackage.f.c
        public void i() {
            this.K = this.K.clone();
            this.L = this.L.clone();
        }

        /* access modifiers changed from: package-private */
        public int l(int i, int i2, Drawable drawable, boolean z) {
            int a = a(drawable);
            long m = m(i, i2);
            long j = z ? 8589934592L : 0;
            long j2 = (long) a;
            this.K.a(m, Long.valueOf(j2 | j));
            if (z) {
                this.K.a(m(i2, i), Long.valueOf(4294967296L | j2 | j));
            }
            return a;
        }

        /* access modifiers changed from: package-private */
        public int n(int i) {
            if (i < 0) {
                return 0;
            }
            return this.L.f(i, 0).intValue();
        }

        @Override // defpackage.h.a
        public Drawable newDrawable() {
            return new e(this, null);
        }

        /* access modifiers changed from: package-private */
        public int o(int i, int i2) {
            return (int) this.K.h(m(i, i2), -1L).longValue();
        }

        /* access modifiers changed from: package-private */
        public boolean p(int i, int i2) {
            return (this.K.h(m(i, i2), -1L).longValue() & 4294967296L) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean q(int i, int i2) {
            return (this.K.h(m(i, i2), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // defpackage.h.a
        public Drawable newDrawable(Resources resources) {
            return new e(this, resources);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: e$d */
    public static class d extends g {
        private final s4 a;

        d(s4 s4Var) {
            super(null);
            this.a = s4Var;
        }

        @Override // defpackage.e.g
        public void c() {
            this.a.start();
        }

        @Override // defpackage.e.g
        public void d() {
            this.a.stop();
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: e$e  reason: collision with other inner class name */
    public static class C0098e extends g {
        private final ObjectAnimator a;
        private final boolean b;

        C0098e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super(null);
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            f fVar = new f(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            ofInt.setAutoCancel(true);
            ofInt.setDuration((long) fVar.a());
            ofInt.setInterpolator(fVar);
            this.b = z2;
            this.a = ofInt;
        }

        @Override // defpackage.e.g
        public boolean a() {
            return this.b;
        }

        @Override // defpackage.e.g
        public void b() {
            this.a.reverse();
        }

        @Override // defpackage.e.g
        public void c() {
            this.a.start();
        }

        @Override // defpackage.e.g
        public void d() {
            this.a.cancel();
        }
    }

    /* renamed from: e$f */
    private static class f implements TimeInterpolator {
        private int[] a;
        private int b;
        private int c;

        f(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.b = numberOfFrames;
            int[] iArr = this.a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.a = new int[numberOfFrames];
            }
            int[] iArr2 = this.a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.c = i;
        }

        /* access modifiers changed from: package-private */
        public int a() {
            return this.c;
        }

        public float getInterpolation(float f) {
            int i = (int) ((f * ((float) this.c)) + 0.5f);
            int i2 = this.b;
            int[] iArr = this.a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (((float) i3) / ((float) i2)) + (i3 < i2 ? ((float) i) / ((float) this.c) : 0.0f);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: e$g */
    public static abstract class g {
        g(a aVar) {
        }

        public boolean a() {
            return false;
        }

        public void b() {
        }

        public abstract void c();

        public abstract void d();
    }

    public e() {
        this(null, null);
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:88:0x0074 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:97:0x0074 */
    /* JADX DEBUG: Multi-variable search result rejected for r20v0, resolved type: android.util.AttributeSet */
    /* JADX DEBUG: Multi-variable search result rejected for r7v8, resolved type: android.content.res.TypedArray */
    /* JADX DEBUG: Multi-variable search result rejected for r8v11, resolved type: android.content.res.TypedArray */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Type inference failed for: r9v10, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x01d7, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(defpackage.ic.o(r19, new java.lang.StringBuilder(), ": <transition> tag requires 'fromId' & 'toId' attributes"));
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static defpackage.e i(android.content.Context r17, android.content.res.Resources r18, org.xmlpull.v1.XmlPullParser r19, android.util.AttributeSet r20, android.content.res.Resources.Theme r21) {
        /*
        // Method dump skipped, instructions count: 536
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e.i(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):e");
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.f, defpackage.h
    public f.c b() {
        return new c(this.q, this, null);
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.f, defpackage.h
    public void f(f.c cVar) {
        super.f(cVar);
        if (cVar instanceof c) {
            this.q = (c) cVar;
        }
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.h
    public h.a h() {
        return new c(this.q, this, null);
    }

    @Override // defpackage.h
    public boolean isStateful() {
        return true;
    }

    @Override // defpackage.f
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        g gVar = this.r;
        if (gVar != null) {
            gVar.d();
            this.r = null;
            e(this.s);
            this.s = -1;
            this.t = -1;
        }
    }

    @Override // defpackage.f, defpackage.h
    public Drawable mutate() {
        if (!this.u) {
            super.mutate();
            if (this == this) {
                this.q.i();
                this.u = true;
            }
        }
        return this;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00a1, code lost:
        if (e(r1) == false) goto L_0x00a4;
     */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00ab  */
    /* JADX WARNING: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.f, defpackage.h
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onStateChange(int[] r11) {
        /*
        // Method dump skipped, instructions count: 177
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e.onStateChange(int[]):boolean");
    }

    @Override // defpackage.f
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        g gVar = this.r;
        if (gVar != null && (visible || z2)) {
            if (z) {
                gVar.c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    e(c cVar, Resources resources) {
        super(null);
        this.s = -1;
        this.t = -1;
        c cVar2 = new c(cVar, this, resources);
        super.f(cVar2);
        this.q = cVar2;
        onStateChange(getState());
        jumpToCurrentState();
    }
}
