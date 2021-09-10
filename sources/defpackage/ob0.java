package defpackage;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import com.google.ads.ADRequestList;
import defpackage.ub0;
import defpackage.wb0;
import java.util.Objects;

/* renamed from: ob0  reason: default package */
public class ob0 extends nb0 {
    private ADRequestList c;
    private wb0 d;
    private rb0 e;
    private int f = 0;
    private jc0 g;
    private boolean h = true;
    private ub0.a i = new a();

    /* renamed from: ob0$a */
    class a implements ub0.a {
        a() {
        }

        @Override // defpackage.ub0.a
        public void a(Context context, View view) {
            if (ob0.this.d != null) {
                ob0.this.d.h(context);
            }
            if (ob0.this.e != null) {
                ob0.this.e.d(context);
            }
        }

        @Override // defpackage.ub0.a
        public void b(Context context) {
            if (ob0.this.e != null) {
                ob0.this.e.e(context);
            }
            if (ob0.this.h && ob0.this.g != null) {
                ob0.this.g.c(context);
                ob0.this.g = null;
            }
        }

        @Override // defpackage.ub0.a
        public void c(Context context) {
            if (ob0.this.d != null) {
                ob0.this.d.e(context);
            }
            if (ob0.this.e != null) {
                ob0.this.e.b(context);
            }
            ob0.this.a(context);
        }

        @Override // defpackage.ub0.a
        public void d(Activity activity, kb0 kb0) {
            Log.e("InterstitialAD", kb0.toString());
            if (ob0.this.d != null) {
                ob0.this.d.f(activity, kb0.toString());
            }
            ob0 ob0 = ob0.this;
            ob0.m(activity, ob0.k());
        }

        @Override // defpackage.ub0.a
        public void e(Context context) {
            if (ob0.this.d != null) {
                ob0.this.d.g(context);
            }
        }
    }

    public ob0(Activity activity, ADRequestList aDRequestList, boolean z) {
        this.a = z;
        this.b = "";
        if (aDRequestList == null) {
            throw new IllegalArgumentException("InterstitialAD:ADRequestList == null, please check.");
        } else if (aDRequestList.getADListener() == null) {
            throw new IllegalArgumentException("InterstitialAD:requestList.getADListener() == null, please check.");
        } else if (aDRequestList.getADListener() instanceof rb0) {
            this.f = 0;
            this.e = (rb0) aDRequestList.getADListener();
            this.c = aDRequestList;
            if (ic0.c().f(activity)) {
                kb0 kb0 = new kb0("Free RAM Low, can't load ads.");
                rb0 rb0 = this.e;
                if (rb0 != null) {
                    rb0.c(activity, kb0);
                    return;
                }
                return;
            }
            m(activity, k());
        } else {
            throw new IllegalArgumentException("InterstitialAD:requestList.getADListener() type error, please check.");
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private lb0 k() {
        ADRequestList aDRequestList = this.c;
        if (aDRequestList == null || aDRequestList.size() <= 0 || this.f >= this.c.size()) {
            return null;
        }
        lb0 lb0 = (lb0) this.c.get(this.f);
        this.f++;
        return lb0;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void m(Activity activity, lb0 lb0) {
        if (lb0 == null || b(activity)) {
            kb0 kb0 = new kb0("load all request, but no ads return");
            rb0 rb0 = this.e;
            if (rb0 != null) {
                rb0.c(activity, kb0);
            }
        } else if (lb0.b() != null) {
            try {
                wb0 wb0 = this.d;
                if (wb0 != null) {
                    wb0.a(activity);
                }
                wb0 wb02 = (wb0) Class.forName(lb0.b()).newInstance();
                this.d = wb02;
                wb02.d(activity, lb0, this.i);
                wb0 wb03 = this.d;
                if (wb03 != null) {
                    wb03.i(activity);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                kb0 kb02 = new kb0("ad type set error, please check.");
                rb0 rb02 = this.e;
                if (rb02 != null) {
                    rb02.c(activity, kb02);
                }
            }
        }
    }

    public void j(Activity activity) {
        wb0 wb0 = this.d;
        if (wb0 != null) {
            wb0.a(activity);
        }
        this.e = null;
    }

    public boolean l() {
        wb0 wb0 = this.d;
        if (wb0 != null) {
            return wb0.k();
        }
        return false;
    }

    public void n(Activity activity, wb0.a aVar) {
        wb0 wb0 = this.d;
        if (wb0 == null || !wb0.k()) {
            aVar.a(false);
            return;
        }
        if (this.h) {
            if (this.g == null) {
                this.g = new jc0();
            }
            this.g.b(activity);
        }
        Objects.requireNonNull(this.d);
        this.d.l(activity, aVar);
    }
}
