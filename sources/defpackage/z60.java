package defpackage;

/* renamed from: z60  reason: default package */
public abstract class z60<T> {

    /* access modifiers changed from: package-private */
    /* renamed from: z60$a */
    public class a extends z60<T> {
        a() {
        }

        @Override // defpackage.z60
        public T b(a90 a90) {
            if (a90.x0() != b90.NULL) {
                return (T) z60.this.b(a90);
            }
            a90.t0();
            return null;
        }

        @Override // defpackage.z60
        public void c(c90 c90, T t) {
            if (t == null) {
                c90.n0();
            } else {
                z60.this.c(c90, t);
            }
        }
    }

    public final z60<T> a() {
        return new a();
    }

    public abstract T b(a90 a90);

    public abstract void c(c90 c90, T t);
}
