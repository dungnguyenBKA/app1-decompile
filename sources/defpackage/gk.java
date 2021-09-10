package defpackage;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* renamed from: gk  reason: default package */
public class gk extends kk<Bitmap> {
    public gk(ImageView imageView) {
        super(imageView);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // defpackage.kk
    public void l(Bitmap bitmap) {
        ((ImageView) this.b).setImageBitmap(bitmap);
    }
}
