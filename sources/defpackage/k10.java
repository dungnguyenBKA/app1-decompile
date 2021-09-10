package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

/* access modifiers changed from: package-private */
/* renamed from: k10  reason: default package */
public class k10 implements Closeable {
    private static final Logger h = Logger.getLogger(k10.class.getName());
    private final RandomAccessFile b;
    int c;
    private int d;
    private b e;
    private b f;
    private final byte[] g = new byte[16];

    /* access modifiers changed from: package-private */
    /* renamed from: k10$a */
    public class a implements d {
        boolean a = true;
        final /* synthetic */ StringBuilder b;

        a(k10 k10, StringBuilder sb) {
            this.b = sb;
        }

        @Override // defpackage.k10.d
        public void a(InputStream inputStream, int i) {
            if (this.a) {
                this.a = false;
            } else {
                this.b.append(", ");
            }
            this.b.append(i);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: k10$b */
    public static class b {
        static final b c = new b(0, 0);
        final int a;
        final int b;

        b(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(b.class.getSimpleName());
            sb.append("[position = ");
            sb.append(this.a);
            sb.append(", length = ");
            return ic.k(sb, this.b, "]");
        }
    }

    /* renamed from: k10$d */
    public interface d {
        void a(InputStream inputStream, int i);
    }

    /* JADX INFO: finally extract failed */
    public k10(File file) {
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rwd");
            try {
                randomAccessFile.setLength(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
                randomAccessFile.seek(0);
                byte[] bArr = new byte[16];
                int[] iArr = {4096, 0, 0, 0};
                int i = 0;
                for (int i2 = 0; i2 < 4; i2++) {
                    s0(bArr, i, iArr[i2]);
                    i += 4;
                }
                randomAccessFile.write(bArr);
                randomAccessFile.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                randomAccessFile.close();
                throw th;
            }
        }
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rwd");
        this.b = randomAccessFile2;
        randomAccessFile2.seek(0);
        randomAccessFile2.readFully(this.g);
        int l0 = l0(this.g, 0);
        this.c = l0;
        if (((long) l0) <= randomAccessFile2.length()) {
            this.d = l0(this.g, 4);
            int l02 = l0(this.g, 8);
            int l03 = l0(this.g, 12);
            this.e = k0(l02);
            this.f = k0(l03);
            return;
        }
        StringBuilder q = ic.q("File is truncated. Expected length: ");
        q.append(this.c);
        q.append(", Actual length: ");
        q.append(randomAccessFile2.length());
        throw new IOException(q.toString());
    }

    private void b0(int i) {
        int i2 = i + 4;
        int p0 = this.c - p0();
        if (p0 < i2) {
            int i3 = this.c;
            do {
                p0 += i3;
                i3 <<= 1;
            } while (p0 < i2);
            this.b.setLength((long) i3);
            this.b.getChannel().force(true);
            b bVar = this.f;
            int q0 = q0(bVar.a + 4 + bVar.b);
            if (q0 < this.e.a) {
                FileChannel channel = this.b.getChannel();
                channel.position((long) this.c);
                long j = (long) (q0 - 4);
                if (channel.transferTo(16, j, channel) != j) {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            int i4 = this.f.a;
            int i5 = this.e.a;
            if (i4 < i5) {
                int i6 = (this.c + i4) - 16;
                r0(i3, this.d, i5, i6);
                this.f = new b(i6, this.f.b);
            } else {
                r0(i3, this.d, i5, i4);
            }
            this.c = i3;
        }
    }

    static int j(k10 k10, int i) {
        int i2 = k10.c;
        return i < i2 ? i : (i + 16) - i2;
    }

    private b k0(int i) {
        if (i == 0) {
            return b.c;
        }
        this.b.seek((long) i);
        return new b(i, this.b.readInt());
    }

    private static int l0(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void n0(int i, byte[] bArr, int i2, int i3) {
        int i4 = this.c;
        if (i >= i4) {
            i = (i + 16) - i4;
        }
        if (i + i3 <= i4) {
            this.b.seek((long) i);
            this.b.readFully(bArr, i2, i3);
            return;
        }
        int i5 = i4 - i;
        this.b.seek((long) i);
        this.b.readFully(bArr, i2, i5);
        this.b.seek(16);
        this.b.readFully(bArr, i2 + i5, i3 - i5);
    }

    private void o0(int i, byte[] bArr, int i2, int i3) {
        int i4 = this.c;
        if (i >= i4) {
            i = (i + 16) - i4;
        }
        if (i + i3 <= i4) {
            this.b.seek((long) i);
            this.b.write(bArr, i2, i3);
            return;
        }
        int i5 = i4 - i;
        this.b.seek((long) i);
        this.b.write(bArr, i2, i5);
        this.b.seek(16);
        this.b.write(bArr, i2 + i5, i3 - i5);
    }

    private int q0(int i) {
        int i2 = this.c;
        return i < i2 ? i : (i + 16) - i2;
    }

    private void r0(int i, int i2, int i3, int i4) {
        byte[] bArr = this.g;
        int[] iArr = {i, i2, i3, i4};
        int i5 = 0;
        for (int i6 = 0; i6 < 4; i6++) {
            s0(bArr, i5, iArr[i6]);
            i5 += 4;
        }
        this.b.seek(0);
        this.b.write(this.g);
    }

    private static void s0(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    public void S(byte[] bArr) {
        int i;
        int length = bArr.length;
        synchronized (this) {
            if ((0 | length) >= 0) {
                if (length <= bArr.length - 0) {
                    b0(length);
                    boolean j0 = j0();
                    if (j0) {
                        i = 16;
                    } else {
                        b bVar = this.f;
                        i = q0(bVar.a + 4 + bVar.b);
                    }
                    b bVar2 = new b(i, length);
                    s0(this.g, 0, length);
                    o0(bVar2.a, this.g, 0, 4);
                    o0(bVar2.a + 4, bArr, 0, length);
                    r0(this.c, this.d + 1, j0 ? bVar2.a : this.e.a, bVar2.a);
                    this.f = bVar2;
                    this.d++;
                    if (j0) {
                        this.e = bVar2;
                    }
                }
            }
            throw new IndexOutOfBoundsException();
        }
    }

    public synchronized void V() {
        r0(4096, 0, 0, 0);
        this.d = 0;
        b bVar = b.c;
        this.e = bVar;
        this.f = bVar;
        if (this.c > 4096) {
            this.b.setLength((long) 4096);
            this.b.getChannel().force(true);
        }
        this.c = 4096;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.b.close();
    }

    public synchronized void i0(d dVar) {
        int i = this.e.a;
        for (int i2 = 0; i2 < this.d; i2++) {
            b k0 = k0(i);
            dVar.a(new c(k0, null), k0.b);
            i = q0(k0.a + 4 + k0.b);
        }
    }

    public synchronized boolean j0() {
        return this.d == 0;
    }

    public synchronized void m0() {
        if (j0()) {
            throw new NoSuchElementException();
        } else if (this.d == 1) {
            V();
        } else {
            b bVar = this.e;
            int q0 = q0(bVar.a + 4 + bVar.b);
            n0(q0, this.g, 0, 4);
            int l0 = l0(this.g, 0);
            r0(this.c, this.d - 1, q0, this.f.a);
            this.d--;
            this.e = new b(q0, l0);
        }
    }

    public int p0() {
        if (this.d == 0) {
            return 16;
        }
        b bVar = this.f;
        int i = bVar.a;
        int i2 = this.e.a;
        if (i >= i2) {
            return (i - i2) + 4 + bVar.b + 16;
        }
        return (((i + 4) + bVar.b) + this.c) - i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(k10.class.getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.c);
        sb.append(", size=");
        sb.append(this.d);
        sb.append(", first=");
        sb.append(this.e);
        sb.append(", last=");
        sb.append(this.f);
        sb.append(", element lengths=[");
        try {
            i0(new a(this, sb));
        } catch (IOException e2) {
            h.log(Level.WARNING, "read error", (Throwable) e2);
        }
        sb.append("]]");
        return sb.toString();
    }

    /* access modifiers changed from: private */
    /* renamed from: k10$c */
    public final class c extends InputStream {
        private int b;
        private int c;

        c(b bVar, a aVar) {
            int i = bVar.a + 4;
            int i2 = k10.this.c;
            this.b = i >= i2 ? (i + 16) - i2 : i;
            this.c = bVar.b;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            Objects.requireNonNull(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.c;
            if (i3 <= 0) {
                return -1;
            }
            if (i2 > i3) {
                i2 = i3;
            }
            k10.this.n0(this.b, bArr, i, i2);
            this.b = k10.j(k10.this, this.b + i2);
            this.c -= i2;
            return i2;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.c == 0) {
                return -1;
            }
            k10.this.b.seek((long) this.b);
            int read = k10.this.b.read();
            this.b = k10.j(k10.this, this.b + 1);
            this.c--;
            return read;
        }
    }
}
