package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

final class zzbdx implements DialogInterface.OnCancelListener {
    private final /* synthetic */ JsPromptResult zzeqq;

    zzbdx(JsPromptResult jsPromptResult) {
        this.zzeqq = jsPromptResult;
    }

    public final void onCancel(DialogInterface dialogInterface) {
        this.zzeqq.cancel();
    }
}
