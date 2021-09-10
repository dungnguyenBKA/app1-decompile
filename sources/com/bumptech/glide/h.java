package com.bumptech.glide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;

public class h<TranscodeType> extends yj<h<TranscodeType>> implements Cloneable {
    private final Context B;
    private final i C;
    private final Class<TranscodeType> D;
    private final e E;
    private j<?, ? super TranscodeType> F;
    private Object G;
    private List<bk<TranscodeType>> H;
    private boolean I = true;
    private boolean J;

    /* access modifiers changed from: package-private */
    public static /* synthetic */ class a {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        /* JADX WARNING: Can't wrap try/catch for region: R(25:0|(2:1|2)|3|5|6|7|8|9|10|11|13|14|15|16|17|18|19|20|21|22|23|24|25|26|(3:27|28|30)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(28:0|1|2|3|5|6|7|8|9|10|11|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|30) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x002b */
        /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0035 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x003f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:21:0x0049 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x0054 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x005f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x006a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0011 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0015 */
        static {
            /*
            // Method dump skipped, instructions count: 119
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.h.a.<clinit>():void");
        }
    }

    static {
        ck ckVar = (ck) ((ck) ((ck) new ck().f(vd.c)).O(f.LOW)).S(true);
    }

    @SuppressLint({"CheckResult"})
    protected h(c cVar, i iVar, Class<TranscodeType> cls, Context context) {
        this.C = iVar;
        this.D = cls;
        this.B = context;
        this.F = iVar.b.h().e(cls);
        this.E = cVar.h();
        for (bk<Object> bkVar : iVar.n()) {
            Y(bkVar);
        }
        a(iVar.o());
    }

    private zj a0(Object obj, nk<TranscodeType> nkVar, bk<TranscodeType> bkVar, ak akVar, j<?, ? super TranscodeType> jVar, f fVar, int i, int i2, yj<?> yjVar, Executor executor) {
        return k0(obj, nkVar, bkVar, yjVar, null, jVar, fVar, i, i2, executor);
    }

    private <Y extends nk<TranscodeType>> Y d0(Y y, bk<TranscodeType> bkVar, yj<?> yjVar, Executor executor) {
        Objects.requireNonNull(y, "Argument must not be null");
        if (this.J) {
            zj a0 = a0(new Object(), y, bkVar, null, this.F, yjVar.t(), yjVar.q(), yjVar.p(), yjVar, executor);
            zj f = y.f();
            if (((ek) a0).h(f)) {
                if (!(!yjVar.B() && f.isComplete())) {
                    Objects.requireNonNull(f, "Argument must not be null");
                    if (!f.isRunning()) {
                        f.c();
                    }
                    return y;
                }
            }
            this.C.m(y);
            y.c(a0);
            this.C.q(y, a0);
            return y;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    private zj k0(Object obj, nk<TranscodeType> nkVar, bk<TranscodeType> bkVar, yj<?> yjVar, ak akVar, j<?, ? super TranscodeType> jVar, f fVar, int i, int i2, Executor executor) {
        Context context = this.B;
        e eVar = this.E;
        return ek.k(context, eVar, obj, this.G, this.D, yjVar, i, i2, fVar, nkVar, bkVar, this.H, akVar, eVar.f(), jVar.b(), executor);
    }

    public h<TranscodeType> Y(bk<TranscodeType> bkVar) {
        if (bkVar != null) {
            if (this.H == null) {
                this.H = new ArrayList();
            }
            this.H.add(bkVar);
        }
        return this;
    }

    /* renamed from: Z */
    public h<TranscodeType> a(yj<?> yjVar) {
        Objects.requireNonNull(yjVar, "Argument must not be null");
        return (h) super.a(yjVar);
    }

    /* renamed from: b0 */
    public h<TranscodeType> d() {
        h<TranscodeType> hVar = (h) super.clone();
        hVar.F = hVar.F.a();
        return hVar;
    }

    public <Y extends nk<TranscodeType>> Y c0(Y y) {
        d0(y, null, this, cl.b());
        return y;
    }

    public ok<ImageView, TranscodeType> e0(ImageView imageView) {
        yj<?> yjVar;
        hl.a();
        Objects.requireNonNull(imageView, "Argument must not be null");
        if (!G() && E() && imageView.getScaleType() != null) {
            switch (a.a[imageView.getScaleType().ordinal()]) {
                case 1:
                    yjVar = d().I();
                    break;
                case 2:
                    yjVar = d().J();
                    break;
                case 3:
                case 4:
                case 5:
                    yjVar = d().K();
                    break;
                case 6:
                    yjVar = d().J();
                    break;
            }
            ok<ImageView, TranscodeType> a2 = this.E.a(imageView, this.D);
            d0(a2, null, yjVar, cl.b());
            return a2;
        }
        yjVar = this;
        ok<ImageView, TranscodeType> a22 = this.E.a(imageView, this.D);
        d0(a22, null, yjVar, cl.b());
        return a22;
    }

    public h<TranscodeType> f0(bk<TranscodeType> bkVar) {
        this.H = null;
        return Y(bkVar);
    }

    public h<TranscodeType> g0(Uri uri) {
        this.G = uri;
        this.J = true;
        return this;
    }

    public h<TranscodeType> h0(Integer num) {
        this.G = num;
        this.J = true;
        return a((ck) new ck().R(uk.c(this.B)));
    }

    public h<TranscodeType> i0(Object obj) {
        this.G = obj;
        this.J = true;
        return this;
    }

    public h<TranscodeType> j0(String str) {
        this.G = str;
        this.J = true;
        return this;
    }

    public h<TranscodeType> l0(j<?, ? super TranscodeType> jVar) {
        Objects.requireNonNull(jVar, "Argument must not be null");
        this.F = jVar;
        this.I = false;
        return this;
    }
}
