package defpackage;

import android.graphics.Bitmap;

/* renamed from: re  reason: default package */
public class re implements qe {
    @Override // defpackage.qe
    public void a(int i) {
    }

    @Override // defpackage.qe
    public void b() {
    }

    @Override // defpackage.qe
    public Bitmap c(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // defpackage.qe
    public void d(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // defpackage.qe
    public Bitmap e(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }
}
