package defpackage;

import defpackage.vc;
import java.io.InputStream;

/* renamed from: bd  reason: default package */
public final class bd implements vc<InputStream> {
    private final ph a;

    /* renamed from: bd$a */
    public static final class a implements vc.a<InputStream> {
        private final oe a;

        public a(oe oeVar) {
            this.a = oeVar;
        }

        @Override // defpackage.vc.a
        public Class<InputStream> a() {
            return InputStream.class;
        }

        /* Return type fixed from 'vc' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // defpackage.vc.a
        public vc<InputStream> b(InputStream inputStream) {
            return new bd(inputStream, this.a);
        }
    }

    public bd(InputStream inputStream, oe oeVar) {
        ph phVar = new ph(inputStream, oeVar);
        this.a = phVar;
        phVar.mark(5242880);
    }

    @Override // defpackage.vc
    public void b() {
        this.a.L();
    }

    public void c() {
        this.a.o();
    }

    /* renamed from: d */
    public InputStream a() {
        this.a.reset();
        return this.a;
    }
}
