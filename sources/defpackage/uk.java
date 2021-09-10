package defpackage;

import android.content.Context;
import com.bumptech.glide.load.g;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* renamed from: uk  reason: default package */
public final class uk implements g {
    private final int b;
    private final g c;

    private uk(int i, g gVar) {
        this.b = i;
        this.c = gVar;
    }

    public static g c(Context context) {
        return new uk(context.getResources().getConfiguration().uiMode & 48, vk.a(context));
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        this.c.a(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.b).array());
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof uk)) {
            return false;
        }
        uk ukVar = (uk) obj;
        if (this.b != ukVar.b || !this.c.equals(ukVar.c)) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return hl.f(this.c, this.b);
    }
}
