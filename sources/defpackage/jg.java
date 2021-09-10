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

/* renamed from: jg  reason: default package */
public class jg<Data> implements zf<Uri, Data> {
    private static final Set<String> b = Collections.unmodifiableSet(new HashSet(Arrays.asList(HttpHost.DEFAULT_SCHEME_NAME, "https")));
    private final zf<sf, Data> a;

    /* renamed from: jg$a */
    public static class a implements ag<Uri, InputStream> {
        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<Uri, InputStream> c(dg dgVar) {
            return new jg(dgVar.c(sf.class, InputStream.class));
        }
    }

    public jg(zf<sf, Data> zfVar) {
        this.a = zfVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public boolean a(Uri uri) {
        return b.contains(uri.getScheme());
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a b(Uri uri, int i, int i2, i iVar) {
        return this.a.b(new sf(uri.toString()), i, i2, iVar);
    }
}
