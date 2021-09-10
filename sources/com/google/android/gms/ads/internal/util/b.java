package com.google.android.gms.ads.internal.util;

import android.content.DialogInterface;

/* access modifiers changed from: package-private */
public final /* synthetic */ class b implements DialogInterface.OnClickListener {
    private final zzad b;
    private final int c;
    private final int d;
    private final int e;

    b(zzad zzad, int i, int i2, int i3) {
        this.b = zzad;
        this.c = i;
        this.d = i2;
        this.e = i3;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.a(this.c, this.d, this.e, i);
    }
}
