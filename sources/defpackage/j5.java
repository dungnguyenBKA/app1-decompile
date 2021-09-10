package defpackage;

import android.content.Context;
import android.os.Build;
import androidx.work.h;
import androidx.work.i;

/* renamed from: j5  reason: default package */
public class j5 extends g5<b5> {
    private static final String e = h.f("NetworkNotRoamingCtrlr");

    public j5(Context context, m6 m6Var) {
        super(s5.c(context, m6Var).d());
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.g5
    public boolean b(c6 c6Var) {
        return c6Var.j.b() == i.NOT_ROAMING;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // defpackage.g5
    public boolean c(b5 b5Var) {
        b5 b5Var2 = b5Var;
        boolean z = true;
        if (Build.VERSION.SDK_INT < 24) {
            h.c().a(e, "Not-roaming network constraint is not supported before API 24, only checking for connected state.", new Throwable[0]);
            return !b5Var2.a();
        }
        if (b5Var2.a() && b5Var2.c()) {
            z = false;
        }
        return z;
    }
}
