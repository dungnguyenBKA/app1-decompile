package androidx.work;

import android.annotation.SuppressLint;

public interface k {
    @SuppressLint({"SyntheticAccessor"})
    public static final b.c a = new b.c(null);
    @SuppressLint({"SyntheticAccessor"})
    public static final b.C0025b b = new b.C0025b(null);

    public static abstract class b {

        public static final class a extends b {
            private final Throwable a;

            public a(Throwable th) {
                this.a = th;
            }

            public Throwable a() {
                return this.a;
            }

            public String toString() {
                return String.format("FAILURE (%s)", this.a.getMessage());
            }
        }

        /* renamed from: androidx.work.k$b$b  reason: collision with other inner class name */
        public static final class C0025b extends b {
            C0025b(a aVar) {
            }

            public String toString() {
                return "IN_PROGRESS";
            }
        }

        public static final class c extends b {
            private c() {
            }

            public String toString() {
                return "SUCCESS";
            }

            c(a aVar) {
            }
        }

        b() {
        }
    }
}
