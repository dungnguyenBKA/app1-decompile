package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.j;

public abstract class c {

    public static final class a {
        private boolean a;
        private final Context b;
        private m c;

        a(Context context, j0 j0Var) {
            this.b = context;
        }

        public final c a() {
            Context context = this.b;
            if (context != null) {
                m mVar = this.c;
                if (mVar != null) {
                    boolean z = this.a;
                    if (z) {
                        return new d(z, context, mVar);
                    }
                    throw new IllegalArgumentException("Support for pending purchases must be enabled. Enable this by calling 'enablePendingPurchases()' on BillingClientBuilder.");
                }
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }

        public final a b() {
            this.a = true;
            return this;
        }

        public final a c(m mVar) {
            this.c = mVar;
            return this;
        }
    }

    public static a f(Context context) {
        return new a(context, null);
    }

    public abstract void a(a aVar, b bVar);

    public abstract void b(h hVar, i iVar);

    public abstract g c(String str);

    public abstract boolean d();

    public abstract g e(Activity activity, f fVar);

    public abstract void g(String str, l lVar);

    public abstract j.a h(String str);

    public abstract void i(o oVar, p pVar);

    public abstract void j(e eVar);
}
