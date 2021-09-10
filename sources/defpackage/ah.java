package defpackage;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import java.nio.ByteBuffer;

/* renamed from: ah  reason: default package */
public final class ah implements k<ByteBuffer, Bitmap> {
    private final wg a = new wg();

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public /* bridge */ /* synthetic */ boolean a(ByteBuffer byteBuffer, i iVar) {
        return true;
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public he<Bitmap> b(ByteBuffer byteBuffer, int i, int i2, i iVar) {
        return this.a.b(ImageDecoder.createSource(byteBuffer), i, i2, iVar);
    }
}
