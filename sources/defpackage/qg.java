package defpackage;

import android.annotation.SuppressLint;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import com.bumptech.glide.load.b;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.k;

/* renamed from: qg  reason: default package */
public abstract class qg<T> implements k<ImageDecoder.Source, T> {
    final kh a = kh.a();

    /* access modifiers changed from: package-private */
    /* renamed from: qg$a */
    public class a implements ImageDecoder.OnHeaderDecodedListener {
        final /* synthetic */ int a;
        final /* synthetic */ int b;
        final /* synthetic */ boolean c;
        final /* synthetic */ b d;
        final /* synthetic */ eh e;
        final /* synthetic */ j f;

        /* renamed from: qg$a$a  reason: collision with other inner class name */
        class C0118a implements ImageDecoder.OnPartialImageListener {
            C0118a(a aVar) {
            }

            public boolean onPartialImage(ImageDecoder.DecodeException decodeException) {
                return false;
            }
        }

        a(int i, int i2, boolean z, b bVar, eh ehVar, j jVar) {
            this.a = i;
            this.b = i2;
            this.c = z;
            this.d = bVar;
            this.e = ehVar;
            this.f = jVar;
        }

        @SuppressLint({"Override"})
        public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
            boolean z = false;
            if (qg.this.a.b(this.a, this.b, this.c, false)) {
                imageDecoder.setAllocator(3);
            } else {
                imageDecoder.setAllocator(1);
            }
            if (this.d == b.PREFER_RGB_565) {
                imageDecoder.setMemorySizePolicy(0);
            }
            imageDecoder.setOnPartialImageListener(new C0118a(this));
            Size size = imageInfo.getSize();
            int i = this.a;
            if (i == Integer.MIN_VALUE) {
                i = size.getWidth();
            }
            int i2 = this.b;
            if (i2 == Integer.MIN_VALUE) {
                i2 = size.getHeight();
            }
            float b2 = this.e.b(size.getWidth(), size.getHeight(), i, i2);
            int round = Math.round(((float) size.getWidth()) * b2);
            int round2 = Math.round(b2 * ((float) size.getHeight()));
            if (Log.isLoggable("ImageDecoder", 2)) {
                size.getWidth();
                size.getHeight();
            }
            imageDecoder.setTargetSize(round, round2);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 28) {
                if (this.f == j.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) {
                    z = true;
                }
                imageDecoder.setTargetColorSpace(ColorSpace.get(z ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            } else if (i3 >= 26) {
                imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
            }
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public /* bridge */ /* synthetic */ boolean a(ImageDecoder.Source source, i iVar) {
        return true;
    }

    /* access modifiers changed from: protected */
    public abstract he<T> c(ImageDecoder.Source source, int i, int i2, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener);

    /* JADX DEBUG: Multi-variable search result rejected for r13v0, resolved type: com.bumptech.glide.load.i */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final he<T> b(ImageDecoder.Source source, int i, int i2, i iVar) {
        b bVar = (b) iVar.c(fh.f);
        eh ehVar = (eh) iVar.c(eh.f);
        h<Boolean> hVar = fh.i;
        return c(source, i, i2, new a(i, i2, iVar.c(hVar) != null && ((Boolean) iVar.c(hVar)).booleanValue(), bVar, ehVar, (j) iVar.c(fh.g)));
    }
}
