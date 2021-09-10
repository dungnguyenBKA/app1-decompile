package defpackage;

import android.graphics.drawable.PictureDrawable;
import android.widget.ImageView;
import com.bumptech.glide.load.a;

/* renamed from: dr  reason: default package */
public class dr implements bk<PictureDrawable> {
    @Override // defpackage.bk
    public boolean a(ce ceVar, Object obj, nk<PictureDrawable> nkVar, boolean z) {
        ((ImageView) ((kk) nkVar).i()).setLayerType(0, null);
        return false;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object, nk, com.bumptech.glide.load.a, boolean] */
    @Override // defpackage.bk
    public boolean b(PictureDrawable pictureDrawable, Object obj, nk<PictureDrawable> nkVar, a aVar, boolean z) {
        ((ImageView) ((kk) nkVar).i()).setLayerType(1, null);
        return false;
    }
}
