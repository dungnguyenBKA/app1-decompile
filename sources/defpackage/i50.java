package defpackage;

import com.google.auto.value.AutoValue;
import defpackage.f50;
import defpackage.h50;

@AutoValue
/* renamed from: i50  reason: default package */
public abstract class i50 {
    public static final /* synthetic */ int a = 0;

    @AutoValue.Builder
    /* renamed from: i50$a */
    public static abstract class a {
        public abstract i50 a();

        public abstract a b(String str);

        public abstract a c(long j);

        public abstract a d(String str);

        public abstract a e(String str);

        public abstract a f(String str);

        public abstract a g(h50.a aVar);

        public abstract a h(long j);
    }

    static {
        f50.b bVar = new f50.b();
        bVar.h(0);
        bVar.g(h50.a.ATTEMPT_MIGRATION);
        bVar.c(0);
        bVar.a();
    }

    public abstract String a();

    public abstract long b();

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract h50.a f();

    public abstract long g();

    public boolean h() {
        return f() == h50.a.REGISTER_ERROR;
    }

    public boolean i() {
        return f() == h50.a.NOT_GENERATED || f() == h50.a.ATTEMPT_MIGRATION;
    }

    public boolean j() {
        return f() == h50.a.REGISTERED;
    }

    public abstract a k();
}
