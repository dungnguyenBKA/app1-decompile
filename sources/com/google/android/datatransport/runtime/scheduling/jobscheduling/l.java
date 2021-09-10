package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import defpackage.lv;

/* access modifiers changed from: package-private */
public final /* synthetic */ class l implements lv.a {
    private final m a;
    private final it b;
    private final int c;

    private l(m mVar, it itVar, int i) {
        this.a = mVar;
        this.b = itVar;
        this.c = i;
    }

    public static lv.a a(m mVar, it itVar, int i) {
        return new l(mVar, itVar, i);
    }

    @Override // defpackage.lv.a
    public Object execute() {
        this.a.d.a(this.b, this.c + 1);
        return null;
    }
}
