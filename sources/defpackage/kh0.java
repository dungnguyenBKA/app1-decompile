package defpackage;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.annotation.Nullable;

/* renamed from: kh0  reason: default package */
public abstract class kh0 {

    /* renamed from: kh0$a */
    class a extends kh0 {
        final /* synthetic */ fh0 a;
        final /* synthetic */ ak0 b;

        a(fh0 fh0, ak0 ak0) {
            this.a = fh0;
            this.b = ak0;
        }

        @Override // defpackage.kh0
        public long contentLength() {
            return (long) this.b.m();
        }

        @Override // defpackage.kh0
        @Nullable
        public fh0 contentType() {
            return this.a;
        }

        @Override // defpackage.kh0
        public void writeTo(yj0 yj0) {
            yj0.U(this.b);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: kh0$b */
    public class b extends kh0 {
        final /* synthetic */ fh0 a;
        final /* synthetic */ int b;
        final /* synthetic */ byte[] c;
        final /* synthetic */ int d;

        b(fh0 fh0, int i, byte[] bArr, int i2) {
            this.a = fh0;
            this.b = i;
            this.c = bArr;
            this.d = i2;
        }

        @Override // defpackage.kh0
        public long contentLength() {
            return (long) this.b;
        }

        @Override // defpackage.kh0
        @Nullable
        public fh0 contentType() {
            return this.a;
        }

        @Override // defpackage.kh0
        public void writeTo(yj0 yj0) {
            yj0.write(this.c, this.d, this.b);
        }
    }

    /* renamed from: kh0$c */
    class c extends kh0 {
        final /* synthetic */ fh0 a;
        final /* synthetic */ File b;

        c(fh0 fh0, File file) {
            this.a = fh0;
            this.b = file;
        }

        @Override // defpackage.kh0
        public long contentLength() {
            return this.b.length();
        }

        @Override // defpackage.kh0
        @Nullable
        public fh0 contentType() {
            return this.a;
        }

        @Override // defpackage.kh0
        public void writeTo(yj0 yj0) {
            Closeable closeable = null;
            try {
                File file = this.b;
                int i = ik0.b;
                if (file != null) {
                    closeable = ik0.h(new FileInputStream(file));
                    yj0.I(closeable);
                    return;
                }
                throw new IllegalArgumentException("file == null");
            } finally {
                rh0.g(closeable);
            }
        }
    }

    public static kh0 create(@Nullable fh0 fh0, String str) {
        Charset charset = rh0.i;
        if (fh0 != null) {
            Charset a2 = fh0.a();
            if (a2 == null) {
                fh0 = fh0.d(fh0 + "; charset=utf-8");
            } else {
                charset = a2;
            }
        }
        return create(fh0, str.getBytes(charset));
    }

    public abstract long contentLength();

    @Nullable
    public abstract fh0 contentType();

    public abstract void writeTo(yj0 yj0);

    public static kh0 create(@Nullable fh0 fh0, ak0 ak0) {
        return new a(fh0, ak0);
    }

    public static kh0 create(@Nullable fh0 fh0, byte[] bArr) {
        return create(fh0, bArr, 0, bArr.length);
    }

    public static kh0 create(@Nullable fh0 fh0, byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "content == null");
        rh0.f((long) bArr.length, (long) i, (long) i2);
        return new b(fh0, i2, bArr, i);
    }

    public static kh0 create(@Nullable fh0 fh0, File file) {
        Objects.requireNonNull(file, "file == null");
        return new c(fh0, file);
    }
}
