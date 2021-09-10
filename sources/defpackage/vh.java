package defpackage;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Objects;

/* renamed from: vh  reason: default package */
public class vh<T> implements k<T, Bitmap> {
    public static final h<Long> d = h.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new a());
    public static final h<Integer> e = h.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new b());
    private static final e f = new e();
    private final f<T> a;
    private final qe b;
    private final e c;

    /* access modifiers changed from: package-private */
    /* renamed from: vh$a */
    public class a implements h.b<Long> {
        private final ByteBuffer a = ByteBuffer.allocate(8);

        a() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [byte[], java.lang.Object, java.security.MessageDigest] */
        @Override // com.bumptech.glide.load.h.b
        public void a(byte[] bArr, Long l, MessageDigest messageDigest) {
            Long l2 = l;
            messageDigest.update(bArr);
            synchronized (this.a) {
                this.a.position(0);
                messageDigest.update(this.a.putLong(l2.longValue()).array());
            }
        }
    }

    /* renamed from: vh$b */
    class b implements h.b<Integer> {
        private final ByteBuffer a = ByteBuffer.allocate(4);

        b() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [byte[], java.lang.Object, java.security.MessageDigest] */
        @Override // com.bumptech.glide.load.h.b
        public void a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            Integer num2 = num;
            if (num2 != null) {
                messageDigest.update(bArr);
                synchronized (this.a) {
                    this.a.position(0);
                    messageDigest.update(this.a.putInt(num2.intValue()).array());
                }
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: vh$c */
    public static final class c implements f<AssetFileDescriptor> {
        c(a aVar) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.media.MediaMetadataRetriever, java.lang.Object] */
        @Override // defpackage.vh.f
        public void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            AssetFileDescriptor assetFileDescriptor2 = assetFileDescriptor;
            mediaMetadataRetriever.setDataSource(assetFileDescriptor2.getFileDescriptor(), assetFileDescriptor2.getStartOffset(), assetFileDescriptor2.getLength());
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: vh$d */
    public static final class d implements f<ByteBuffer> {
        d() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.media.MediaMetadataRetriever, java.lang.Object] */
        @Override // defpackage.vh.f
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            mediaMetadataRetriever.setDataSource(new wh(this, byteBuffer));
        }
    }

    /* renamed from: vh$e */
    static class e {
        e() {
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: vh$f */
    public interface f<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* access modifiers changed from: package-private */
    /* renamed from: vh$g */
    public static final class g implements f<ParcelFileDescriptor> {
        g() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.media.MediaMetadataRetriever, java.lang.Object] */
        @Override // defpackage.vh.f
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    vh(qe qeVar, f<T> fVar) {
        e eVar = f;
        this.b = qeVar;
        this.a = fVar;
        this.c = eVar;
    }

    public static k<AssetFileDescriptor, Bitmap> c(qe qeVar) {
        return new vh(qeVar, new c(null));
    }

    public static k<ByteBuffer, Bitmap> d(qe qeVar) {
        return new vh(qeVar, new d());
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.graphics.Bitmap e(android.media.MediaMetadataRetriever r9, long r10, int r12, int r13, int r14, defpackage.eh r15) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 27
            if (r0 < r1) goto L_0x0059
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r13 == r0) goto L_0x0059
            if (r14 == r0) goto L_0x0059
            eh r0 = defpackage.eh.d
            if (r15 == r0) goto L_0x0059
            r0 = 18
            java.lang.String r0 = r9.extractMetadata(r0)     // Catch:{ all -> 0x0053 }
            int r0 = java.lang.Integer.parseInt(r0)     // Catch:{ all -> 0x0053 }
            r1 = 19
            java.lang.String r1 = r9.extractMetadata(r1)     // Catch:{ all -> 0x0053 }
            int r1 = java.lang.Integer.parseInt(r1)     // Catch:{ all -> 0x0053 }
            r2 = 24
            java.lang.String r2 = r9.extractMetadata(r2)     // Catch:{ all -> 0x0053 }
            int r2 = java.lang.Integer.parseInt(r2)     // Catch:{ all -> 0x0053 }
            r3 = 90
            if (r2 == r3) goto L_0x0036
            r3 = 270(0x10e, float:3.78E-43)
            if (r2 != r3) goto L_0x0039
        L_0x0036:
            r8 = r1
            r1 = r0
            r0 = r8
        L_0x0039:
            float r13 = r15.b(r0, r1, r13, r14)     // Catch:{ all -> 0x0053 }
            float r14 = (float) r0     // Catch:{ all -> 0x0053 }
            float r14 = r14 * r13
            int r6 = java.lang.Math.round(r14)     // Catch:{ all -> 0x0053 }
            float r14 = (float) r1     // Catch:{ all -> 0x0053 }
            float r13 = r13 * r14
            int r7 = java.lang.Math.round(r13)     // Catch:{ all -> 0x0053 }
            r2 = r9
            r3 = r10
            r5 = r12
            android.graphics.Bitmap r13 = r2.getScaledFrameAtTime(r3, r5, r6, r7)     // Catch:{ all -> 0x0053 }
            goto L_0x005a
        L_0x0053:
            r13 = 3
            java.lang.String r14 = "VideoDecoder"
            android.util.Log.isLoggable(r14, r13)
        L_0x0059:
            r13 = 0
        L_0x005a:
            if (r13 != 0) goto L_0x0060
            android.graphics.Bitmap r13 = r9.getFrameAtTime(r10, r12)
        L_0x0060:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vh.e(android.media.MediaMetadataRetriever, long, int, int, int, eh):android.graphics.Bitmap");
    }

    public static k<ParcelFileDescriptor, Bitmap> f(qe qeVar) {
        return new vh(qeVar, new g());
    }

    @Override // com.bumptech.glide.load.k
    public boolean a(T t, i iVar) {
        return true;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r12v0, resolved type: com.bumptech.glide.load.i */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.k
    public he<Bitmap> b(T t, int i, int i2, i iVar) {
        long longValue = ((Long) iVar.c(d)).longValue();
        if (longValue >= 0 || longValue == -1) {
            Integer num = (Integer) iVar.c(e);
            if (num == null) {
                num = 2;
            }
            eh ehVar = (eh) iVar.c(eh.f);
            if (ehVar == null) {
                ehVar = eh.e;
            }
            Objects.requireNonNull(this.c);
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                this.a.a(mediaMetadataRetriever, t);
                Bitmap e2 = e(mediaMetadataRetriever, longValue, num.intValue(), i, i2, ehVar);
                mediaMetadataRetriever.release();
                return xg.b(e2, this.b);
            } catch (RuntimeException e3) {
                throw new IOException(e3);
            } catch (Throwable th) {
                mediaMetadataRetriever.release();
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
    }
}
