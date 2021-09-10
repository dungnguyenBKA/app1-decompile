package androidx.work.impl;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.b;
import androidx.work.e;
import androidx.work.g;
import androidx.work.h;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;

public class l implements Runnable {
    static final String t = h.f("WorkerWrapper");
    private Context b;
    private String c;
    private List<d> d;
    private WorkerParameters.a e;
    c6 f;
    ListenableWorker g;
    ListenableWorker.a h = new ListenableWorker.a.C0022a();
    private b i;
    private m6 j;
    private WorkDatabase k;
    private d6 l;
    private u5 m;
    private g6 n;
    private List<String> o;
    private String p;
    private l6<Boolean> q = l6.j();
    uy<ListenableWorker.a> r = null;
    private volatile boolean s;

    public static class a {
        Context a;
        m6 b;
        b c;
        WorkDatabase d;
        String e;
        List<d> f;
        WorkerParameters.a g = new WorkerParameters.a();

        public a(Context context, b bVar, m6 m6Var, WorkDatabase workDatabase, String str) {
            this.a = context.getApplicationContext();
            this.b = m6Var;
            this.c = bVar;
            this.d = workDatabase;
            this.e = str;
        }
    }

    l(a aVar) {
        this.b = aVar.a;
        this.j = aVar.b;
        this.c = aVar.e;
        this.d = aVar.f;
        this.e = aVar.g;
        this.g = null;
        this.i = aVar.c;
        WorkDatabase workDatabase = aVar.d;
        this.k = workDatabase;
        this.l = workDatabase.t();
        this.m = this.k.p();
        this.n = this.k.u();
    }

    private void b(ListenableWorker.a aVar) {
        if (aVar instanceof ListenableWorker.a.c) {
            h.c().d(t, String.format("Worker result SUCCESS for %s", this.p), new Throwable[0]);
            if (this.f.d()) {
                g();
                return;
            }
            this.k.c();
            try {
                d6 d6Var = this.l;
                ((e6) d6Var).s(m.SUCCEEDED, this.c);
                e a2 = ((ListenableWorker.a.c) this.h).a();
                ((e6) this.l).q(this.c, a2);
                long currentTimeMillis = System.currentTimeMillis();
                Iterator it = ((ArrayList) ((v5) this.m).a(this.c)).iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (((e6) this.l).g(str) == m.BLOCKED && ((v5) this.m).b(str)) {
                        h.c().d(t, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                        d6 d6Var2 = this.l;
                        ((e6) d6Var2).s(m.ENQUEUED, str);
                        ((e6) this.l).r(str, currentTimeMillis);
                    }
                }
                this.k.o();
            } finally {
                this.k.g();
                h(false);
            }
        } else if (aVar instanceof ListenableWorker.a.b) {
            h.c().d(t, String.format("Worker result RETRY for %s", this.p), new Throwable[0]);
            f();
        } else {
            h.c().d(t, String.format("Worker result FAILURE for %s", this.p), new Throwable[0]);
            if (this.f.d()) {
                g();
            } else {
                j();
            }
        }
    }

    private void d(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (((e6) this.l).g(str2) != m.CANCELLED) {
                d6 d6Var = this.l;
                ((e6) d6Var).s(m.FAILED, str2);
            }
            linkedList.addAll(((v5) this.m).a(str2));
        }
    }

    private void f() {
        this.k.c();
        try {
            d6 d6Var = this.l;
            ((e6) d6Var).s(m.ENQUEUED, this.c);
            ((e6) this.l).r(this.c, System.currentTimeMillis());
            ((e6) this.l).n(this.c, -1);
            this.k.o();
        } finally {
            this.k.g();
            h(true);
        }
    }

    private void g() {
        this.k.c();
        try {
            ((e6) this.l).r(this.c, System.currentTimeMillis());
            d6 d6Var = this.l;
            ((e6) d6Var).s(m.ENQUEUED, this.c);
            ((e6) this.l).p(this.c);
            ((e6) this.l).n(this.c, -1);
            this.k.o();
        } finally {
            this.k.g();
            h(false);
        }
    }

    /* JADX INFO: finally extract failed */
    private void h(boolean z) {
        this.k.c();
        try {
            if (((ArrayList) ((e6) this.k.t()).b()).isEmpty()) {
                androidx.work.impl.utils.e.a(this.b, RescheduleReceiver.class, false);
            }
            this.k.o();
            this.k.g();
            this.q.i(Boolean.valueOf(z));
        } catch (Throwable th) {
            this.k.g();
            throw th;
        }
    }

    private void i() {
        m g2 = ((e6) this.l).g(this.c);
        if (g2 == m.RUNNING) {
            h.c().a(t, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.c), new Throwable[0]);
            h(true);
            return;
        }
        h.c().a(t, String.format("Status for %s is %s; not doing any work", this.c, g2), new Throwable[0]);
        h(false);
    }

    private boolean k() {
        if (!this.s) {
            return false;
        }
        h.c().a(t, String.format("Work interrupted for %s", this.p), new Throwable[0]);
        m g2 = ((e6) this.l).g(this.c);
        if (g2 == null) {
            h(false);
        } else {
            h(!g2.a());
        }
        return true;
    }

    public uy<Boolean> a() {
        return this.q;
    }

    public void c() {
        this.s = true;
        k();
        uy<ListenableWorker.a> uyVar = this.r;
        if (uyVar != null) {
            ((j6) uyVar).cancel(true);
        }
        ListenableWorker listenableWorker = this.g;
        if (listenableWorker != null) {
            listenableWorker.stop();
        }
    }

    /* access modifiers changed from: package-private */
    public void e() {
        boolean z = false;
        if (!k()) {
            this.k.c();
            try {
                m g2 = ((e6) this.l).g(this.c);
                if (g2 == null) {
                    h(false);
                    z = true;
                } else if (g2 == m.RUNNING) {
                    b(this.h);
                    z = ((e6) this.l).g(this.c).a();
                } else if (!g2.a()) {
                    f();
                }
                this.k.o();
            } finally {
                this.k.g();
            }
        }
        List<d> list = this.d;
        if (list != null) {
            if (z) {
                for (d dVar : list) {
                    dVar.cancel(this.c);
                }
            }
            e.b(this.i, this.k, this.d);
        }
    }

    /* access modifiers changed from: package-private */
    public void j() {
        this.k.c();
        try {
            d(this.c);
            e a2 = ((ListenableWorker.a.C0022a) this.h).a();
            ((e6) this.l).q(this.c, a2);
            this.k.o();
        } finally {
            this.k.g();
            h(false);
        }
    }

    public void run() {
        e b2;
        List<String> a2 = ((h6) this.n).a(this.c);
        this.o = a2;
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.c);
        sb.append(", tags={ ");
        boolean z = true;
        boolean z2 = true;
        for (String str : a2) {
            if (z2) {
                z2 = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(" } ]");
        this.p = sb.toString();
        if (!k()) {
            this.k.c();
            try {
                c6 j2 = ((e6) this.l).j(this.c);
                this.f = j2;
                if (j2 == null) {
                    h.c().b(t, String.format("Didn't find WorkSpec for id %s", this.c), new Throwable[0]);
                    h(false);
                } else {
                    m mVar = j2.b;
                    m mVar2 = m.ENQUEUED;
                    if (mVar != mVar2) {
                        i();
                        this.k.o();
                        h.c().a(t, String.format("%s is not in ENQUEUED state. Nothing more to do.", this.f.c), new Throwable[0]);
                    } else {
                        if (j2.d() || this.f.c()) {
                            long currentTimeMillis = System.currentTimeMillis();
                            c6 c6Var = this.f;
                            if (!(c6Var.n == 0) && currentTimeMillis < c6Var.a()) {
                                h.c().a(t, String.format("Delaying execution for %s because it is being executed before schedule.", this.f.c), new Throwable[0]);
                                h(true);
                            }
                        }
                        this.k.o();
                        this.k.g();
                        if (this.f.d()) {
                            b2 = this.f.e;
                        } else {
                            g a3 = g.a(this.f.d);
                            if (a3 == null) {
                                h.c().b(t, String.format("Could not create Input Merger %s", this.f.d), new Throwable[0]);
                                j();
                                return;
                            }
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(this.f.e);
                            arrayList.addAll(((e6) this.l).d(this.c));
                            b2 = a3.b(arrayList);
                        }
                        WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(this.c), b2, this.o, this.e, this.f.k, this.i.b(), this.j, this.i.g());
                        if (this.g == null) {
                            this.g = this.i.g().a(this.b, this.f.c, workerParameters);
                        }
                        ListenableWorker listenableWorker = this.g;
                        if (listenableWorker == null) {
                            h.c().b(t, String.format("Could not create Worker %s", this.f.c), new Throwable[0]);
                            j();
                        } else if (listenableWorker.isUsed()) {
                            h.c().b(t, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.f.c), new Throwable[0]);
                            j();
                        } else {
                            this.g.setUsed();
                            this.k.c();
                            try {
                                if (((e6) this.l).g(this.c) == mVar2) {
                                    ((e6) this.l).s(m.RUNNING, this.c);
                                    ((e6) this.l).l(this.c);
                                } else {
                                    z = false;
                                }
                                this.k.o();
                                if (!z) {
                                    i();
                                } else if (!k()) {
                                    l6 j3 = l6.j();
                                    ((n6) this.j).c().execute(new j(this, j3));
                                    j3.addListener(new k(this, j3, this.p), ((n6) this.j).b());
                                }
                            } finally {
                                this.k.g();
                            }
                        }
                    }
                }
            } finally {
                this.k.g();
            }
        }
    }
}
