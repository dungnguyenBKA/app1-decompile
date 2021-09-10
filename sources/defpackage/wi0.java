package defpackage;

import defpackage.vi0;
import java.io.IOException;

/* access modifiers changed from: package-private */
/* renamed from: wi0  reason: default package */
public class wi0 extends qh0 {
    final /* synthetic */ aj0 c;
    final /* synthetic */ vi0.l d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    wi0(vi0.l lVar, String str, Object[] objArr, aj0 aj0) {
        super(str, objArr);
        this.d = lVar;
        this.c = aj0;
    }

    @Override // defpackage.qh0
    public void a() {
        try {
            vi0.this.c.b(this.c);
        } catch (IOException e) {
            mj0 h = mj0.h();
            StringBuilder q = ic.q("Http2Connection.Listener failure for ");
            q.append(vi0.this.e);
            h.n(4, q.toString(), e);
            try {
                this.c.d(qi0.PROTOCOL_ERROR);
            } catch (IOException unused) {
            }
        }
    }
}
