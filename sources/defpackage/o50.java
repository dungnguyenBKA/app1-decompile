package defpackage;

import com.google.auto.value.AutoValue;
import defpackage.k50;

@AutoValue
/* renamed from: o50  reason: default package */
public abstract class o50 {

    @AutoValue.Builder
    /* renamed from: o50$a */
    public static abstract class a {
        public abstract o50 a();

        public abstract a b(b bVar);

        public abstract a c(String str);

        public abstract a d(long j);
    }

    /* renamed from: o50$b */
    public enum b {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    public static a a() {
        k50.b bVar = new k50.b();
        bVar.d(0);
        return bVar;
    }

    public abstract b b();

    public abstract String c();

    public abstract long d();
}
