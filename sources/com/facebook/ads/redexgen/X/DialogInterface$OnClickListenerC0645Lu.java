package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;
import android.widget.EditText;

/* renamed from: com.facebook.ads.redexgen.X.Lu  reason: case insensitive filesystem */
public class DialogInterface$OnClickListenerC0645Lu implements DialogInterface.OnClickListener {
    public final /* synthetic */ EditText A00;
    public final /* synthetic */ C1172ch A01;

    public DialogInterface$OnClickListenerC0645Lu(C1172ch chVar, EditText editText) {
        this.A01 = chVar;
        this.A00 = editText;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.A01.A02.execute(new C1171cg(this, dialogInterface));
    }
}
