package com.bumptech.glide;

import android.content.Context;
import android.graphics.drawable.PictureDrawable;
import android.util.Log;
import com.bumptech.glide.integration.okhttp3.a;
import com.bumptech.glide.integration.okhttp3.c;
import com.camerasideas.collagemaker.activity.CollageGlideModule;
import defpackage.jj;
import java.io.InputStream;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;

final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {
    private final CollageGlideModule a = new CollageGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        Log.isLoggable("Glide", 3);
    }

    @Override // defpackage.qj
    public void a(Context context, c cVar, g gVar) {
        new a();
        gVar.q(sf.class, InputStream.class, new c.a());
        Objects.requireNonNull(this.a);
        gVar.p(com.caverock.androidsvg.c.class, PictureDrawable.class, new cr());
        gVar.c(InputStream.class, com.caverock.androidsvg.c.class, new br());
    }

    @Override // defpackage.oj
    public void b(Context context, d dVar) {
        Objects.requireNonNull(this.a);
    }

    @Override // defpackage.oj
    public boolean c() {
        Objects.requireNonNull(this.a);
        return false;
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    public Set<Class<?>> d() {
        return Collections.emptySet();
    }

    /* access modifiers changed from: package-private */
    @Override // com.bumptech.glide.GeneratedAppGlideModule
    public jj.b e() {
        return new a();
    }
}
