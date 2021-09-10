package defpackage;

import com.google.auto.value.AutoValue;
import defpackage.os;
import java.util.List;

@AutoValue
/* renamed from: us  reason: default package */
public abstract class us {

    @AutoValue.Builder
    /* renamed from: us$a */
    public static abstract class a {
        public abstract us a();

        public abstract a b(ss ssVar);

        public abstract a c(List<ts> list);

        /* access modifiers changed from: package-private */
        public abstract a d(Integer num);

        /* access modifiers changed from: package-private */
        public abstract a e(String str);

        public abstract a f(xs xsVar);

        public abstract a g(long j);

        public abstract a h(long j);

        public a i(int i) {
            d(Integer.valueOf(i));
            return this;
        }

        public a j(String str) {
            e(str);
            return this;
        }
    }

    public static a a() {
        return new os.b();
    }

    public abstract ss b();

    public abstract List<ts> c();

    public abstract Integer d();

    public abstract String e();

    public abstract xs f();

    public abstract long g();

    public abstract long h();
}
