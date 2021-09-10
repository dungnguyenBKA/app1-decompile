package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.b;
import androidx.fragment.app.g;
import com.google.android.gms.common.internal.n;

public class i extends b {
    private Dialog f0 = null;
    private DialogInterface.OnCancelListener g0 = null;

    public static i u1(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        i iVar = new i();
        n.i(dialog, "Cannot display null dialog");
        Dialog dialog2 = dialog;
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        iVar.f0 = dialog2;
        if (onCancelListener != null) {
            iVar.g0 = onCancelListener;
        }
        return iVar;
    }

    @Override // androidx.fragment.app.b
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.g0;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.b
    public Dialog p1(Bundle bundle) {
        if (this.f0 == null) {
            r1(false);
        }
        return this.f0;
    }

    @Override // androidx.fragment.app.b
    public void t1(g gVar, String str) {
        super.t1(gVar, str);
    }
}
