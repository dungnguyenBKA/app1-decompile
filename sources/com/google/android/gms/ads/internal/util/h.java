package com.google.android.gms.ads.internal.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/* access modifiers changed from: package-private */
public final class h implements Runnable {
    final /* synthetic */ Context b;
    private final /* synthetic */ String c;
    private final /* synthetic */ boolean d;
    private final /* synthetic */ boolean e;

    h(Context context, String str, boolean z, boolean z2) {
        this.b = context;
        this.c = str;
        this.d = z;
        this.e = z2;
    }

    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.b);
        builder.setMessage(this.c);
        if (this.d) {
            builder.setTitle("Error");
        } else {
            builder.setTitle("Info");
        }
        if (this.e) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new i(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
