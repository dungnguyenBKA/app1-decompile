package defpackage;

import com.google.auto.value.AutoValue;
import defpackage.cu;
import org.apache.http.HttpStatus;

/* access modifiers changed from: package-private */
@AutoValue
/* renamed from: fu  reason: default package */
public abstract class fu {
    static final fu a;

    @AutoValue.Builder
    /* renamed from: fu$a */
    static abstract class a {
        a() {
        }

        /* access modifiers changed from: package-private */
        public abstract fu a();

        /* access modifiers changed from: package-private */
        public abstract a b(int i);

        /* access modifiers changed from: package-private */
        public abstract a c(long j);

        /* access modifiers changed from: package-private */
        public abstract a d(int i);

        /* access modifiers changed from: package-private */
        public abstract a e(int i);
    }

    static {
        cu.b bVar = new cu.b();
        bVar.f(10485760);
        bVar.d(HttpStatus.SC_OK);
        bVar.b(10000);
        bVar.c(604800000);
        bVar.e(81920);
        a = bVar.a();
    }

    fu() {
    }

    /* access modifiers changed from: package-private */
    public abstract int a();

    /* access modifiers changed from: package-private */
    public abstract long b();

    /* access modifiers changed from: package-private */
    public abstract int c();

    /* access modifiers changed from: package-private */
    public abstract int d();

    /* access modifiers changed from: package-private */
    public abstract long e();
}
