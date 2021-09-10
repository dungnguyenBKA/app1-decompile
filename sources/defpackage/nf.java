package defpackage;

import com.bumptech.glide.f;
import com.bumptech.glide.load.i;
import defpackage.uc;
import defpackage.zf;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* renamed from: nf  reason: default package */
public class nf<Data> implements zf<byte[], Data> {
    private final b<Data> a;

    /* renamed from: nf$a */
    public static class a implements ag<byte[], ByteBuffer> {

        /* renamed from: nf$a$a  reason: collision with other inner class name */
        class C0116a implements b<ByteBuffer> {
            C0116a(a aVar) {
            }

            @Override // defpackage.nf.b
            public Class<ByteBuffer> a() {
                return ByteBuffer.class;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // defpackage.nf.b
            public ByteBuffer b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<byte[], ByteBuffer> c(dg dgVar) {
            return new nf(new C0116a(this));
        }
    }

    /* renamed from: nf$b */
    public interface b<Data> {
        Class<Data> a();

        Data b(byte[] bArr);
    }

    /* renamed from: nf$c */
    private static class c<Data> implements uc<Data> {
        private final byte[] b;
        private final b<Data> c;

        c(byte[] bArr, b<Data> bVar) {
            this.b = bArr;
            this.c = bVar;
        }

        @Override // defpackage.uc
        public Class<Data> a() {
            return this.c.a();
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
        public void e(f fVar, uc.a<? super Data> aVar) {
            aVar.f(this.c.b(this.b));
        }
    }

    /* renamed from: nf$d */
    public static class d implements ag<byte[], InputStream> {

        /* renamed from: nf$d$a */
        class a implements b<InputStream> {
            a(d dVar) {
            }

            @Override // defpackage.nf.b
            public Class<InputStream> a() {
                return InputStream.class;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // defpackage.nf.b
            public InputStream b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<byte[], InputStream> c(dg dgVar) {
            return new nf(new a(this));
        }
    }

    public nf(b<Data> bVar) {
        this.a = bVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public /* bridge */ /* synthetic */ boolean a(byte[] bArr) {
        return true;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a b(byte[] bArr, int i, int i2, i iVar) {
        byte[] bArr2 = bArr;
        return new zf.a(new xk(bArr2), new c(bArr2, this.a));
    }
}
