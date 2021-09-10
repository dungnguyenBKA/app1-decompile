package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.SoftReference;

/* access modifiers changed from: package-private */
/* renamed from: pl  reason: default package */
public class pl extends c0<String, BitmapDrawable> {
    final /* synthetic */ ql a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    pl(ql qlVar, int i) {
        super(i);
        this.a = qlVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [boolean, java.lang.Object, java.lang.Object, java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // defpackage.c0
    public void entryRemoved(boolean z, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
        BitmapDrawable bitmapDrawable3 = bitmapDrawable;
        if (bitmapDrawable3 != null && tl.class.isInstance(bitmapDrawable3)) {
            ((tl) bitmapDrawable3).a(false);
        } else if (bitmapDrawable3 != null) {
            this.a.f.add(new SoftReference(bitmapDrawable3.getBitmap()));
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // defpackage.c0
    public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
        int i;
        BitmapDrawable bitmapDrawable2 = bitmapDrawable;
        if (bitmapDrawable2 == null || bitmapDrawable2.getBitmap() == null) {
            i = 0;
        } else {
            Bitmap bitmap = bitmapDrawable2.getBitmap();
            i = bitmap.getHeight() * bitmap.getRowBytes();
        }
        int i2 = i / 1024;
        em.h("ImageCache", "sizeOf bitmapSize = " + i2 + ", size = " + size());
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
