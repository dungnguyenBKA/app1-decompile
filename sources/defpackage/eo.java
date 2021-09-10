package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.android.billingclient.api.j;
import com.android.billingclient.api.n;
import com.android.billingclient.api.p;
import com.camerasideas.collagemaker.appdata.f;
import com.google.billingclient.BillingHelper;
import com.google.billingclient.g;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: eo  reason: default package */
public class eo extends yn<ho> {
    private boolean d = false;
    private final g e;
    private b f;
    private Runnable g = new bo(this);
    private p h = new ao(this);
    private p i = new zn(this);
    private g.d j = new a();

    /* renamed from: eo$a */
    class a implements g.d {
        a() {
        }

        @Override // com.google.billingclient.g.d
        public void a(Activity activity, List<String> list, int i) {
        }

        @Override // com.google.billingclient.g.d
        public void b(int i, List<j> list) {
            if (i == 0) {
                if (list != null) {
                    Iterator<j> it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().c().equals("photoeditor.layout.collagemaker.vip.yearly")) {
                                androidx.core.app.b.A0(eo.this.c, true);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                if (androidx.core.app.b.d0(eo.this.c)) {
                    ((ho) eo.this.a).l(true);
                }
                if (eo.this.f != null) {
                    eo.this.f.run();
                    eo.this.f = null;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: eo$b */
    public class b implements Runnable {
        b(a aVar) {
        }

        public void run() {
            if (androidx.core.app.b.d0(eo.this.c)) {
                mr.d(eo.this.c.getString(R.string.gh));
            } else {
                mr.d(eo.this.c.getString(R.string.f5));
            }
        }
    }

    public eo() {
        g C = yp.F().C();
        this.e = C;
        yp.F().V(this.j);
        C.w("inapp", Arrays.asList("breastenlarger.bodyeditor.photoeditor.vip.permanent"), this.h);
        C.w("subs", Arrays.asList("photoeditor.layout.collagemaker.vip.monthly", "photoeditor.layout.collagemaker.vip.yearly"), this.i);
    }

    private void B(List<n> list) {
        if (list != null) {
            int i2 = BillingHelper.b;
            HashMap hashMap = new HashMap();
            for (n nVar : list) {
                if (nVar != null && !hashMap.containsKey(nVar.c())) {
                    hashMap.put(nVar.c(), nVar);
                }
            }
            if (hashMap.get("breastenlarger.bodyeditor.photoeditor.vip.permanent") != null) {
                String b2 = ((n) hashMap.get("breastenlarger.bodyeditor.photoeditor.vip.permanent")).b();
                androidx.core.app.b.C0(this.c, "breastenlarger.bodyeditor.photoeditor.vip.permanent", b2);
                this.a.g(b2);
            }
            if (hashMap.get("photoeditor.layout.collagemaker.vip.monthly") != null) {
                String b3 = ((n) hashMap.get("photoeditor.layout.collagemaker.vip.monthly")).b();
                androidx.core.app.b.C0(this.c, "photoeditor.layout.collagemaker.vip.monthly", b3);
                this.a.r(b3);
            }
            if (hashMap.get("photoeditor.layout.collagemaker.vip.yearly") != null) {
                String b4 = ((n) hashMap.get("photoeditor.layout.collagemaker.vip.yearly")).b();
                androidx.core.app.b.C0(this.c, "photoeditor.layout.collagemaker.vip.yearly", b4);
                this.a.i(b4);
            }
        }
    }

    public void A(Activity activity, String str) {
        androidx.core.app.b.W(activity).edit().putBoolean("HasClickPro", true).apply();
        if (!androidx.core.app.b.c0(this.c)) {
            mr.d(this.c.getString(R.string.e_));
            return;
        }
        g gVar = this.e;
        int hashCode = str.hashCode();
        char c = 65535;
        if (hashCode != -1855227692) {
            if (hashCode != -280109853) {
                if (hashCode == 578218608 && str.equals("breastenlarger.bodyeditor.photoeditor.vip.permanent")) {
                    c = 2;
                }
            } else if (str.equals("photoeditor.layout.collagemaker.vip.yearly")) {
                c = 1;
            }
        } else if (str.equals("photoeditor.layout.collagemaker.vip.monthly")) {
            c = 0;
        }
        gVar.t(activity, str, (c == 0 || c == 1) ? "subs" : "inapp");
    }

    @Override // defpackage.yn
    public String e() {
        return "SubscribeProPresenter";
    }

    @Override // defpackage.yn
    public boolean g(Intent intent, Bundle bundle, Bundle bundle2) {
        super.g(intent, bundle, bundle2);
        if (bundle2 == null) {
            this.d = androidx.core.app.b.d0(this.c);
        }
        if (androidx.core.app.b.d0(this.c)) {
            this.a.l(true);
        }
        return true;
    }

    @Override // defpackage.yn
    public void h(Bundle bundle) {
        em.h("SubscribeProPresenter", "onRestoreInstanceState");
        this.d = bundle.getBoolean("mPreviousBuySubsPro", false);
    }

    @Override // defpackage.yn
    public void i(Bundle bundle) {
        em.h("SubscribeProPresenter", "onSaveInstanceState");
        bundle.putBoolean("mPreviousBuySubsPro", this.d);
    }

    @Override // defpackage.yn
    public boolean j() {
        this.g = null;
        yp.F().V(null);
        this.j = null;
        this.h = null;
        this.i = null;
        return true;
    }

    @Override // defpackage.yn
    public boolean k() {
        Runnable runnable = this.g;
        if (runnable == null) {
            return true;
        }
        runnable.run();
        return true;
    }

    public void v() {
        if (androidx.core.app.b.d0(this.c)) {
            this.a.b();
            androidx.core.app.b.W(this.c).edit().putBoolean("HasPro", true).apply();
            if (f.a(this.c)) {
                this.a.l(true);
            } else {
                this.a.o();
            }
        } else {
            StringBuilder q = ic.q("isBuySubsPro = ");
            q.append(androidx.core.app.b.d0(this.c));
            em.h("SubscribeProPresenter", q.toString());
        }
    }

    public /* synthetic */ void w() {
        if (!this.d) {
            this.b.postDelayed(new co(this), 50);
        }
    }

    public /* synthetic */ void x(com.android.billingclient.api.g gVar, List list) {
        em.h("SubscribeProPresenter", "mPermanentResponseListener");
        B(list);
    }

    public /* synthetic */ void y(com.android.billingclient.api.g gVar, List list) {
        em.h("SubscribeProPresenter", "mProResponseListener");
        B(list);
    }

    public void z() {
        if (!androidx.core.app.b.c0(this.c)) {
            mr.d(this.c.getString(R.string.e_));
            return;
        }
        this.f = new b(null);
        this.e.v();
    }
}
