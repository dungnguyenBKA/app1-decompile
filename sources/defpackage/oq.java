package defpackage;

import android.content.Context;
import com.google.firebase.remoteconfig.f;

/* renamed from: oq  reason: default package */
public final /* synthetic */ class oq implements Runnable {
    public final /* synthetic */ Context b;

    public /* synthetic */ oq(Context context) {
        this.b = context;
    }

    public final void run() {
        Context context = this.b;
        try {
            f e = f.e();
            e.c().d(new nq(e, context));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
