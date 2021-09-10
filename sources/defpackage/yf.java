package defpackage;

import java.util.ArrayDeque;
import java.util.Queue;

/* renamed from: yf  reason: default package */
public class yf<A, B> {
    private final el<b<A>, B> a;

    /* renamed from: yf$a */
    class a extends el<b<A>, B> {
        a(yf yfVar, long j) {
            super(j);
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.el
        public void e(Object obj, Object obj2) {
            ((b) obj).b();
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: yf$b */
    public static final class b<A> {
        private static final Queue<b<?>> d = new ArrayDeque(0);
        private int a;
        private int b;
        private A c;

        static {
            int i = hl.c;
        }

        private b() {
        }

        static <A> b<A> a(A a2, int i, int i2) {
            b<A> bVar;
            Queue<b<?>> queue = d;
            synchronized (queue) {
                bVar = (b<A>) queue.poll();
            }
            if (bVar == null) {
                bVar = new b<>();
            }
            ((b) bVar).c = a2;
            ((b) bVar).b = i;
            ((b) bVar).a = i2;
            return bVar;
        }

        public void b() {
            Queue<b<?>> queue = d;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.b == bVar.b && this.a == bVar.a && this.c.equals(bVar.c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.c.hashCode() + (((this.a * 31) + this.b) * 31);
        }
    }

    public yf(long j) {
        this.a = new a(this, j);
    }

    public B a(A a2, int i, int i2) {
        b<A> a3 = b.a(a2, i, i2);
        B b2 = this.a.b(a3);
        a3.b();
        return b2;
    }

    public void b(A a2, int i, int i2, B b2) {
        this.a.f(b.a(a2, i, i2), b2);
    }
}
