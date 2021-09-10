package defpackage;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.f;
import com.bumptech.glide.load.i;
import defpackage.uc;
import defpackage.zf;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: rf  reason: default package */
public class rf<Data> implements zf<File, Data> {
    private final d<Data> a;

    /* renamed from: rf$a */
    public static class a<Data> implements ag<File, Data> {
        private final d<Data> a;

        public a(d<Data> dVar) {
            this.a = dVar;
        }

        @Override // defpackage.ag
        public final void a() {
        }

        @Override // defpackage.ag
        public final zf<File, Data> c(dg dgVar) {
            return new rf(this.a);
        }
    }

    /* renamed from: rf$b */
    public static class b extends a<ParcelFileDescriptor> {

        /* renamed from: rf$b$a */
        class a implements d<ParcelFileDescriptor> {
            a() {
            }

            @Override // defpackage.rf.d
            public Class<ParcelFileDescriptor> a() {
                return ParcelFileDescriptor.class;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // defpackage.rf.d
            public ParcelFileDescriptor b(File file) {
                return ParcelFileDescriptor.open(file, 268435456);
            }

            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
            @Override // defpackage.rf.d
            public void c(ParcelFileDescriptor parcelFileDescriptor) {
                parcelFileDescriptor.close();
            }
        }

        public b() {
            super(new a());
        }
    }

    /* renamed from: rf$c */
    private static final class c<Data> implements uc<Data> {
        private final File b;
        private final d<Data> c;
        private Data d;

        c(File file, d<Data> dVar) {
            this.b = file;
            this.c = dVar;
        }

        @Override // defpackage.uc
        public Class<Data> a() {
            return this.c.a();
        }

        @Override // defpackage.uc
        public void b() {
            Data data = this.d;
            if (data != null) {
                try {
                    this.c.c(data);
                } catch (IOException unused) {
                }
            }
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
            try {
                Data b2 = this.c.b(this.b);
                this.d = b2;
                aVar.f(b2);
            } catch (FileNotFoundException e) {
                Log.isLoggable("FileLoader", 3);
                aVar.c(e);
            }
        }
    }

    /* renamed from: rf$d */
    public interface d<Data> {
        Class<Data> a();

        Data b(File file);

        void c(Data data);
    }

    /* renamed from: rf$e */
    public static class e extends a<InputStream> {

        /* renamed from: rf$e$a */
        class a implements d<InputStream> {
            a() {
            }

            @Override // defpackage.rf.d
            public Class<InputStream> a() {
                return InputStream.class;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // defpackage.rf.d
            public InputStream b(File file) {
                return new FileInputStream(file);
            }

            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
            @Override // defpackage.rf.d
            public void c(InputStream inputStream) {
                inputStream.close();
            }
        }

        public e() {
            super(new a());
        }
    }

    public rf(d<Data> dVar) {
        this.a = dVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public /* bridge */ /* synthetic */ boolean a(File file) {
        return true;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a b(File file, int i, int i2, i iVar) {
        File file2 = file;
        return new zf.a(new xk(file2), new c(file2, this.a));
    }
}
