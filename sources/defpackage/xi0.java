package defpackage;

import defpackage.vi0;
import java.io.IOException;

/* access modifiers changed from: package-private */
/* renamed from: xi0  reason: default package */
public class xi0 extends qh0 {
    final /* synthetic */ boolean c;
    final /* synthetic */ ej0 d;
    final /* synthetic */ vi0.l e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    xi0(vi0.l lVar, String str, Object[] objArr, boolean z, ej0 ej0) {
        super(str, objArr);
        this.e = lVar;
        this.c = z;
        this.d = ej0;
    }

    @Override // defpackage.qh0
    public void a() {
        aj0[] aj0Arr;
        long j;
        vi0.l lVar = this.e;
        boolean z = this.c;
        ej0 ej0 = this.d;
        synchronized (vi0.this.w) {
            synchronized (vi0.this) {
                int d2 = vi0.this.u.d();
                if (z) {
                    vi0.this.u.a();
                }
                vi0.this.u.h(ej0);
                int d3 = vi0.this.u.d();
                aj0Arr = null;
                if (d3 == -1 || d3 == d2) {
                    j = 0;
                } else {
                    j = (long) (d3 - d2);
                    if (!vi0.this.d.isEmpty()) {
                        aj0Arr = (aj0[]) vi0.this.d.values().toArray(new aj0[vi0.this.d.size()]);
                    }
                }
            }
            try {
                vi0 vi0 = vi0.this;
                vi0.w.j(vi0.u);
            } catch (IOException unused) {
                vi0.j(vi0.this);
            }
        }
        if (aj0Arr != null) {
            for (aj0 aj0 : aj0Arr) {
                synchronized (aj0) {
                    aj0.b += j;
                    if (j > 0) {
                        aj0.notifyAll();
                    }
                }
            }
        }
        vi0.z.execute(new yi0(lVar, "OkHttp %s settings", vi0.this.e));
    }
}
