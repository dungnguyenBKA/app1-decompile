package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.common.util.b;

/* access modifiers changed from: package-private */
public final /* synthetic */ class l implements Runnable {
    private final b b;
    private final String c;
    private final f d;

    private l(b bVar, String str, f fVar) {
        this.b = bVar;
        this.c = str;
        this.d = fVar;
    }

    public static Runnable a(b bVar, String str, f fVar) {
        return new l(bVar, str, fVar);
    }

    public void run() {
        b bVar = this.b;
        String str = this.c;
        f fVar = this.d;
        int i = m.e;
        bVar.a(str, fVar);
    }
}
