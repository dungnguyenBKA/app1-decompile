package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.c;
import com.bumptech.glide.load.m;
import java.security.MessageDigest;

/* renamed from: hh  reason: default package */
public class hh implements m<Drawable> {
    private final m<Bitmap> b;
    private final boolean c;

    public hh(m<Bitmap> mVar, boolean z) {
        this.b = mVar;
        this.c = z;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        this.b.a(messageDigest);
    }

    @Override // com.bumptech.glide.load.m
    public he<Drawable> b(Context context, he<Drawable> heVar, int i, int i2) {
        qe e = c.c(context).e();
        Drawable drawable = heVar.get();
        he<Bitmap> a = gh.a(e, drawable, i, i2);
        if (a != null) {
            he<Bitmap> b2 = this.b.b(context, a, i, i2);
            if (!b2.equals(a)) {
                return nh.b(context.getResources(), b2);
            }
            b2.a();
            return heVar;
        } else if (!this.c) {
            return heVar;
        } else {
            throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
        }
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof hh) {
            return this.b.equals(((hh) obj).b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.b.hashCode();
    }
}
