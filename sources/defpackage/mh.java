package defpackage;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import java.io.InputStream;

/* renamed from: mh  reason: default package */
public final class mh implements k<InputStream, Bitmap> {
    private final wg a = new wg();

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public /* bridge */ /* synthetic */ boolean a(InputStream inputStream, i iVar) {
        return true;
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public he<Bitmap> b(InputStream inputStream, int i, int i2, i iVar) {
        return this.a.b(ImageDecoder.createSource(yk.b(inputStream)), i, i2, iVar);
    }
}
