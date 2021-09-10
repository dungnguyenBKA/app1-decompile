package defpackage;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* renamed from: jk  reason: default package */
public class jk extends kk<Drawable> {
    public jk(ImageView imageView) {
        super(imageView);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // defpackage.kk
    public void l(Drawable drawable) {
        ((ImageView) this.b).setImageDrawable(drawable);
    }
}
