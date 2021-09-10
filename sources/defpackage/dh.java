package defpackage;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Objects;
import org.apache.http.protocol.HTTP;

/* renamed from: dh  reason: default package */
public final class dh implements ImageHeaderParser {
    static final byte[] a = "Exif\u0000\u0000".getBytes(Charset.forName(HTTP.UTF_8));
    private static final int[] b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: dh$a */
    private static final class a implements c {
        private final ByteBuffer a;

        a(ByteBuffer byteBuffer) {
            this.a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // defpackage.dh.c
        public int a() {
            return (c() << 8) | c();
        }

        @Override // defpackage.dh.c
        public int b(byte[] bArr, int i) {
            int min = Math.min(i, this.a.remaining());
            if (min == 0) {
                return -1;
            }
            this.a.get(bArr, 0, min);
            return min;
        }

        @Override // defpackage.dh.c
        public short c() {
            if (this.a.remaining() >= 1) {
                return (short) (this.a.get() & 255);
            }
            throw new c.a();
        }

        @Override // defpackage.dh.c
        public long skip(long j) {
            int min = (int) Math.min((long) this.a.remaining(), j);
            ByteBuffer byteBuffer = this.a;
            byteBuffer.position(byteBuffer.position() + min);
            return (long) min;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: dh$b */
    public static final class b {
        private final ByteBuffer a;

        b(byte[] bArr, int i) {
            this.a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* access modifiers changed from: package-private */
        public short a(int i) {
            if (this.a.remaining() - i >= 2) {
                return this.a.getShort(i);
            }
            return -1;
        }

        /* access modifiers changed from: package-private */
        public int b(int i) {
            if (this.a.remaining() - i >= 4) {
                return this.a.getInt(i);
            }
            return -1;
        }

        /* access modifiers changed from: package-private */
        public int c() {
            return this.a.remaining();
        }

        /* access modifiers changed from: package-private */
        public void d(ByteOrder byteOrder) {
            this.a.order(byteOrder);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: dh$c */
    public interface c {

        /* renamed from: dh$c$a */
        public static final class a extends IOException {
            a() {
                super("Unexpectedly reached end of a file");
            }
        }

        int a();

        int b(byte[] bArr, int i);

        short c();

        long skip(long j);
    }

    /* renamed from: dh$d */
    private static final class d implements c {
        private final InputStream a;

        d(InputStream inputStream) {
            this.a = inputStream;
        }

        @Override // defpackage.dh.c
        public int a() {
            return (c() << 8) | c();
        }

        @Override // defpackage.dh.c
        public int b(byte[] bArr, int i) {
            int i2 = 0;
            int i3 = 0;
            while (i2 < i && (i3 = this.a.read(bArr, i2, i - i2)) != -1) {
                i2 += i3;
            }
            if (i2 != 0 || i3 != -1) {
                return i2;
            }
            throw new c.a();
        }

        @Override // defpackage.dh.c
        public short c() {
            int read = this.a.read();
            if (read != -1) {
                return (short) read;
            }
            throw new c.a();
        }

        @Override // defpackage.dh.c
        public long skip(long j) {
            if (j < 0) {
                return 0;
            }
            long j2 = j;
            while (j2 > 0) {
                long skip = this.a.skip(j2);
                if (skip <= 0) {
                    if (this.a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j2 -= skip;
            }
            return j - j2;
        }
    }

    private ImageHeaderParser.ImageType d(c cVar) {
        try {
            int a2 = cVar.a();
            if (a2 == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int c2 = (a2 << 8) | cVar.c();
            if (c2 == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int c3 = (c2 << 8) | cVar.c();
            if (c3 == -1991225785) {
                cVar.skip(21);
                try {
                    return cVar.c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (c.a unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            } else if (c3 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            } else {
                cVar.skip(4);
                if (((cVar.a() << 16) | cVar.a()) != 1464156752) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int a3 = (cVar.a() << 16) | cVar.a();
                if ((a3 & -256) != 1448097792) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int i = a3 & 255;
                if (i == 88) {
                    cVar.skip(4);
                    return (cVar.c() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                } else if (i != 76) {
                    return ImageHeaderParser.ImageType.WEBP;
                } else {
                    cVar.skip(4);
                    return (cVar.c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                }
            }
        } catch (c.a unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    private int e(c cVar, byte[] bArr, int i) {
        ByteOrder byteOrder;
        if (cVar.b(bArr, i) != i) {
            Log.isLoggable("DfltImageHeaderParser", 3);
            return -1;
        }
        boolean z = bArr != null && i > a.length;
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = a;
                if (i2 >= bArr2.length) {
                    break;
                } else if (bArr[i2] != bArr2[i2]) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
        }
        if (z) {
            b bVar = new b(bArr, i);
            short a2 = bVar.a(6);
            if (a2 == 18761) {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            } else if (a2 != 19789) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                byteOrder = ByteOrder.BIG_ENDIAN;
            } else {
                byteOrder = ByteOrder.BIG_ENDIAN;
            }
            bVar.d(byteOrder);
            int b2 = bVar.b(10) + 6;
            short a3 = bVar.a(b2);
            for (int i3 = 0; i3 < a3; i3++) {
                int i4 = (i3 * 12) + b2 + 2;
                if (bVar.a(i4) == 274) {
                    short a4 = bVar.a(i4 + 2);
                    if (a4 < 1 || a4 > 12) {
                        Log.isLoggable("DfltImageHeaderParser", 3);
                    } else {
                        int b3 = bVar.b(i4 + 4);
                        if (b3 < 0) {
                            Log.isLoggable("DfltImageHeaderParser", 3);
                        } else {
                            Log.isLoggable("DfltImageHeaderParser", 3);
                            int i5 = b3 + b[a4];
                            if (i5 > 4) {
                                Log.isLoggable("DfltImageHeaderParser", 3);
                            } else {
                                int i6 = i4 + 8;
                                if (i6 < 0 || i6 > bVar.c()) {
                                    Log.isLoggable("DfltImageHeaderParser", 3);
                                } else if (i5 >= 0 && i5 + i6 <= bVar.c()) {
                                    return bVar.a(i6);
                                } else {
                                    Log.isLoggable("DfltImageHeaderParser", 3);
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }
        Log.isLoggable("DfltImageHeaderParser", 3);
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public ImageHeaderParser.ImageType a(ByteBuffer byteBuffer) {
        Objects.requireNonNull(byteBuffer, "Argument must not be null");
        return d(new a(byteBuffer));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public ImageHeaderParser.ImageType b(InputStream inputStream) {
        Objects.requireNonNull(inputStream, "Argument must not be null");
        return d(new d(inputStream));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int c(InputStream inputStream, oe oeVar) {
        int i;
        Objects.requireNonNull(inputStream, "Argument must not be null");
        d dVar = new d(inputStream);
        Objects.requireNonNull(oeVar, "Argument must not be null");
        try {
            int a2 = dVar.a();
            if (!((a2 & 65496) == 65496 || a2 == 19789 || a2 == 18761)) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
            while (true) {
                if (dVar.c() == 255) {
                    short c2 = dVar.c();
                    if (c2 != 218) {
                        if (c2 != 217) {
                            i = dVar.a() - 2;
                            if (c2 == 225) {
                                break;
                            }
                            long j = (long) i;
                            if (dVar.skip(j) != j) {
                                Log.isLoggable("DfltImageHeaderParser", 3);
                                break;
                            }
                        } else {
                            Log.isLoggable("DfltImageHeaderParser", 3);
                            break;
                        }
                    } else {
                        break;
                    }
                } else {
                    Log.isLoggable("DfltImageHeaderParser", 3);
                    break;
                }
            }
            i = -1;
            if (i == -1) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                return -1;
            }
            byte[] bArr = (byte[]) oeVar.e(i, byte[].class);
            try {
                return e(dVar, bArr, i);
            } finally {
                oeVar.d(bArr);
            }
        } catch (c.a unused) {
            return -1;
        }
    }
}
