package defpackage;

import android.util.Log;
import com.bumptech.glide.f;
import com.bumptech.glide.load.i;
import defpackage.uc;
import defpackage.zf;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: pf  reason: default package */
public class pf implements zf<File, ByteBuffer> {

    /* renamed from: pf$a */
    private static final class a implements uc<ByteBuffer> {
        private final File b;

        a(File file) {
            this.b = file;
        }

        @Override // defpackage.uc
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
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
        public void e(f fVar, uc.a<? super ByteBuffer> aVar) {
            try {
                aVar.f(yk.a(this.b));
            } catch (IOException e) {
                Log.isLoggable("ByteBufferFileLoader", 3);
                aVar.c(e);
            }
        }
    }

    /* renamed from: pf$b */
    public static class b implements ag<File, ByteBuffer> {
        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<File, ByteBuffer> c(dg dgVar) {
            return new pf();
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public /* bridge */ /* synthetic */ boolean a(File file) {
        return true;
    }

    /* Return type fixed from 'zf$a' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a<ByteBuffer> b(File file, int i, int i2, i iVar) {
        File file2 = file;
        return new zf.a(new xk(file2), new a(file2));
    }
}
