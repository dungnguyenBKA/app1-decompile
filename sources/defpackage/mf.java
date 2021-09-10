package defpackage;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.i;
import defpackage.zf;
import java.io.InputStream;

/* renamed from: mf  reason: default package */
public class mf<Data> implements zf<Uri, Data> {
    private final AssetManager a;
    private final a<Data> b;

    /* renamed from: mf$a */
    public interface a<Data> {
        uc<Data> b(AssetManager assetManager, String str);
    }

    /* renamed from: mf$b */
    public static class b implements ag<Uri, ParcelFileDescriptor>, a<ParcelFileDescriptor> {
        private final AssetManager a;

        public b(AssetManager assetManager) {
            this.a = assetManager;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.mf.a
        public uc<ParcelFileDescriptor> b(AssetManager assetManager, String str) {
            return new yc(assetManager, str);
        }

        @Override // defpackage.ag
        public zf<Uri, ParcelFileDescriptor> c(dg dgVar) {
            return new mf(this.a, this);
        }
    }

    /* renamed from: mf$c */
    public static class c implements ag<Uri, InputStream>, a<InputStream> {
        private final AssetManager a;

        public c(AssetManager assetManager) {
            this.a = assetManager;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.mf.a
        public uc<InputStream> b(AssetManager assetManager, String str) {
            return new ed(assetManager, str);
        }

        @Override // defpackage.ag
        public zf<Uri, InputStream> c(dg dgVar) {
            return new mf(this.a, this);
        }
    }

    public mf(AssetManager assetManager, a<Data> aVar) {
        this.a = assetManager;
        this.b = aVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public boolean a(Uri uri) {
        Uri uri2 = uri;
        if (!"file".equals(uri2.getScheme()) || uri2.getPathSegments().isEmpty() || !"android_asset".equals(uri2.getPathSegments().get(0))) {
            return false;
        }
        return true;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a b(Uri uri, int i, int i2, i iVar) {
        Uri uri2 = uri;
        return new zf.a(new xk(uri2), this.b.b(this.a, uri2.toString().substring(22)));
    }
}
