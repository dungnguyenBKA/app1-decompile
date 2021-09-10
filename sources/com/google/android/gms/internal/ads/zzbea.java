package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

final class zzbea implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsPromptResult zzeqq;

    zzbea(JsPromptResult jsPromptResult) {
        this.zzeqq = jsPromptResult;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzeqq.cancel();
    }
}
