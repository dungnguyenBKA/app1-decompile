package defpackage;

import android.graphics.Bitmap;
import java.util.Objects;

/* renamed from: xg  reason: default package */
public class xg implements he<Bitmap>, de {
    private final Bitmap b;
    private final qe c;

    public xg(Bitmap bitmap, qe qeVar) {
        Objects.requireNonNull(bitmap, "Bitmap must not be null");
        this.b = bitmap;
        Objects.requireNonNull(qeVar, "BitmapPool must not be null");
        this.c = qeVar;
    }

    public static xg b(Bitmap bitmap, qe qeVar) {
        if (bitmap == null) {
            return null;
        }
        return new xg(bitmap, qeVar);
    }

    @Override // defpackage.he
    public void a() {
        this.c.d(this.b);
    }

    @Override // defpackage.he
    public int c() {
        return hl.d(this.b);
    }

    @Override // defpackage.he
    public Class<Bitmap> d() {
        return Bitmap.class;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.he
    public Bitmap get() {
        return this.b;
    }

    @Override // defpackage.de
    public void initialize() {
        this.b.prepareToDraw();
    }
}
