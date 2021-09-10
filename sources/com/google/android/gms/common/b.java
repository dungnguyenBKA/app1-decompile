package com.google.android.gms.common;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.n;

public class b extends DialogFragment {
    private Dialog b = null;
    private DialogInterface.OnCancelListener c = null;

    public static b a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        b bVar = new b();
        n.i(dialog, "Cannot display null dialog");
        Dialog dialog2 = dialog;
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        bVar.b = dialog2;
        if (onCancelListener != null) {
            bVar.c = onCancelListener;
        }
        return bVar;
    }

    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.c;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (this.b == null) {
            setShowsDialog(false);
        }
        return this.b;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
