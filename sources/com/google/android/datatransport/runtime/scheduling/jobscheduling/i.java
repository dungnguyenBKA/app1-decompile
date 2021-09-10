package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import defpackage.lv;

/* access modifiers changed from: package-private */
public final /* synthetic */ class i implements lv.a {
    private final m a;
    private final it b;

    private i(m mVar, it itVar) {
        this.a = mVar;
        this.b = itVar;
    }

    public static lv.a a(m mVar, it itVar) {
        return new i(mVar, itVar);
    }

    @Override // defpackage.lv.a
    public Object execute() {
        return this.a.c.n(this.b);
    }
}
