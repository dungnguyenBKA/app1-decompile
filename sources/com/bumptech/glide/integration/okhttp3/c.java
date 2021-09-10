package com.bumptech.glide.integration.okhttp3;

import com.bumptech.glide.load.i;
import defpackage.og0;
import defpackage.zf;
import java.io.InputStream;

public class c implements zf<sf, InputStream> {
    private final og0.a a;

    public static class a implements ag<sf, InputStream> {
        private static volatile og0.a b;
        private final og0.a a;

        public a() {
            if (b == null) {
                synchronized (a.class) {
                    if (b == null) {
                        b = new gh0();
                    }
                }
            }
            this.a = b;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<sf, InputStream> c(dg dgVar) {
            return new c(this.a);
        }
    }

    public c(og0.a aVar) {
        this.a = aVar;
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
        return new zf.a(sfVar2, new b(this.a, sfVar2));
    }
}
