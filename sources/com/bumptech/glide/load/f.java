package com.bumptech.glide.load;

import com.bumptech.glide.load.ImageHeaderParser;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

public final class f {

    class a implements g {
        final /* synthetic */ InputStream a;

        a(InputStream inputStream) {
            this.a = inputStream;
        }

        @Override // com.bumptech.glide.load.f.g
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) {
            try {
                return imageHeaderParser.b(this.a);
            } finally {
                this.a.reset();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements g {
        final /* synthetic */ ByteBuffer a;

        b(ByteBuffer byteBuffer) {
            this.a = byteBuffer;
        }

        @Override // com.bumptech.glide.load.f.g
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) {
            return imageHeaderParser.a(this.a);
        }
    }

    class c implements g {
        final /* synthetic */ dd a;
        final /* synthetic */ oe b;

        c(dd ddVar, oe oeVar) {
            this.a = ddVar;
            this.b = oeVar;
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x002a A[SYNTHETIC, Splitter:B:14:0x002a] */
        @Override // com.bumptech.glide.load.f.g
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public com.bumptech.glide.load.ImageHeaderParser.ImageType a(com.bumptech.glide.load.ImageHeaderParser r5) {
            /*
                r4 = this;
                r0 = 0
                ph r1 = new ph     // Catch:{ all -> 0x0027 }
                java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ all -> 0x0027 }
                dd r3 = r4.a     // Catch:{ all -> 0x0027 }
                android.os.ParcelFileDescriptor r3 = r3.a()     // Catch:{ all -> 0x0027 }
                java.io.FileDescriptor r3 = r3.getFileDescriptor()     // Catch:{ all -> 0x0027 }
                r2.<init>(r3)     // Catch:{ all -> 0x0027 }
                oe r3 = r4.b     // Catch:{ all -> 0x0027 }
                r1.<init>(r2, r3)     // Catch:{ all -> 0x0027 }
                com.bumptech.glide.load.ImageHeaderParser$ImageType r5 = r5.b(r1)     // Catch:{ all -> 0x0024 }
                r1.close()     // Catch:{ IOException -> 0x001e }
            L_0x001e:
                dd r0 = r4.a
                r0.a()
                return r5
            L_0x0024:
                r5 = move-exception
                r0 = r1
                goto L_0x0028
            L_0x0027:
                r5 = move-exception
            L_0x0028:
                if (r0 == 0) goto L_0x002d
                r0.close()     // Catch:{ IOException -> 0x002d }
            L_0x002d:
                dd r0 = r4.a
                r0.a()
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.f.c.a(com.bumptech.glide.load.ImageHeaderParser):com.bumptech.glide.load.ImageHeaderParser$ImageType");
        }
    }

    class d implements AbstractC0031f {
        final /* synthetic */ InputStream a;
        final /* synthetic */ oe b;

        d(InputStream inputStream, oe oeVar) {
            this.a = inputStream;
            this.b = oeVar;
        }

        @Override // com.bumptech.glide.load.f.AbstractC0031f
        public int a(ImageHeaderParser imageHeaderParser) {
            try {
                return imageHeaderParser.c(this.a, this.b);
            } finally {
                this.a.reset();
            }
        }
    }

    class e implements AbstractC0031f {
        final /* synthetic */ dd a;
        final /* synthetic */ oe b;

        e(dd ddVar, oe oeVar) {
            this.a = ddVar;
            this.b = oeVar;
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x002c A[SYNTHETIC, Splitter:B:14:0x002c] */
        @Override // com.bumptech.glide.load.f.AbstractC0031f
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int a(com.bumptech.glide.load.ImageHeaderParser r5) {
            /*
                r4 = this;
                r0 = 0
                ph r1 = new ph     // Catch:{ all -> 0x0029 }
                java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ all -> 0x0029 }
                dd r3 = r4.a     // Catch:{ all -> 0x0029 }
                android.os.ParcelFileDescriptor r3 = r3.a()     // Catch:{ all -> 0x0029 }
                java.io.FileDescriptor r3 = r3.getFileDescriptor()     // Catch:{ all -> 0x0029 }
                r2.<init>(r3)     // Catch:{ all -> 0x0029 }
                oe r3 = r4.b     // Catch:{ all -> 0x0029 }
                r1.<init>(r2, r3)     // Catch:{ all -> 0x0029 }
                oe r0 = r4.b     // Catch:{ all -> 0x0026 }
                int r5 = r5.c(r1, r0)     // Catch:{ all -> 0x0026 }
                r1.close()     // Catch:{ IOException -> 0x0020 }
            L_0x0020:
                dd r0 = r4.a
                r0.a()
                return r5
            L_0x0026:
                r5 = move-exception
                r0 = r1
                goto L_0x002a
            L_0x0029:
                r5 = move-exception
            L_0x002a:
                if (r0 == 0) goto L_0x002f
                r0.close()     // Catch:{ IOException -> 0x002f }
            L_0x002f:
                dd r0 = r4.a
                r0.a()
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.f.e.a(com.bumptech.glide.load.ImageHeaderParser):int");
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.f$f  reason: collision with other inner class name */
    public interface AbstractC0031f {
        int a(ImageHeaderParser imageHeaderParser);
    }

    /* access modifiers changed from: private */
    public interface g {
        ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser);
    }

    public static int a(List<ImageHeaderParser> list, dd ddVar, oe oeVar) {
        return c(list, new e(ddVar, oeVar));
    }

    public static int b(List<ImageHeaderParser> list, InputStream inputStream, oe oeVar) {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new ph(inputStream, oeVar);
        }
        inputStream.mark(5242880);
        return c(list, new d(inputStream, oeVar));
    }

    private static int c(List<ImageHeaderParser> list, AbstractC0031f fVar) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int a2 = fVar.a(list.get(i));
            if (a2 != -1) {
                return a2;
            }
        }
        return -1;
    }

    public static ImageHeaderParser.ImageType d(List<ImageHeaderParser> list, dd ddVar, oe oeVar) {
        return g(list, new c(ddVar, oeVar));
    }

    public static ImageHeaderParser.ImageType e(List<ImageHeaderParser> list, InputStream inputStream, oe oeVar) {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new ph(inputStream, oeVar);
        }
        inputStream.mark(5242880);
        return g(list, new a(inputStream));
    }

    public static ImageHeaderParser.ImageType f(List<ImageHeaderParser> list, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        return g(list, new b(byteBuffer));
    }

    private static ImageHeaderParser.ImageType g(List<ImageHeaderParser> list, g gVar) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType a2 = gVar.a(list.get(i));
            if (a2 != ImageHeaderParser.ImageType.UNKNOWN) {
                return a2;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
