package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.backends.g;
import defpackage.lv;

/* access modifiers changed from: package-private */
public final /* synthetic */ class j implements lv.a {
    private final m a;
    private final g b;
    private final Iterable c;
    private final it d;
    private final int e;

    private j(m mVar, g gVar, Iterable iterable, it itVar, int i) {
        this.a = mVar;
        this.b = gVar;
        this.c = iterable;
        this.d = itVar;
        this.e = i;
    }

    public static lv.a a(m mVar, g gVar, Iterable iterable, it itVar, int i) {
        return new j(mVar, gVar, iterable, itVar, i);
    }

    @Override // defpackage.lv.a
    public Object execute() {
        m.b(this.a, this.b, this.c, this.d, this.e);
        return null;
    }
}
