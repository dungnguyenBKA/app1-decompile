package defpackage;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import java.util.Objects;

/* renamed from: oh  reason: default package */
public final class oh implements k<ParcelFileDescriptor, Bitmap> {
    private final fh a;

    public oh(fh fhVar) {
        this.a = fhVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public boolean a(ParcelFileDescriptor parcelFileDescriptor, i iVar) {
        Objects.requireNonNull(this.a);
        return dd.c();
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public he<Bitmap> b(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, i iVar) {
        return this.a.a(parcelFileDescriptor, i, i2, iVar);
    }
}
