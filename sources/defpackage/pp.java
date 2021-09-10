package defpackage;

import android.app.Activity;
import androidx.appcompat.app.g;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: pp  reason: default package */
public final /* synthetic */ class pp implements Runnable {
    public final /* synthetic */ yp b;
    public final /* synthetic */ Activity c;
    public final /* synthetic */ String d;

    public /* synthetic */ pp(yp ypVar, Activity activity, String str) {
        this.b = ypVar;
        this.c = activity;
        this.d = str;
    }

    public final void run() {
        yp ypVar = this.b;
        Activity activity = this.c;
        String str = this.d;
        Objects.requireNonNull(ypVar);
        try {
            g.a aVar = new g.a(activity);
            aVar.n(R.string.f9);
            aVar.g(R.string.f8);
            aVar.k(R.string.bf, new np(ypVar, activity, str));
            aVar.i(R.string.ap, rp.b);
            aVar.a().show();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
