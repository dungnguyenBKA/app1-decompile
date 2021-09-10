package defpackage;

import android.net.Uri;
import com.bumptech.glide.load.i;
import defpackage.zf;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.HttpHost;

/* renamed from: lg  reason: default package */
public class lg implements zf<Uri, InputStream> {
    private static final Set<String> b = Collections.unmodifiableSet(new HashSet(Arrays.asList(HttpHost.DEFAULT_SCHEME_NAME, "https")));
    private final zf<sf, InputStream> a;

    /* renamed from: lg$a */
    public static class a implements ag<Uri, InputStream> {
        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<Uri, InputStream> c(dg dgVar) {
            return new lg(dgVar.c(sf.class, InputStream.class));
        }
    }

    public lg(zf<sf, InputStream> zfVar) {
        this.a = zfVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public boolean a(Uri uri) {
        return b.contains(uri.getScheme());
    }

    /* Return type fixed from 'zf$a' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a<InputStream> b(Uri uri, int i, int i2, i iVar) {
        return this.a.b(new sf(uri.toString()), i, i2, iVar);
    }
}
