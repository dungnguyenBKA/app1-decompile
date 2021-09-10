package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.i;

/* renamed from: ti  reason: default package */
public final class ti implements vi<Drawable, byte[]> {
    private final qe a;
    private final vi<Bitmap, byte[]> b;
    private final vi<ji, byte[]> c;

    public ti(qe qeVar, vi<Bitmap, byte[]> viVar, vi<ji, byte[]> viVar2) {
        this.a = qeVar;
        this.b = viVar;
        this.c = viVar2;
    }

    @Override // defpackage.vi
    public he<byte[]> a(he<Drawable> heVar, i iVar) {
        Drawable drawable = heVar.get();
        if (drawable instanceof BitmapDrawable) {
            return this.b.a(xg.b(((BitmapDrawable) drawable).getBitmap(), this.a), iVar);
        }
        if (drawable instanceof ji) {
            return this.c.a(heVar, iVar);
        }
        return null;
    }
}
