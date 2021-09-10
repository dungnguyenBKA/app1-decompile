package defpackage;

import android.graphics.Bitmap;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import defpackage.fh;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* renamed from: sh  reason: default package */
public class sh implements k<InputStream, Bitmap> {
    private final fh a;
    private final oe b;

    /* renamed from: sh$a */
    static class a implements fh.b {
        private final ph a;
        private final bl b;

        a(ph phVar, bl blVar) {
            this.a = phVar;
            this.b = blVar;
        }

        @Override // defpackage.fh.b
        public void a(qe qeVar, Bitmap bitmap) {
            IOException j = this.b.j();
            if (j != null) {
                if (bitmap != null) {
                    qeVar.d(bitmap);
                }
                throw j;
            }
        }

        @Override // defpackage.fh.b
        public void b() {
            this.a.o();
        }
    }

    public sh(fh fhVar, oe oeVar) {
        this.a = fhVar;
        this.b = oeVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public boolean a(InputStream inputStream, i iVar) {
        Objects.requireNonNull(this.a);
        return true;
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public he<Bitmap> b(InputStream inputStream, int i, int i2, i iVar) {
        ph phVar;
        boolean z;
        InputStream inputStream2 = inputStream;
        if (inputStream2 instanceof ph) {
            phVar = (ph) inputStream2;
            z = false;
        } else {
            phVar = new ph(inputStream2, this.b);
            z = true;
        }
        bl o = bl.o(phVar);
        try {
            return this.a.d(new fl(o), i, i2, iVar, new a(phVar, o));
        } finally {
            o.L();
            if (z) {
                phVar.L();
            }
        }
    }
}
