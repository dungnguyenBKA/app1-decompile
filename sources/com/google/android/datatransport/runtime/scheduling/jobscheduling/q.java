package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.concurrent.Executor;
import javax.inject.Inject;

public class q {
    private final Executor a;
    private final eu b;
    private final s c;
    private final lv d;

    @Inject
    q(Executor executor, eu euVar, s sVar, lv lvVar) {
        this.a = executor;
        this.b = euVar;
        this.c = sVar;
        this.d = lvVar;
    }

    static /* synthetic */ Object b(q qVar) {
        for (it itVar : qVar.b.v()) {
            qVar.c.a(itVar, 1);
        }
        return null;
    }

    public void a() {
        this.a.execute(o.a(this));
    }
}
