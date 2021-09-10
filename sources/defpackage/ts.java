package defpackage;

import com.google.auto.value.AutoValue;
import defpackage.ns;

@AutoValue
/* renamed from: ts  reason: default package */
public abstract class ts {

    @AutoValue.Builder
    /* renamed from: ts$a */
    public static abstract class a {
        public abstract ts a();

        public abstract a b(Integer num);

        public abstract a c(long j);

        public abstract a d(long j);

        public abstract a e(ws wsVar);

        public abstract a f(long j);
    }

    public static a h(String str) {
        ns.b bVar = new ns.b();
        bVar.h(str);
        return bVar;
    }

    public static a i(byte[] bArr) {
        ns.b bVar = new ns.b();
        bVar.g(bArr);
        return bVar;
    }

    public abstract Integer a();

    public abstract long b();

    public abstract long c();

    public abstract ws d();

    public abstract byte[] e();

    public abstract String f();

    public abstract long g();
}
