package inshot.collage.adconfig;

import android.content.Context;
import defpackage.wb0;

/* access modifiers changed from: package-private */
public final class n implements wb0.a {
    final /* synthetic */ j a;

    n(j jVar) {
        this.a = jVar;
    }

    @Override // defpackage.wb0.a
    public final void a(boolean z) {
        if (!z) {
            Context context = a.a;
            if (context != null) {
                StringBuilder q = ic.q("全屏广告展示失败-");
                q.append(this.a);
                q.append(": 内部错误");
                p.e(context, "AD", q.toString());
                l lVar = l.f;
                l lVar2 = l.f;
                return;
            }
            gg0.j("context");
            throw null;
        }
        Context context2 = a.a;
        if (context2 != null) {
            d.h(context2, this.a, System.currentTimeMillis());
            Context context3 = a.a;
            if (context3 != null) {
                StringBuilder q2 = ic.q("全屏广告展示成功-");
                q2.append(this.a);
                p.e(context3, "AD", q2.toString());
                return;
            }
            gg0.j("context");
            throw null;
        }
        gg0.j("context");
        throw null;
    }
}
