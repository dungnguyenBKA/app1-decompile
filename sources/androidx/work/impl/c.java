package androidx.work.impl;

import android.content.Context;
import androidx.work.WorkerParameters;
import androidx.work.b;
import androidx.work.h;
import androidx.work.impl.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

public class c implements a {
    private static final String k = h.f("Processor");
    private Context b;
    private b c;
    private m6 d;
    private WorkDatabase e;
    private Map<String, l> f = new HashMap();
    private List<d> g;
    private Set<String> h;
    private final List<a> i;
    private final Object j;

    /* access modifiers changed from: private */
    public static class a implements Runnable {
        private a b;
        private String c;
        private uy<Boolean> d;

        a(a aVar, String str, uy<Boolean> uyVar) {
            this.b = aVar;
            this.c = str;
            this.d = uyVar;
        }

        public void run() {
            boolean z;
            try {
                z = ((Boolean) ((j6) this.d).get()).booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                z = true;
            }
            this.b.c(this.c, z);
        }
    }

    public c(Context context, b bVar, m6 m6Var, WorkDatabase workDatabase, List<d> list) {
        this.b = context;
        this.c = bVar;
        this.d = m6Var;
        this.e = workDatabase;
        this.g = list;
        this.h = new HashSet();
        this.i = new ArrayList();
        this.j = new Object();
    }

    public void a(a aVar) {
        synchronized (this.j) {
            this.i.add(aVar);
        }
    }

    public boolean b(String str) {
        boolean contains;
        synchronized (this.j) {
            contains = this.h.contains(str);
        }
        return contains;
    }

    @Override // androidx.work.impl.a
    public void c(String str, boolean z) {
        synchronized (this.j) {
            this.f.remove(str);
            h.c().a(k, String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z)), new Throwable[0]);
            for (a aVar : this.i) {
                aVar.c(str, z);
            }
        }
    }

    public boolean d(String str) {
        boolean containsKey;
        synchronized (this.j) {
            containsKey = this.f.containsKey(str);
        }
        return containsKey;
    }

    public void e(a aVar) {
        synchronized (this.j) {
            this.i.remove(aVar);
        }
    }

    public boolean f(String str, WorkerParameters.a aVar) {
        synchronized (this.j) {
            if (this.f.containsKey(str)) {
                h.c().a(k, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                return false;
            }
            l.a aVar2 = new l.a(this.b, this.c, this.d, this.e, str);
            aVar2.f = this.g;
            if (aVar != null) {
                aVar2.g = aVar;
            }
            l lVar = new l(aVar2);
            uy<Boolean> a2 = lVar.a();
            ((j6) a2).addListener(new a(this, str, a2), ((n6) this.d).c());
            this.f.put(str, lVar);
            ((n6) this.d).b().execute(lVar);
            h.c().a(k, String.format("%s: processing %s", c.class.getSimpleName(), str), new Throwable[0]);
            return true;
        }
    }

    public boolean g(String str) {
        synchronized (this.j) {
            h c2 = h.c();
            String str2 = k;
            c2.a(str2, String.format("Processor cancelling %s", str), new Throwable[0]);
            this.h.add(str);
            l remove = this.f.remove(str);
            if (remove != null) {
                remove.c();
                h.c().a(str2, String.format("WorkerWrapper cancelled for %s", str), new Throwable[0]);
                return true;
            }
            h.c().a(str2, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
            return false;
        }
    }

    public boolean h(String str) {
        synchronized (this.j) {
            h c2 = h.c();
            String str2 = k;
            c2.a(str2, String.format("Processor stopping %s", str), new Throwable[0]);
            l remove = this.f.remove(str);
            if (remove != null) {
                remove.c();
                h.c().a(str2, String.format("WorkerWrapper stopped for %s", str), new Throwable[0]);
                return true;
            }
            h.c().a(str2, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
            return false;
        }
    }
}
