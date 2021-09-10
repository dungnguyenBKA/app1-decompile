package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.ads.ADRequestList;
import defpackage.ub0;

/* renamed from: pb0  reason: default package */
public class pb0 extends nb0 {
    private ADRequestList c;
    private xb0 d;
    private tb0 e;
    private int f = 0;
    private ub0.a g = new a();

    /* renamed from: pb0$a */
    class a implements ub0.a {
        a() {
        }

        @Override // defpackage.ub0.a
        public void a(Context context, View view) {
            if (pb0.this.d != null) {
                pb0.this.d.h(context);
            }
            if (pb0.this.e != null) {
                pb0.this.e.a(context, view);
            }
        }

        @Override // defpackage.ub0.a
        public void b(Context context) {
        }

        @Override // defpackage.ub0.a
        public void c(Context context) {
            if (pb0.this.d != null) {
                pb0.this.d.e(context);
            }
            if (pb0.this.e != null) {
                pb0.this.e.b(context);
            }
            pb0.this.a(context);
        }

        @Override // defpackage.ub0.a
        public void d(Activity activity, kb0 kb0) {
            if (pb0.this.d != null) {
                pb0.this.d.f(activity, kb0.toString());
            }
            pb0 pb0 = pb0.this;
            pb0.i(activity, pb0.h());
        }

        @Override // defpackage.ub0.a
        public void e(Context context) {
            if (pb0.this.d != null) {
                pb0.this.d.g(context);
            }
        }
    }

    public pb0(Activity activity, ADRequestList aDRequestList, boolean z) {
        this.a = z;
        this.b = "";
        if (aDRequestList == null) {
            throw new IllegalArgumentException("NativeCardAD:ADRequestList == null, please check.");
        } else if (aDRequestList.getADListener() == null) {
            throw new IllegalArgumentException("NativeCardAD:requestList.getADListener() == null, please check.");
        } else if (aDRequestList.getADListener() instanceof tb0) {
            this.f = 0;
            this.e = (tb0) aDRequestList.getADListener();
            this.c = aDRequestList;
            if (ic0.c().f(activity)) {
                kb0 kb0 = new kb0("Free RAM Low, can't load ads.");
                tb0 tb0 = this.e;
                if (tb0 != null) {
                    tb0.c(activity, kb0);
                    return;
                }
                return;
            }
            i(activity, h());
        } else {
            throw new IllegalArgumentException("NativeCardAD:requestList.getADListener() type error, please check.");
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private lb0 h() {
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
    private void i(Activity activity, lb0 lb0) {
        if (lb0 == null || b(activity)) {
            kb0 kb0 = new kb0("load all request, but no ads return");
            tb0 tb0 = this.e;
            if (tb0 != null) {
                tb0.c(activity, kb0);
            }
        } else if (lb0.b() != null) {
            try {
                xb0 xb0 = this.d;
                if (xb0 != null) {
                    xb0.a(activity);
                }
                xb0 xb02 = (xb0) Class.forName(lb0.b()).newInstance();
                this.d = xb02;
                xb02.d(activity, lb0, this.g);
                xb0 xb03 = this.d;
                if (xb03 != null) {
                    xb03.i(activity);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                kb0 kb02 = new kb0("ad type set error, please check.");
                tb0 tb02 = this.e;
                if (tb02 != null) {
                    tb02.c(activity, kb02);
                }
            }
        }
    }

    public void g(Activity activity) {
        xb0 xb0 = this.d;
        if (xb0 != null) {
            xb0.a(activity);
            this.e = null;
        }
    }
}
