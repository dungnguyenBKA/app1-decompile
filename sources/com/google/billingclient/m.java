package com.google.billingclient;

import android.content.Context;
import com.android.billingclient.api.g;
import com.android.billingclient.api.n;
import com.android.billingclient.api.o;
import com.android.billingclient.api.p;
import java.util.List;

/* access modifiers changed from: package-private */
public class m implements Runnable {
    final /* synthetic */ List b;
    final /* synthetic */ String c;
    final /* synthetic */ p d;
    final /* synthetic */ g e;

    /* access modifiers changed from: package-private */
    public class a implements p {
        a() {
        }

        @Override // com.android.billingclient.api.p
        public void a(g gVar, List<n> list) {
            g.h(m.this.e, list);
            m.this.d.a(gVar, list);
            Context unused = m.this.e.a;
            BillingHelper.b(gVar);
        }
    }

    m(g gVar, List list, String str, p pVar) {
        this.e = gVar;
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
            this.e.b.i(c2.a(), new a());
        }
    }
}
