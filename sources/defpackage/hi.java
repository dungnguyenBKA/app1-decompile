package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Objects;
import java.util.Queue;

/* renamed from: hi  reason: default package */
public class hi implements k<ByteBuffer, ji> {
    private static final a f = new a();
    private static final b g = new b();
    private final Context a;
    private final List<ImageHeaderParser> b;
    private final b c;
    private final a d;
    private final ii e;

    /* access modifiers changed from: package-private */
    /* renamed from: hi$a */
    public static class a {
        a() {
        }
    }

    /* renamed from: hi$b */
    static class b {
        private final Queue<pc> a = new ArrayDeque(0);

        b() {
            int i = hl.c;
        }

        /* access modifiers changed from: package-private */
        public synchronized pc a(ByteBuffer byteBuffer) {
            pc poll;
            poll = this.a.poll();
            if (poll == null) {
                poll = new pc();
            }
            poll.h(byteBuffer);
            return poll;
        }

        /* access modifiers changed from: package-private */
        public synchronized void b(pc pcVar) {
            pcVar.a();
            this.a.offer(pcVar);
        }
    }

    public hi(Context context, List<ImageHeaderParser> list, qe qeVar, oe oeVar) {
        b bVar = g;
        a aVar = f;
        this.a = context.getApplicationContext();
        this.b = list;
        this.d = aVar;
        this.e = new ii(qeVar, oeVar);
        this.c = bVar;
    }

    private li c(ByteBuffer byteBuffer, int i, int i2, pc pcVar, i iVar) {
        Bitmap.Config config;
        int i3;
        int i4 = dl.b;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            oc c2 = pcVar.c();
            if (c2.b() > 0) {
                if (c2.c() == 0) {
                    if (iVar.c(pi.a) == com.bumptech.glide.load.b.PREFER_RGB_565) {
                        config = Bitmap.Config.RGB_565;
                    } else {
                        config = Bitmap.Config.ARGB_8888;
                    }
                    int min = Math.min(c2.a() / i2, c2.d() / i);
                    if (min == 0) {
                        i3 = 0;
                    } else {
                        i3 = Integer.highestOneBit(min);
                    }
                    int max = Math.max(1, i3);
                    Log.isLoggable("BufferGifDecoder", 2);
                    a aVar = this.d;
                    ii iiVar = this.e;
                    Objects.requireNonNull(aVar);
                    qc qcVar = new qc(iiVar, c2, byteBuffer, max);
                    qcVar.i(config);
                    qcVar.b();
                    Bitmap a2 = qcVar.a();
                    if (a2 == null) {
                        if (Log.isLoggable("BufferGifDecoder", 2)) {
                            dl.a(elapsedRealtimeNanos);
                        }
                        return null;
                    }
                    li liVar = new li(new ji(this.a, qcVar, sg.c(), i, i2, a2));
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        dl.a(elapsedRealtimeNanos);
                    }
                    return liVar;
                }
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                dl.a(elapsedRealtimeNanos);
            }
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public boolean a(ByteBuffer byteBuffer, i iVar) {
        return !((Boolean) iVar.c(pi.b)).booleanValue() && f.f(this.b, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public he<ji> b(ByteBuffer byteBuffer, int i, int i2, i iVar) {
        ByteBuffer byteBuffer2 = byteBuffer;
        pc a2 = this.c.a(byteBuffer2);
        try {
            return c(byteBuffer2, i, i2, a2, iVar);
        } finally {
            this.c.b(a2);
        }
    }
}
