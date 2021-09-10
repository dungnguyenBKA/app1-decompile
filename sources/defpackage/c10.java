package defpackage;

import android.content.Context;
import defpackage.i20;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* renamed from: c10  reason: default package */
public class c10 {
    private final k00 a;
    private final b30 b;
    private final f30 c;
    private final j10 d;
    private final e10 e;

    c10(k00 k00, b30 b30, f30 f30, j10 j10, e10 e10) {
        this.a = k00;
        this.b = b30;
        this.c = f30;
        this.d = j10;
        this.e = e10;
    }

    static boolean a(c10 c10, kw kwVar) {
        Objects.requireNonNull(c10);
        if (kwVar.m()) {
            l00 l00 = (l00) kwVar.j();
            az f = az.f();
            StringBuilder q = ic.q("Crashlytics report successfully enqueued to DataTransport: ");
            q.append(l00.c());
            f.b(q.toString());
            c10.b.d(l00.c());
            return true;
        }
        az.f().j("Crashlytics report could not be enqueued to DataTransport", kwVar.i());
        return false;
    }

    public static c10 b(Context context, t00 t00, c30 c30, mz mzVar, j10 j10, e10 e10, z30 z30, l30 l30) {
        return new c10(new k00(context, t00, mzVar, z30), new b30(new File(c30.b()), l30), f30.a(context), j10, e10);
    }

    private void h(Throwable th, Thread thread, String str, String str2, long j, boolean z) {
        boolean equals = str2.equals("crash");
        i20.d.AbstractC0101d a2 = this.a.a(th, thread, str2, j, 4, 8, z);
        i20.d.AbstractC0101d.b g = a2.g();
        String c2 = this.d.c();
        if (c2 != null) {
            i20.d.AbstractC0101d.AbstractC0112d.a a3 = i20.d.AbstractC0101d.AbstractC0112d.a();
            a3.b(c2);
            g.d(a3.a());
        } else {
            az.f().h("No log data to include with this event.");
        }
        Map<String, String> c3 = this.e.c();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(c3.size());
        for (Map.Entry<String, String> entry : c3.entrySet()) {
            i20.b.a a4 = i20.b.a();
            a4.b(entry.getKey());
            a4.c(entry.getValue());
            arrayList.add(a4.a());
        }
        Collections.sort(arrayList, b10.a());
        if (!arrayList.isEmpty()) {
            i20.d.AbstractC0101d.a.AbstractC0102a f = a2.b().f();
            f.c(j20.a(arrayList));
            g.b(f.a());
        }
        this.b.o(g.a(), str, equals);
    }

    public void c(String str, List<y00> list) {
        ArrayList arrayList = new ArrayList();
        for (y00 y00 : list) {
            i20.c.b c2 = y00.c();
            if (c2 != null) {
                arrayList.add(c2);
            }
        }
        b30 b30 = this.b;
        i20.c.a a2 = i20.c.a();
        a2.b(j20.a(arrayList));
        b30.f(str, a2.a());
    }

    public void d(long j, String str) {
        this.b.e(str, j);
    }

    public boolean e() {
        return this.b.l();
    }

    public List<String> f() {
        return this.b.m();
    }

    public void g(String str, long j) {
        this.b.p(this.a.b(str, j));
    }

    public void i(Throwable th, Thread thread, String str, long j) {
        az f = az.f();
        f.h("Persisting fatal event for session " + str);
        h(th, thread, str, "crash", j, true);
    }

    public void j(Throwable th, Thread thread, String str, long j) {
        az f = az.f();
        f.h("Persisting non-fatal event for session " + str);
        h(th, thread, str, "error", j, false);
    }

    public void k(String str) {
        String d2 = this.e.d();
        if (d2 == null) {
            az.f().h("Could not persist user ID; no user ID available");
        } else {
            this.b.q(d2, str);
        }
    }

    public void l() {
        this.b.c();
    }

    public kw<Void> m(Executor executor) {
        List<l00> n = this.b.n();
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) n).iterator();
        while (it.hasNext()) {
            arrayList.add(this.c.d((l00) it.next()).g(executor, a10.a(this)));
        }
        return nw.e(arrayList);
    }
}
