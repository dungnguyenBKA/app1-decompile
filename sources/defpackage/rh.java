package defpackage;

import android.graphics.Bitmap;
import androidx.core.app.b;
import com.bumptech.glide.load.g;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* renamed from: rh  reason: default package */
public final class rh extends yg {
    private static final byte[] c = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(g.a);
    private final int b;

    public rh(int i) {
        b.i(i > 0, "roundingRadius must be greater than 0.");
        this.b = i;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        messageDigest.update(c);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.b).array());
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.yg
    public Bitmap c(qe qeVar, Bitmap bitmap, int i, int i2) {
        return th.h(qeVar, bitmap, this.b);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof rh) || this.b != ((rh) obj).b) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        int i = this.b;
        int i2 = hl.c;
        return ((i + 527) * 31) - 569625254;
    }
}
