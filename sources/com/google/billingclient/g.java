package com.google.billingclient;

import android.app.Activity;
import android.content.Context;
import android.util.Pair;
import com.android.billingclient.api.a;
import com.android.billingclient.api.c;
import com.android.billingclient.api.h;
import com.android.billingclient.api.i;
import com.android.billingclient.api.j;
import com.android.billingclient.api.m;
import com.android.billingclient.api.n;
import com.android.billingclient.api.o;
import com.android.billingclient.api.p;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class g {
    private static final ExecutorService g = Executors.newFixedThreadPool(BillingHelper.b);
    public static final /* synthetic */ int h = 0;
    private Context a;
    private com.android.billingclient.api.c b;
    private boolean c = false;
    private d d;
    private final Map<String, n> e = new HashMap();
    private final LinkedList<Runnable> f = new LinkedList<>();

    /* access modifiers changed from: package-private */
    public class a implements Runnable {
        final /* synthetic */ String b;
        final /* synthetic */ i c;

        a(String str, i iVar) {
            this.b = str;
            this.c = iVar;
        }

        public void run() {
            h.a b2 = h.b();
            b2.b(this.b);
            g.this.b.b(b2.a(), this.c);
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements Runnable {
        final /* synthetic */ List b;
        final /* synthetic */ String c;
        final /* synthetic */ p d;

        class a implements p {
            a() {
            }

            @Override // com.android.billingclient.api.p
            public void a(com.android.billingclient.api.g gVar, List<n> list) {
                g.h(g.this, list);
                b.this.d.a(gVar, list);
                Context unused = g.this.a;
                BillingHelper.b(gVar);
            }
        }

        b(List list, String str, p pVar) {
            this.b = list;
            this.c = str;
            this.d = pVar;
        }

        public void run() {
            List list = this.b;
            if (list != null && !list.isEmpty()) {
                o.a c2 = o.c();
                c2.b(this.b);
                c2.c(this.c);
                g.this.b.i(c2.a(), new a());
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ String b;

        c(String str) {
            this.b = str;
        }

        public void run() {
            if (Objects.requireNonNull(g.this) != null) {
                g.this.b.g(this.b, Objects.requireNonNull(g.this));
            }
        }
    }

    public interface d {
        void a(Activity activity, List<String> list, int i);

        void b(int i, List<j> list);
    }

    public g(Context context, m mVar) {
        BillingHelper.c("BillingManager", "Creating Billing client.");
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        h hVar = new h(this, mVar);
        c.a f2 = com.android.billingclient.api.c.f(applicationContext);
        f2.c(hVar);
        f2.b();
        this.b = f2.a();
        ExecutorService executorService = g;
        try {
            Field declaredField = Class.forName("com.android.billingclient.api.d").getDeclaredField("zzt");
            declaredField.setAccessible(true);
            declaredField.set(this.b, executorService);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        BillingHelper.c("BillingManager", "Starting setup.");
        k(new i(this));
        this.b.j(new k(this));
    }

    static void e(g gVar) {
        synchronized (gVar.f) {
            while (!gVar.f.isEmpty()) {
                gVar.f.removeFirst().run();
            }
        }
    }

    static void h(g gVar, List list) {
        Objects.requireNonNull(gVar);
        if (list != null) {
            synchronized (gVar.e) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    n nVar = (n) it.next();
                    gVar.e.put(nVar.c(), nVar);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void j(List<j> list) {
        if (list != null && list.size() > 0) {
            for (j jVar : list) {
                int a2 = jVar.a();
                BillingHelper.c("BillingManager", "Purchase state, " + a2);
                if (a2 != 1) {
                    BillingHelper.c("BillingManager", "It is not purchased and cannot acknowledged");
                } else if (jVar.d()) {
                    BillingHelper.c("BillingManager", "Purchase acknowledged, No need to repeat acknowledge");
                } else {
                    a.C0030a b2 = com.android.billingclient.api.a.b();
                    b2.b(jVar.b());
                    n(new f(this, b2.a()));
                }
            }
        }
    }

    private void k(Runnable runnable) {
        if (runnable != null) {
            synchronized (this.f) {
                this.f.add(runnable);
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean l() {
        com.android.billingclient.api.g c2 = this.b.c("subscriptions");
        BillingHelper.b(c2);
        return c2 != null && c2.b() == 0;
    }

    private void n(Runnable runnable) {
        if (this.b.d()) {
            runnable.run();
            return;
        }
        k(runnable);
        this.b.j(new k(this));
    }

    private void s(Activity activity, String str) {
        n o = o(str);
        if (o != null) {
            n(new l(this, o, null, null, activity));
        } else {
            BillingHelper.a("BillingManager", "launch billing failed, details is null");
        }
    }

    public void m(String str, i iVar) {
        n(new a(str, iVar));
    }

    public n o(String str) {
        n nVar;
        synchronized (this.e) {
            nVar = this.e.get(str);
        }
        return nVar;
    }

    public /* synthetic */ void p(Activity activity, String str, com.android.billingclient.api.g gVar, List list) {
        s(activity, str);
        BillingHelper.c("BillingManager", "Billing flow request after query sku , " + str);
    }

    public void q(ud0 ud0) {
        j.a aVar;
        ArrayList arrayList = new ArrayList();
        long currentTimeMillis = System.currentTimeMillis();
        if (!this.c) {
            this.c = l();
        }
        if (!this.c) {
            BillingHelper.c("BillingManager", "The subscriptions unsupported");
            aVar = null;
        } else {
            j.a h2 = this.b.h("subs");
            StringBuilder q = ic.q("Querying subscriptions elapsed time: ");
            q.append(System.currentTimeMillis() - currentTimeMillis);
            q.append("ms");
            BillingHelper.c("BillingManager", q.toString());
            if (h2.b() == 0) {
                StringBuilder q2 = ic.q("Querying subscriptions result code: ");
                q2.append(h2.b());
                BillingHelper.c("BillingManager", q2.toString());
            } else {
                BillingHelper.c("BillingManager", "Got an error response trying to query subscription purchases");
            }
            aVar = h2;
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        j.a h3 = this.b.h("inapp");
        if (h3.b() == 0) {
            StringBuilder q3 = ic.q("getInAppPurchases success, response code:");
            q3.append(h3.b());
            BillingHelper.c("BillingManager", q3.toString());
        } else {
            StringBuilder q4 = ic.q("getInAppPurchases got an error response code: ");
            q4.append(h3.b());
            BillingHelper.c("BillingManager", q4.toString());
        }
        StringBuilder q5 = ic.q("Querying inapp purchases elapsed time: ");
        q5.append(System.currentTimeMillis() - currentTimeMillis2);
        q5.append("ms");
        BillingHelper.c("BillingManager", q5.toString());
        if (h3.b() == 0 && h3.a() != null) {
            arrayList.addAll(h3.a());
        }
        if (!(aVar == null || aVar.b() != 0 || aVar.a() == null)) {
            arrayList.addAll(aVar.a());
        }
        com.android.billingclient.api.g y = ic.y((h3.b() == 0 || (aVar != null && aVar.b() == 0)) ? 0 : 6, "BillingClient: Query inventory");
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            j jVar = (j) it.next();
            int a2 = jVar.a();
            if (a2 == 1) {
                arrayList2.add(jVar);
            } else if (a2 == 2) {
                StringBuilder q6 = ic.q("Received a pending purchase of SKU: ");
                q6.append(jVar.c());
                BillingHelper.c("BillingManager", q6.toString());
            }
        }
        j(arrayList2);
        ud0.c(new Pair(Integer.valueOf(y.b()), arrayList2));
        ud0.a();
    }

    public /* synthetic */ void r(Pair pair) {
        BillingHelper.c("BillingManager", "Query inventory was successful.");
        d dVar = this.d;
        if (dVar != null) {
            dVar.b(((Integer) pair.first).intValue(), (List) pair.second);
        }
    }

    public void t(Activity activity, String str, String str2) {
        if (o(str) != null) {
            s(activity, str);
            BillingHelper.c("BillingManager", "Direct billing flow request, " + str);
            return;
        }
        List singletonList = Collections.singletonList(str);
        m mVar = new m(this, singletonList, str2, new b(this, activity, str));
        if (this.b.d()) {
            mVar.run();
            return;
        }
        k(mVar);
        this.b.j(new j(this, activity, singletonList));
    }

    public void u(String str) {
        n(new c(str));
    }

    public g v() {
        n(new a(this));
        return this;
    }

    public void w(String str, List<String> list, p pVar) {
        n(new b(list, str, pVar));
    }

    public void x(d dVar) {
        this.d = dVar;
    }
}
