package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.net.HttpURLConnection;

final class zzbg extends FilterInputStream {
    private final HttpURLConnection zzcx;

    zzbg(HttpURLConnection httpURLConnection) {
        super(zzbd.zza(httpURLConnection));
        this.zzcx = httpURLConnection;
    }

    @Override // java.io.FilterInputStream, java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public final void close() {
        super.close();
        this.zzcx.disconnect();
    }
}
