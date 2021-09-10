package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.g;
import com.bumptech.glide.integration.okhttp3.c;
import java.io.InputStream;

@Deprecated
public class OkHttpGlideModule implements pj {
    @Override // defpackage.pj
    public void a(Context context, d dVar) {
    }

    @Override // defpackage.pj
    public void b(Context context, c cVar, g gVar) {
        gVar.q(sf.class, InputStream.class, new c.a());
    }
}
