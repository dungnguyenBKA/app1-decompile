package defpackage;

import com.bumptech.glide.load.i;
import defpackage.zf;
import java.io.InputStream;
import java.net.URL;

/* renamed from: pg  reason: default package */
public class pg implements zf<URL, InputStream> {
    private final zf<sf, InputStream> a;

    /* renamed from: pg$a */
    public static class a implements ag<URL, InputStream> {
        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<URL, InputStream> c(dg dgVar) {
            return new pg(dgVar.c(sf.class, InputStream.class));
        }
    }

    public pg(zf<sf, InputStream> zfVar) {
        this.a = zfVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public /* bridge */ /* synthetic */ boolean a(URL url) {
        return true;
    }

    /* Return type fixed from 'zf$a' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a<InputStream> b(URL url, int i, int i2, i iVar) {
        return this.a.b(new sf(url), i, i2, iVar);
    }
}
