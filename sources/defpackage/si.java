package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.i;

/* renamed from: si  reason: default package */
public class si implements vi<Bitmap, BitmapDrawable> {
    private final Resources a;

    public si(Resources resources) {
        this.a = resources;
    }

    @Override // defpackage.vi
    public he<BitmapDrawable> a(he<Bitmap> heVar, i iVar) {
        return nh.b(this.a, heVar);
    }
}
