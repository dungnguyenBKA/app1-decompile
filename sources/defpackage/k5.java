package defpackage;

import android.content.Context;
import androidx.work.i;

/* renamed from: k5  reason: default package */
public class k5 extends g5<b5> {
    public k5(Context context, m6 m6Var) {
        super(s5.c(context, m6Var).d());
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.g5
    public boolean b(c6 c6Var) {
        return c6Var.j.b() == i.UNMETERED;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // defpackage.g5
    public boolean c(b5 b5Var) {
        b5 b5Var2 = b5Var;
        return !b5Var2.a() || b5Var2.b();
    }
}
