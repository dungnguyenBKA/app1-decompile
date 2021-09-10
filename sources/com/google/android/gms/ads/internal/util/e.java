package com.google.android.gms.ads.internal.util;

import android.content.DialogInterface;

/* access modifiers changed from: package-private */
public final /* synthetic */ class e implements DialogInterface.OnClickListener {
    private final zzad b;
    private final String c;

    e(zzad zzad, String str) {
        this.b = zzad;
        this.c = str;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.b(this.c);
    }
}
