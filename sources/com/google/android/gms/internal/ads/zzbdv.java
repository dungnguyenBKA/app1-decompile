package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

final class zzbdv implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsResult zzeqp;

    zzbdv(JsResult jsResult) {
        this.zzeqp = jsResult;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzeqp.cancel();
    }
}
