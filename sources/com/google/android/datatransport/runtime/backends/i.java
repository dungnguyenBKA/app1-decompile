package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import javax.inject.Inject;

/* access modifiers changed from: package-private */
public class i {
    private final Context a;
    private final mv b;
    private final mv c;

    @Inject
    i(Context context, mv mvVar, mv mvVar2) {
        this.a = context;
        this.b = mvVar;
        this.c = mvVar2;
    }

    /* access modifiers changed from: package-private */
    public h a(String str) {
        return new c(this.a, this.b, this.c, str);
    }
}
