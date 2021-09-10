package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import defpackage.da0;
import defpackage.oa0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: na0  reason: default package */
public class na0 implements da0.a {
    private static na0 g = new na0();
    private static Handler h = new Handler(Looper.getMainLooper());
    private static Handler i = null;
    private static final Runnable j = new b();
    private static final Runnable k = new c();
    private List<e> a = new ArrayList();
    private int b;
    private ea0 c = new ea0();
    private oa0 d = new oa0();
    private va0 e = new va0(new ra0());
    private long f;

    /* renamed from: na0$a */
    class a implements Runnable {
        a() {
        }

        public void run() {
            na0.this.e.a();
        }
    }

    /* renamed from: na0$b */
    static class b implements Runnable {
        b() {
        }

        public void run() {
            na0.e(na0.i());
        }
    }

    /* renamed from: na0$c */
    static class c implements Runnable {
        c() {
        }

        public void run() {
            if (na0.i != null) {
                na0.i.post(na0.j);
                na0.i.postDelayed(na0.k, 200);
            }
        }
    }

    /* renamed from: na0$d */
    public interface d extends e {
        void b(int i, long j);
    }

    /* renamed from: na0$e */
    public interface e {
        void a(int i, long j);
    }

    na0() {
    }

    static void e(na0 na0) {
        na0.b = 0;
        na0.f = System.nanoTime();
        na0.d.h();
        long nanoTime = System.nanoTime();
        da0 a2 = na0.c.a();
        if (na0.d.f().size() > 0) {
            Iterator<String> it = na0.d.f().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject b2 = ((fa0) a2).b(null);
                View d2 = na0.d.d(next);
                da0 b3 = na0.c.b();
                String b4 = na0.d.b(next);
                if (b4 != null) {
                    JSONObject b5 = ((ga0) b3).b(d2);
                    int i2 = ha0.d;
                    try {
                        b5.put("adSessionId", next);
                    } catch (JSONException e2) {
                        androidx.core.app.b.b("Error with setting ad session id", e2);
                    }
                    try {
                        b5.put("notVisibleReason", b4);
                    } catch (JSONException e3) {
                        androidx.core.app.b.b("Error with setting not visible reason", e3);
                    }
                    ha0.f(b2, b5);
                }
                ha0.d(b2);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                na0.e.e(b2, hashSet, nanoTime);
            }
        }
        if (na0.d.c().size() > 0) {
            fa0 fa0 = (fa0) a2;
            JSONObject b6 = fa0.b(null);
            fa0.a(null, b6, na0, true);
            ha0.d(b6);
            na0.e.c(b6, na0.d.c(), nanoTime);
        } else {
            na0.e.a();
        }
        na0.d.i();
        long nanoTime2 = System.nanoTime() - na0.f;
        if (na0.a.size() > 0) {
            for (e eVar : na0.a) {
                eVar.a(na0.b, TimeUnit.NANOSECONDS.toMillis(nanoTime2));
                if (eVar instanceof d) {
                    ((d) eVar).b(na0.b, nanoTime2);
                }
            }
        }
    }

    public static na0 i() {
        return g;
    }

    public void b() {
        if (i == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            i = handler;
            handler.post(j);
            i.postDelayed(k, 200);
        }
    }

    public void c(View view, da0 da0, JSONObject jSONObject) {
        wa0 g2;
        boolean z;
        boolean z2 = false;
        if ((androidx.core.app.b.x(view) == null) && (g2 = this.d.g(view)) != wa0.UNDERLYING_VIEW) {
            JSONObject b2 = da0.b(view);
            ha0.f(jSONObject, b2);
            Object a2 = this.d.a(view);
            if (a2 != null) {
                int i2 = ha0.d;
                try {
                    b2.put("adSessionId", a2);
                } catch (JSONException e2) {
                    androidx.core.app.b.b("Error with setting ad session id", e2);
                }
                this.d.j();
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                oa0.a e3 = this.d.e(view);
                if (e3 != null) {
                    int i3 = ha0.d;
                    x90 a3 = e3.a();
                    JSONArray jSONArray = new JSONArray();
                    for (String str : e3.b()) {
                        jSONArray.put(str);
                    }
                    try {
                        b2.put("isFriendlyObstructionFor", jSONArray);
                        Objects.requireNonNull(a3);
                        b2.put("friendlyObstructionClass", (Object) null);
                        b2.put("friendlyObstructionPurpose", (Object) null);
                        b2.put("friendlyObstructionReason", (Object) null);
                    } catch (JSONException e4) {
                        androidx.core.app.b.b("Error with setting friendly obstruction", e4);
                    }
                }
                if (g2 == wa0.PARENT_VIEW) {
                    z2 = true;
                }
                da0.a(view, b2, this, z2);
            }
            this.b++;
        }
    }

    public void d() {
        Handler handler = i;
        if (handler != null) {
            handler.removeCallbacks(k);
            i = null;
        }
        this.a.clear();
        h.post(new a());
    }
}
