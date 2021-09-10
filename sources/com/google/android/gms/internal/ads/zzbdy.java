package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

final class zzbdy implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsResult zzeqp;

    zzbdy(JsResult jsResult) {
        this.zzeqp = jsResult;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzeqp.confirm();
    }
}
