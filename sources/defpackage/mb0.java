package defpackage;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.google.ads.ADRequestList;
import defpackage.ub0;

/* renamed from: mb0  reason: default package */
public class mb0 extends nb0 {
    private ADRequestList c;
    private vb0 d;
    private vb0 e;
    private qb0 f;
    private int g = 0;
    private View h;
    private ub0.a i = new a();

    /* renamed from: mb0$a */
    class a implements ub0.a {
        a() {
        }

        @Override // defpackage.ub0.a
        public void a(Context context, View view) {
            ViewGroup viewGroup;
            if (mb0.this.f != null) {
                if (mb0.this.d != null) {
                    if (!(mb0.this.h == null || (viewGroup = (ViewGroup) mb0.this.h.getParent()) == null)) {
                        viewGroup.removeAllViews();
                    }
                    mb0.this.d.a((Activity) context);
                }
                mb0 mb0 = mb0.this;
                mb0.d = mb0.e;
                if (mb0.this.d != null) {
                    mb0.this.d.h(context);
                }
                mb0.this.f.a(context, view);
                mb0.this.h = view;
            }
        }

        @Override // defpackage.ub0.a
        public void b(Context context) {
        }

        @Override // defpackage.ub0.a
        public void c(Context context) {
            mb0.this.a(context);
            if (mb0.this.d != null) {
                mb0.this.d.e(context);
            }
            if (mb0.this.f != null) {
                mb0.this.f.b(context);
            }
        }

        @Override // defpackage.ub0.a
        public void d(Activity activity, kb0 kb0) {
            Log.e("BannerAD", kb0.toString());
            if (mb0.this.e != null) {
                mb0.this.e.f(activity, kb0.toString());
            }
            mb0 mb0 = mb0.this;
            mb0.l(activity, mb0.k());
        }

        @Override // defpackage.ub0.a
        public void e(Context context) {
            if (mb0.this.d != null) {
                mb0.this.d.g(context);
            }
        }
    }

    public mb0(Activity activity, ADRequestList aDRequestList) {
        this.a = false;
        this.b = "";
        if (aDRequestList.getADListener() == null) {
            throw new IllegalArgumentException("BannerAD:requestList.getADListener() == null, please check.");
        } else if (aDRequestList.getADListener() instanceof qb0) {
            this.g = 0;
            this.f = (qb0) aDRequestList.getADListener();
            this.c = aDRequestList;
            if (ic0.c().f(activity)) {
                kb0 kb0 = new kb0("Free RAM Low, can't load ads.");
                qb0 qb0 = this.f;
                if (qb0 != null) {
                    qb0.c(activity, kb0);
                    return;
                }
                return;
            }
            l(activity, k());
        } else {
            throw new IllegalArgumentException("BannerAD:requestList.getADListener() type error, please check.");
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void l(Activity activity, lb0 lb0) {
        if (lb0 == null || b(activity)) {
            kb0 kb0 = new kb0("load all request, but no ads return");
            qb0 qb0 = this.f;
            if (qb0 != null) {
                qb0.c(activity, kb0);
            }
        } else if (lb0.b() != null) {
            try {
                vb0 vb0 = (vb0) Class.forName(lb0.b()).newInstance();
                this.e = vb0;
                vb0.d(activity, lb0, this.i);
                vb0 vb02 = this.e;
                if (vb02 != null) {
                    vb02.i(activity);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                kb0 kb02 = new kb0("ad type set error, please check.");
                qb0 qb02 = this.f;
                if (qb02 != null) {
                    qb02.c(activity, kb02);
                }
            }
        }
    }

    public void j(Activity activity) {
        vb0 vb0 = this.d;
        if (vb0 != null) {
            vb0.a(activity);
        }
        vb0 vb02 = this.e;
        if (vb02 != null) {
            vb02.a(activity);
        }
        this.f = null;
    }

    public lb0 k() {
        ADRequestList aDRequestList = this.c;
        if (aDRequestList == null || aDRequestList.size() <= 0 || this.g >= this.c.size()) {
            return null;
        }
        lb0 lb0 = (lb0) this.c.get(this.g);
        this.g++;
        return lb0;
    }

    public void m() {
        vb0 vb0 = this.d;
        if (vb0 != null) {
            vb0.j();
        }
    }

    public void n() {
        vb0 vb0 = this.d;
        if (vb0 != null) {
            vb0.k();
        }
    }
}
