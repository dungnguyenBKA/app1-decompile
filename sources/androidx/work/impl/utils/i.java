package androidx.work.impl.utils;

import androidx.work.h;
import androidx.work.impl.WorkDatabase;
import androidx.work.m;

public class i implements Runnable {
    private static final String d = h.f("StopWorkRunnable");
    private androidx.work.impl.i b;
    private String c;

    public i(androidx.work.impl.i iVar, String str) {
        this.b = iVar;
        this.c = str;
    }

    public void run() {
        WorkDatabase i = this.b.i();
        d6 t = i.t();
        i.c();
        try {
            e6 e6Var = (e6) t;
            if (e6Var.g(this.c) == m.RUNNING) {
                e6Var.s(m.ENQUEUED, this.c);
            }
            boolean h = this.b.g().h(this.c);
            h.c().a(d, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.c, Boolean.valueOf(h)), new Throwable[0]);
            i.o();
        } finally {
            i.g();
        }
    }
}
