package defpackage;

import android.graphics.Bitmap;
import com.bumptech.glide.load.g;
import java.security.MessageDigest;

/* renamed from: jh  reason: default package */
public class jh extends yg {
    private static final byte[] b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(g.a);

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.yg
    public Bitmap c(qe qeVar, Bitmap bitmap, int i, int i2) {
        return th.c(qeVar, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        return obj instanceof jh;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return 1572326941;
    }
}
