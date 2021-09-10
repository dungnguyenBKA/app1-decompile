package defpackage;

import com.bumptech.glide.load.h;
import com.bumptech.glide.load.i;
import defpackage.zf;
import java.io.InputStream;

/* renamed from: kg  reason: default package */
public class kg implements zf<sf, InputStream> {
    public static final h<Integer> b = h.d("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);
    private final yf<sf, sf> a;

    /* renamed from: kg$a */
    public static class a implements ag<sf, InputStream> {
        private final yf<sf, sf> a = new yf<>(500);

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<sf, InputStream> c(dg dgVar) {
            return new kg(this.a);
        }
    }

    public kg(yf<sf, sf> yfVar) {
        this.a = yfVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public /* bridge */ /* synthetic */ boolean a(sf sfVar) {
        return true;
    }

    /* Return type fixed from 'zf$a' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a<InputStream> b(sf sfVar, int i, int i2, i iVar) {
        sf sfVar2 = sfVar;
        yf<sf, sf> yfVar = this.a;
        if (yfVar != null) {
            sf a2 = yfVar.a(sfVar2, 0, 0);
            if (a2 == null) {
                this.a.b(sfVar2, 0, 0, sfVar2);
            } else {
                sfVar2 = a2;
            }
        }
        return new zf.a(sfVar2, new ad(sfVar2, ((Integer) iVar.c(b)).intValue()));
    }
}
