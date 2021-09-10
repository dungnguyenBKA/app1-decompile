package defpackage;

import android.graphics.Bitmap;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;

/* renamed from: uh  reason: default package */
public final class uh implements k<Bitmap, Bitmap> {

    /* renamed from: uh$a */
    private static final class a implements he<Bitmap> {
        private final Bitmap b;

        a(Bitmap bitmap) {
            this.b = bitmap;
        }

        @Override // defpackage.he
        public void a() {
        }

        @Override // defpackage.he
        public int c() {
            return hl.d(this.b);
        }

        @Override // defpackage.he
        public Class<Bitmap> d() {
            return Bitmap.class;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.he
        public Bitmap get() {
            return this.b;
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public /* bridge */ /* synthetic */ boolean a(Bitmap bitmap, i iVar) {
        return true;
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public he<Bitmap> b(Bitmap bitmap, int i, int i2, i iVar) {
        return new a(bitmap);
    }
}
