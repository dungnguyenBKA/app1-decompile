package defpackage;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.i;
import com.vungle.warren.model.Advertisement;
import defpackage.zf;
import java.io.InputStream;

/* renamed from: ng  reason: default package */
public class ng implements zf<Uri, InputStream> {
    private final Context a;

    /* renamed from: ng$a */
    public static class a implements ag<Uri, InputStream> {
        private final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<Uri, InputStream> c(dg dgVar) {
            return new ng(this.a);
        }
    }

    public ng(Context context) {
        this.a = context.getApplicationContext();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public boolean a(Uri uri) {
        Uri uri2 = uri;
        return hd.a(uri2) && uri2.getPathSegments().contains(Advertisement.KEY_VIDEO);
    }

    /* Return type fixed from 'zf$a' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a<InputStream> b(Uri uri, int i, int i2, i iVar) {
        Uri uri2 = uri;
        if (hd.b(i, i2)) {
            Long l = (Long) iVar.c(vh.d);
            if (l != null && l.longValue() == -1) {
                return new zf.a(new xk(uri2), id.g(this.a, uri2));
            }
        }
        return null;
    }
}
