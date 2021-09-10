package defpackage;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;

/* renamed from: wg  reason: default package */
public final class wg extends qg<Bitmap> {
    private final qe b = new re();

    /* access modifiers changed from: protected */
    @Override // defpackage.qg
    public he<Bitmap> c(ImageDecoder.Source source, int i, int i2, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener) {
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, onHeaderDecodedListener);
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            decodeBitmap.getWidth();
            decodeBitmap.getHeight();
        }
        return new xg(decodeBitmap, this.b);
    }
}
