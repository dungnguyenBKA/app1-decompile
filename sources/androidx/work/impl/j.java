package androidx.work.impl;

import androidx.work.h;

class j implements Runnable {
    final /* synthetic */ l6 b;
    final /* synthetic */ l c;

    j(l lVar, l6 l6Var) {
        this.c = lVar;
        this.b = l6Var;
    }

    public void run() {
        try {
            h.c().a(l.t, String.format("Starting work for %s", this.c.f.c), new Throwable[0]);
            l lVar = this.c;
            lVar.r = lVar.g.startWork();
            this.b.l(this.c.r);
        } catch (Throwable th) {
            this.b.k(th);
        }
    }
}
