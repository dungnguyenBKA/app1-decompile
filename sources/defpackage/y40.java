package defpackage;

import android.content.Context;
import com.google.firebase.components.d;
import com.google.firebase.components.e;
import com.google.firebase.components.q;
import com.google.firebase.components.w;
import defpackage.a50;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: y40  reason: default package */
public class y40 implements a50 {
    private static final ThreadFactory b = x40.a();
    public static final /* synthetic */ int c = 0;
    private d50<b50> a;

    private y40(Context context, Set<z40> set) {
        w wVar = new w(v40.a(context));
        new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), b);
        this.a = wVar;
    }

    public static d<a50> b() {
        d.b a2 = d.a(a50.class);
        a2.b(q.h(Context.class));
        a2.b(q.i(z40.class));
        a2.e(w40.b());
        return a2.c();
    }

    static /* synthetic */ a50 c(e eVar) {
        return new y40((Context) eVar.a(Context.class), eVar.c(z40.class));
    }

    @Override // defpackage.a50
    public a50.a a(String str) {
        boolean b2;
        long currentTimeMillis = System.currentTimeMillis();
        boolean b3 = this.a.get().b(str, currentTimeMillis);
        b50 b50 = this.a.get();
        synchronized (b50) {
            b2 = b50.b("fire-global", currentTimeMillis);
        }
        if (b3 && b2) {
            return a50.a.COMBINED;
        }
        if (b2) {
            return a50.a.GLOBAL;
        }
        if (b3) {
            return a50.a.SDK;
        }
        return a50.a.NONE;
    }
}
