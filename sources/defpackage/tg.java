package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;

/* renamed from: tg  reason: default package */
public class tg<DataType> implements k<DataType, BitmapDrawable> {
    private final k<DataType, Bitmap> a;
    private final Resources b;

    public tg(Resources resources, k<DataType, Bitmap> kVar) {
        this.b = resources;
        this.a = kVar;
    }

    @Override // com.bumptech.glide.load.k
    public boolean a(DataType datatype, i iVar) {
        return this.a.a(datatype, iVar);
    }

    @Override // com.bumptech.glide.load.k
    public he<BitmapDrawable> b(DataType datatype, int i, int i2, i iVar) {
        return nh.b(this.b, this.a.b(datatype, i, i2, iVar));
    }
}
