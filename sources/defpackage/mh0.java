package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.annotation.Nullable;

/* renamed from: mh0  reason: default package */
public abstract class mh0 implements Closeable {
    @Nullable
    private Reader reader;

    /* access modifiers changed from: package-private */
    /* renamed from: mh0$a */
    public class a extends mh0 {
        final /* synthetic */ fh0 b;
        final /* synthetic */ long c;
        final /* synthetic */ zj0 d;

        a(fh0 fh0, long j, zj0 zj0) {
            this.b = fh0;
            this.c = j;
            this.d = zj0;
        }

        @Override // defpackage.mh0
        public long contentLength() {
            return this.c;
        }

        @Override // defpackage.mh0
        @Nullable
        public fh0 contentType() {
            return this.b;
        }

        @Override // defpackage.mh0
        public zj0 source() {
            return this.d;
        }
    }

    /* renamed from: mh0$b */
    static final class b extends Reader {
        private final zj0 b;
        private final Charset c;
        private boolean d;
        @Nullable
        private Reader e;

        b(zj0 zj0, Charset charset) {
            this.b = zj0;
            this.c = charset;
        }

        @Override // java.io.Closeable, java.io.Reader, java.lang.AutoCloseable
        public void close() {
            this.d = true;
            Reader reader = this.e;
            if (reader != null) {
                reader.close();
            } else {
                this.b.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) {
            if (!this.d) {
                Reader reader = this.e;
                if (reader == null) {
                    InputStreamReader inputStreamReader = new InputStreamReader(this.b.g0(), rh0.c(this.b, this.c));
                    this.e = inputStreamReader;
                    reader = inputStreamReader;
                }
                return reader.read(cArr, i, i2);
            }
            throw new IOException("Stream closed");
        }
    }

    private Charset charset() {
        fh0 contentType = contentType();
        return contentType != null ? contentType.b(rh0.i) : rh0.i;
    }

    public static mh0 create(@Nullable fh0 fh0, String str) {
        Charset charset = rh0.i;
        if (fh0 != null) {
            Charset a2 = fh0.a();
            if (a2 == null) {
                fh0 = fh0.d(fh0 + "; charset=utf-8");
            } else {
                charset = a2;
            }
        }
        xj0 y0 = new xj0().y0(str, 0, str.length(), charset);
        return create(fh0, y0.size(), y0);
    }

    public final InputStream byteStream() {
        return source().g0();
    }

    /* JADX INFO: finally extract failed */
    public final byte[] bytes() {
        long contentLength = contentLength();
        if (contentLength <= 2147483647L) {
            zj0 source = source();
            try {
                byte[] q = source.q();
                rh0.g(source);
                if (contentLength == -1 || contentLength == ((long) q.length)) {
                    return q;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Content-Length (");
                sb.append(contentLength);
                sb.append(") and stream length (");
                throw new IOException(ic.k(sb, q.length, ") disagree"));
            } catch (Throwable th) {
                rh0.g(source);
                throw th;
            }
        } else {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
    }

    public final Reader charStream() {
        Reader reader2 = this.reader;
        if (reader2 != null) {
            return reader2;
        }
        b bVar = new b(source(), charset());
        this.reader = bVar;
        return bVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        rh0.g(source());
    }

    public abstract long contentLength();

    @Nullable
    public abstract fh0 contentType();

    public abstract zj0 source();

    public final String string() {
        zj0 source = source();
        try {
            return source.F(rh0.c(source, charset()));
        } finally {
            rh0.g(source);
        }
    }

    public static mh0 create(@Nullable fh0 fh0, byte[] bArr) {
        xj0 xj0 = new xj0();
        xj0.s0(bArr);
        return create(fh0, (long) bArr.length, xj0);
    }

    public static mh0 create(@Nullable fh0 fh0, ak0 ak0) {
        xj0 xj0 = new xj0();
        xj0.r0(ak0);
        return create(fh0, (long) ak0.m(), xj0);
    }

    public static mh0 create(@Nullable fh0 fh0, long j, zj0 zj0) {
        Objects.requireNonNull(zj0, "source == null");
        return new a(fh0, j, zj0);
    }
}
