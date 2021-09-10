package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import defpackage.lv;

/* access modifiers changed from: package-private */
public final /* synthetic */ class k implements lv.a {
    private final eu a;

    private k(eu euVar) {
        this.a = euVar;
    }

    public static lv.a a(eu euVar) {
        return new k(euVar);
    }

    @Override // defpackage.lv.a
    public Object execute() {
        return Integer.valueOf(this.a.c());
    }
}
