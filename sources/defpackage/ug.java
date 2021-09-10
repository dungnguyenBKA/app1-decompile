package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.l;
import java.io.File;

/* renamed from: ug  reason: default package */
public class ug implements l<BitmapDrawable> {
    private final qe a;
    private final l<Bitmap> b;

    public ug(qe qeVar, l<Bitmap> lVar) {
        this.a = qeVar;
        this.b = lVar;
    }

    @Override // com.bumptech.glide.load.d
    public boolean a(Object obj, File file, i iVar) {
        return this.b.a(new xg(((BitmapDrawable) ((he) obj).get()).getBitmap(), this.a), file, iVar);
    }

    @Override // com.bumptech.glide.load.l
    public c b(i iVar) {
        return this.b.b(iVar);
    }
}
