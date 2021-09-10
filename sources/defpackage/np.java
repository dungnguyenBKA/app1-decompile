package defpackage;

import android.app.Activity;
import android.content.DialogInterface;

/* renamed from: np  reason: default package */
public final /* synthetic */ class np implements DialogInterface.OnClickListener {
    public final /* synthetic */ yp b;
    public final /* synthetic */ Activity c;
    public final /* synthetic */ String d;

    public /* synthetic */ np(yp ypVar, Activity activity, String str) {
        this.b = ypVar;
        this.c = activity;
        this.d = str;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.N(this.c, this.d, dialogInterface, i);
    }
}
