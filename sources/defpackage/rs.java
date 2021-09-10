package defpackage;

import com.google.auto.value.AutoValue;
import java.util.List;

@AutoValue
/* renamed from: rs  reason: default package */
public abstract class rs {
    public static rs a(List<us> list) {
        return new ls(list);
    }

    public static d40 b() {
        p40 p40 = new p40();
        fs fsVar = fs.a;
        p40.g(rs.class, fsVar);
        p40.g(ls.class, fsVar);
        is isVar = is.a;
        p40.g(us.class, isVar);
        p40.g(os.class, isVar);
        gs gsVar = gs.a;
        p40.g(ss.class, gsVar);
        p40.g(ms.class, gsVar);
        es esVar = es.a;
        p40.g(ds.class, esVar);
        p40.g(ks.class, esVar);
        hs hsVar = hs.a;
        p40.g(ts.class, hsVar);
        p40.g(ns.class, hsVar);
        js jsVar = js.a;
        p40.g(ws.class, jsVar);
        p40.g(qs.class, jsVar);
        p40.f(true);
        return p40.e();
    }

    public abstract List<us> c();
}
