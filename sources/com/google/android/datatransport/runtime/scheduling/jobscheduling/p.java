package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import defpackage.lv;

/* access modifiers changed from: package-private */
public final /* synthetic */ class p implements lv.a {
    private final q a;

    private p(q qVar) {
        this.a = qVar;
    }

    public static lv.a a(q qVar) {
        return new p(qVar);
    }

    @Override // defpackage.lv.a
    public Object execute() {
        q.b(this.a);
        return null;
    }
}
