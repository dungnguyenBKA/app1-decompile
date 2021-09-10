package defpackage;

import defpackage.sk;

/* renamed from: rk  reason: default package */
public class rk<R> implements sk<R> {
    static final rk<?> a = new rk<>();
    private static final tk<?> b = new a();

    /* renamed from: rk$a */
    public static class a<R> implements tk<R> {
        @Override // defpackage.tk
        public sk<R> a(com.bumptech.glide.load.a aVar, boolean z) {
            return rk.a;
        }
    }

    public static <R> tk<R> b() {
        return (tk<R>) b;
    }

    @Override // defpackage.sk
    public boolean a(Object obj, sk.a aVar) {
        return false;
    }
}
