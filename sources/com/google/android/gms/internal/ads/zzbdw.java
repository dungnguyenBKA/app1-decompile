package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

final class zzbdw implements DialogInterface.OnCancelListener {
    private final /* synthetic */ JsResult zzeqp;

    zzbdw(JsResult jsResult) {
        this.zzeqp = jsResult;
    }

    public final void onCancel(DialogInterface dialogInterface) {
        this.zzeqp.cancel();
    }
}
