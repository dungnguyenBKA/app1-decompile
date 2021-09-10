package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.f;
import java.io.InputStream;
import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: lh  reason: default package */
public interface lh {

    /* renamed from: lh$a */
    public static final class a implements lh {
        private final bd a;
        private final oe b;
        private final List<ImageHeaderParser> c;

        a(InputStream inputStream, List<ImageHeaderParser> list, oe oeVar) {
            Objects.requireNonNull(oeVar, "Argument must not be null");
            this.b = oeVar;
            Objects.requireNonNull(list, "Argument must not be null");
            this.c = list;
            this.a = new bd(inputStream, oeVar);
        }

        @Override // defpackage.lh
        public int a() {
            return f.b(this.c, this.a.a(), this.b);
        }

        @Override // defpackage.lh
        public Bitmap b(BitmapFactory.Options options) {
            return BitmapFactory.decodeStream(this.a.a(), null, options);
        }

        @Override // defpackage.lh
        public void c() {
            this.a.c();
        }

        @Override // defpackage.lh
        public ImageHeaderParser.ImageType d() {
            return f.e(this.c, this.a.a(), this.b);
        }
    }

    /* renamed from: lh$b */
    public static final class b implements lh {
        private final oe a;
        private final List<ImageHeaderParser> b;
        private final dd c;

        b(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, oe oeVar) {
            Objects.requireNonNull(oeVar, "Argument must not be null");
            this.a = oeVar;
            Objects.requireNonNull(list, "Argument must not be null");
            this.b = list;
            this.c = new dd(parcelFileDescriptor);
        }

        @Override // defpackage.lh
        public int a() {
            return f.a(this.b, this.c, this.a);
        }

        @Override // defpackage.lh
        public Bitmap b(BitmapFactory.Options options) {
            return BitmapFactory.decodeFileDescriptor(this.c.a().getFileDescriptor(), null, options);
        }

        @Override // defpackage.lh
        public void c() {
        }

        @Override // defpackage.lh
        public ImageHeaderParser.ImageType d() {
            return f.d(this.b, this.c, this.a);
        }
    }

    int a();

    Bitmap b(BitmapFactory.Options options);

    void c();

    ImageHeaderParser.ImageType d();
}
