package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.c;
import com.bumptech.glide.load.m;
import java.security.MessageDigest;
import java.util.Objects;

/* renamed from: mi  reason: default package */
public class mi implements m<ji> {
    private final m<Bitmap> b;

    public mi(m<Bitmap> mVar) {
        Objects.requireNonNull(mVar, "Argument must not be null");
        this.b = mVar;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        this.b.a(messageDigest);
    }

    @Override // com.bumptech.glide.load.m
    public he<ji> b(Context context, he<ji> heVar, int i, int i2) {
        ji jiVar = heVar.get();
        xg xgVar = new xg(jiVar.c(), c.c(context).e());
        he<Bitmap> b2 = this.b.b(context, xgVar, i, i2);
        if (!xgVar.equals(b2)) {
            xgVar.a();
        }
        jiVar.g(this.b, b2.get());
        return heVar;
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof mi) {
            return this.b.equals(((mi) obj).b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.b.hashCode();
    }
}
