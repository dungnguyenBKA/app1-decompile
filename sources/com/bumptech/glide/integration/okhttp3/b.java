package com.bumptech.glide.integration.okhttp3;

import android.util.Log;
import com.bumptech.glide.f;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.e;
import defpackage.jh0;
import defpackage.og0;
import defpackage.uc;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Objects;

public class b implements uc<InputStream>, pg0 {
    private final og0.a b;
    private final sf c;
    private InputStream d;
    private mh0 e;
    private uc.a<? super InputStream> f;
    private volatile og0 g;

    public b(og0.a aVar, sf sfVar) {
        this.b = aVar;
        this.c = sfVar;
    }

    @Override // defpackage.uc
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // defpackage.uc
    public void b() {
        try {
            InputStream inputStream = this.d;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException unused) {
        }
        mh0 mh0 = this.e;
        if (mh0 != null) {
            mh0.close();
        }
        this.f = null;
    }

    @Override // defpackage.uc
    public void cancel() {
        og0 og0 = this.g;
        if (og0 != null) {
            og0.cancel();
        }
    }

    @Override // defpackage.uc
    public a d() {
        return a.REMOTE;
    }

    @Override // defpackage.uc
    public void e(f fVar, uc.a<? super InputStream> aVar) {
        jh0.a aVar2 = new jh0.a();
        aVar2.g(this.c.f());
        for (Map.Entry<String, String> entry : this.c.d().entrySet()) {
            aVar2.a(entry.getKey(), entry.getValue());
        }
        jh0 b2 = aVar2.b();
        this.f = aVar;
        this.g = ((gh0) this.b).k(b2);
        this.g.o(this);
    }

    @Override // defpackage.pg0
    public void onFailure(og0 og0, IOException iOException) {
        Log.isLoggable("OkHttpFetcher", 3);
        this.f.c(iOException);
    }

    @Override // defpackage.pg0
    public void onResponse(og0 og0, lh0 lh0) {
        this.e = lh0.j();
        if (lh0.i0()) {
            mh0 mh0 = this.e;
            Objects.requireNonNull(mh0, "Argument must not be null");
            InputStream o = al.o(this.e.byteStream(), mh0.contentLength());
            this.d = o;
            this.f.f(o);
            return;
        }
        this.f.c(new e(lh0.j0(), lh0.L()));
    }
}
