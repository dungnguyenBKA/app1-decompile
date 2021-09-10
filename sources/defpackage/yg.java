package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.c;
import com.bumptech.glide.load.m;

/* renamed from: yg  reason: default package */
public abstract class yg implements m<Bitmap> {
    @Override // com.bumptech.glide.load.m
    public final he<Bitmap> b(Context context, he<Bitmap> heVar, int i, int i2) {
        if (hl.i(i, i2)) {
            qe e = c.c(context).e();
            Bitmap bitmap = heVar.get();
            if (i == Integer.MIN_VALUE) {
                i = bitmap.getWidth();
            }
            if (i2 == Integer.MIN_VALUE) {
                i2 = bitmap.getHeight();
            }
            Bitmap c = c(e, bitmap, i, i2);
            return bitmap.equals(c) ? heVar : xg.b(c, e);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }

    /* access modifiers changed from: protected */
    public abstract Bitmap c(qe qeVar, Bitmap bitmap, int i, int i2);
}
