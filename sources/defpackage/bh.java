package defpackage;

import android.graphics.Bitmap;
import com.bumptech.glide.load.g;
import java.security.MessageDigest;

/* renamed from: bh  reason: default package */
public class bh extends yg {
    private static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(g.a);

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.yg
    public Bitmap c(qe qeVar, Bitmap bitmap, int i, int i2) {
        return th.b(qeVar, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        return obj instanceof bh;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return -599754482;
    }
}
