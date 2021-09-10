package defpackage;

import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.load.g;
import java.security.MessageDigest;

/* renamed from: ch  reason: default package */
public class ch extends yg {
    private static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(g.a);

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.yg
    public Bitmap c(qe qeVar, Bitmap bitmap, int i, int i2) {
        int i3 = th.e;
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            Log.isLoggable("TransformationUtils", 2);
            return th.c(qeVar, bitmap, i, i2);
        }
        Log.isLoggable("TransformationUtils", 2);
        return bitmap;
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        return obj instanceof ch;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return -670243078;
    }
}
