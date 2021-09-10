package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;

public class LA implements DialogInterface.OnClickListener {
    public final /* synthetic */ DialogInterface.OnClickListener A00;

    public LA(DialogInterface.OnClickListener onClickListener) {
        this.A00 = onClickListener;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.A00.onClick(dialogInterface, i);
    }
}
