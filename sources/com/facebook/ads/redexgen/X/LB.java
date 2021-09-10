package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import androidx.annotation.Nullable;

public final class LB {
    public static void A00(DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, @Nullable Context context) {
        if (context == null || !(context instanceof Activity)) {
            onClickListener.onClick(null, 0);
        } else {
            new AlertDialog.Builder(context).setTitle(J4.A0U(context)).setMessage(J4.A0S(context)).setPositiveButton(J4.A0T(context), new LA(onClickListener)).setNegativeButton(J4.A0R(context), new L9(onClickListener2)).show();
        }
    }
}
