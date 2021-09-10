package defpackage;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.f;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* renamed from: kd  reason: default package */
class kd {
    private static final gd f = new gd();
    private final gd a = f;
    private final jd b;
    private final oe c;
    private final ContentResolver d;
    private final List<ImageHeaderParser> e;

    kd(List<ImageHeaderParser> list, jd jdVar, oe oeVar, ContentResolver contentResolver) {
        this.b = jdVar;
        this.c = oeVar;
        this.d = contentResolver;
        this.e = list;
    }

    /* access modifiers changed from: package-private */
    public int a(Uri uri) {
        InputStream inputStream = null;
        try {
            inputStream = this.d.openInputStream(uri);
            int b2 = f.b(this.e, inputStream, this.c);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            return b2;
        } catch (IOException | NullPointerException unused2) {
            if (Log.isLoggable("ThumbStreamOpener", 3)) {
                String str = "Failed to open uri: " + uri;
            }
            if (inputStream == null) {
                return -1;
            }
            try {
                inputStream.close();
                return -1;
            } catch (IOException unused3) {
                return -1;
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001a, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001d, code lost:
        r3 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x003c, code lost:
        if (r2 == null) goto L_0x001d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0018, code lost:
        if (r2 != null) goto L_0x001a;
     */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x002c A[Catch:{ all -> 0x009f }] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00a3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.io.InputStream b(android.net.Uri r9) {
        /*
        // Method dump skipped, instructions count: 169
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kd.b(android.net.Uri):java.io.InputStream");
    }
}
