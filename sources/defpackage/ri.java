package defpackage;

import android.graphics.Bitmap;
import com.bumptech.glide.load.i;
import java.io.ByteArrayOutputStream;

/* renamed from: ri  reason: default package */
public class ri implements vi<Bitmap, byte[]> {
    private final Bitmap.CompressFormat a = Bitmap.CompressFormat.JPEG;
    private final int b = 100;

    @Override // defpackage.vi
    public he<byte[]> a(he<Bitmap> heVar, i iVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        heVar.get().compress(this.a, this.b, byteArrayOutputStream);
        heVar.a();
        return new yh(byteArrayOutputStream.toByteArray());
    }
}
