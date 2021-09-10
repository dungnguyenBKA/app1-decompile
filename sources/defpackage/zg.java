package defpackage;

import android.graphics.Bitmap;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import java.nio.ByteBuffer;
import java.util.Objects;

/* renamed from: zg  reason: default package */
public class zg implements k<ByteBuffer, Bitmap> {
    private final fh a;

    public zg(fh fhVar) {
        this.a = fhVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public boolean a(ByteBuffer byteBuffer, i iVar) {
        Objects.requireNonNull(this.a);
        return true;
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public he<Bitmap> b(ByteBuffer byteBuffer, int i, int i2, i iVar) {
        return this.a.c(yk.e(byteBuffer), i, i2, iVar);
    }
}
