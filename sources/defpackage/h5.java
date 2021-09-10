package defpackage;

import android.content.Context;
import android.os.Build;
import androidx.work.i;

/* renamed from: h5  reason: default package */
public class h5 extends g5<b5> {
    public h5(Context context, m6 m6Var) {
        super(s5.c(context, m6Var).d());
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.g5
    public boolean b(c6 c6Var) {
        return c6Var.j.b() == i.CONNECTED;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // defpackage.g5
    public boolean c(b5 b5Var) {
        b5 b5Var2 = b5Var;
        if (Build.VERSION.SDK_INT < 26) {
            return true ^ b5Var2.a();
        }
        if (!b5Var2.a() || !b5Var2.d()) {
            return true;
        }
        return false;
    }
}
