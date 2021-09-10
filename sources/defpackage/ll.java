package defpackage;

/* renamed from: ll  reason: default package */
public abstract class ll {

    /* access modifiers changed from: private */
    /* renamed from: ll$b */
    public static class b extends ll {
        private volatile boolean a;

        b() {
            super(null);
        }

        @Override // defpackage.ll
        public void b(boolean z) {
            this.a = z;
        }

        @Override // defpackage.ll
        public void c() {
            if (this.a) {
                throw new IllegalStateException("Already released");
            }
        }
    }

    ll(a aVar) {
    }

    public static ll a() {
        return new b();
    }

    /* access modifiers changed from: package-private */
    public abstract void b(boolean z);

    public abstract void c();
}
