package defpackage;

import com.bumptech.glide.f;
import com.bumptech.glide.load.i;
import defpackage.uc;
import defpackage.zf;

/* renamed from: hg  reason: default package */
public class hg<Model> implements zf<Model, Model> {
    private static final hg<?> a = new hg<>();

    /* renamed from: hg$a */
    public static class a<Model> implements ag<Model, Model> {
        private static final a<?> a = new a<>();

        public static <T> a<T> b() {
            return (a<T>) a;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<Model, Model> c(dg dgVar) {
            return hg.c();
        }
    }

    /* renamed from: hg$b */
    private static class b<Model> implements uc<Model> {
        private final Model b;

        b(Model model) {
            this.b = model;
        }

        @Override // defpackage.uc
        public Class<Model> a() {
            return (Class<Model>) this.b.getClass();
        }

        @Override // defpackage.uc
        public void b() {
        }

        @Override // defpackage.uc
        public void cancel() {
        }

        @Override // defpackage.uc
        public com.bumptech.glide.load.a d() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // defpackage.uc
        public void e(f fVar, uc.a<? super Model> aVar) {
            aVar.f(this.b);
        }
    }

    public static <T> hg<T> c() {
        return (hg<T>) a;
    }

    @Override // defpackage.zf
    public boolean a(Model model) {
        return true;
    }

    @Override // defpackage.zf
    public zf.a<Model> b(Model model, int i, int i2, i iVar) {
        return new zf.a<>(new xk(model), new b(model));
    }
}
