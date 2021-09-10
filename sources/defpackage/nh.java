package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.util.Objects;

/* renamed from: nh  reason: default package */
public final class nh implements he<BitmapDrawable>, de {
    private final Resources b;
    private final he<Bitmap> c;

    private nh(Resources resources, he<Bitmap> heVar) {
        Objects.requireNonNull(resources, "Argument must not be null");
        this.b = resources;
        this.c = heVar;
    }

    public static he<BitmapDrawable> b(Resources resources, he<Bitmap> heVar) {
        if (heVar == null) {
            return null;
        }
        return new nh(resources, heVar);
    }

    @Override // defpackage.he
    public void a() {
        this.c.a();
    }

    @Override // defpackage.he
    public int c() {
        return this.c.c();
    }

    @Override // defpackage.he
    public Class<BitmapDrawable> d() {
        return BitmapDrawable.class;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.he
    public BitmapDrawable get() {
        return new BitmapDrawable(this.b, this.c.get());
    }

    @Override // defpackage.de
    public void initialize() {
        he<Bitmap> heVar = this.c;
        if (heVar instanceof de) {
            ((de) heVar).initialize();
        }
    }
}
