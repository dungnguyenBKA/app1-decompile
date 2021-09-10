package defpackage;

import com.google.auto.value.AutoValue;
import defpackage.ys;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@AutoValue
/* renamed from: et  reason: default package */
public abstract class et {

    @AutoValue.Builder
    /* renamed from: et$a */
    public static abstract class a {
        public final a a(String str, int i) {
            e().put(str, String.valueOf(i));
            return this;
        }

        public final a b(String str, long j) {
            e().put(str, String.valueOf(j));
            return this;
        }

        public final a c(String str, String str2) {
            e().put(str, str2);
            return this;
        }

        public abstract et d();

        /* access modifiers changed from: protected */
        public abstract Map<String, String> e();

        public abstract a f(Integer num);

        public abstract a g(dt dtVar);

        public abstract a h(long j);

        public abstract a i(String str);

        public abstract a j(long j);
    }

    public static a a() {
        ys.b bVar = new ys.b();
        bVar.k(new HashMap());
        return bVar;
    }

    public final String b(String str) {
        String str2 = c().get(str);
        return str2 == null ? "" : str2;
    }

    /* access modifiers changed from: protected */
    public abstract Map<String, String> c();

    public abstract Integer d();

    public abstract dt e();

    public abstract long f();

    public final int g(String str) {
        String str2 = c().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public final long h(String str) {
        String str2 = c().get(str);
        if (str2 == null) {
            return 0;
        }
        return Long.valueOf(str2).longValue();
    }

    public final Map<String, String> i() {
        return Collections.unmodifiableMap(c());
    }

    public abstract String j();

    public abstract long k();

    public a l() {
        ys.b bVar = new ys.b();
        bVar.i(j());
        bVar.f(d());
        bVar.g(e());
        bVar.h(f());
        bVar.j(k());
        bVar.k(new HashMap(c()));
        return bVar;
    }
}
