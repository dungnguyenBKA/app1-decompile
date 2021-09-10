package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;

/* renamed from: qh  reason: default package */
public class qh implements k<Uri, Bitmap> {
    private final di a;
    private final qe b;

    public qh(di diVar, qe qeVar) {
        this.a = diVar;
        this.b = qeVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public boolean a(Uri uri, i iVar) {
        return "android.resource".equals(uri.getScheme());
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public he<Bitmap> b(Uri uri, int i, int i2, i iVar) {
        he c = this.a.c(uri);
        if (c == null) {
            return null;
        }
        return gh.a(this.b, (Drawable) ((ai) c).get(), i, i2);
    }
}
