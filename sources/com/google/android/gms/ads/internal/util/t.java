package com.google.android.gms.ads.internal.util;

import android.content.Context;

/* access modifiers changed from: package-private */
public final /* synthetic */ class t implements Runnable {
    private final zzi b;
    private final Context c;

    t(zzi zzi, Context context, String str) {
        this.b = zzi;
        this.c = context;
    }

    public final void run() {
        this.b.a(this.c, "admob");
    }
}
