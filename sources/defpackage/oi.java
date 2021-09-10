package defpackage;

import android.graphics.Bitmap;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;

/* renamed from: oi  reason: default package */
public final class oi implements k<mc, Bitmap> {
    private final qe a;

    public oi(qe qeVar) {
        this.a = qeVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public /* bridge */ /* synthetic */ boolean a(mc mcVar, i iVar) {
        return true;
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public he<Bitmap> b(mc mcVar, int i, int i2, i iVar) {
        return xg.b(mcVar.a(), this.a);
    }
}
