package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

final class zzbdz implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsPromptResult zzeqq;
    private final /* synthetic */ EditText zzeqr;

    zzbdz(JsPromptResult jsPromptResult, EditText editText) {
        this.zzeqq = jsPromptResult;
        this.zzeqr = editText;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzeqq.confirm(this.zzeqr.getText().toString());
    }
}
