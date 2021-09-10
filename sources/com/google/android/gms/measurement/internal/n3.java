package com.google.android.gms.measurement.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

public final class n3 extends s8 {
    public n3(b9 b9Var) {
        super(b9Var);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.s8
    public final boolean k() {
        return false;
    }

    public final boolean l() {
        i();
        ConnectivityManager connectivityManager = (ConnectivityManager) this.a.b().getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    /* access modifiers changed from: protected */
    public final HttpURLConnection m(URL url) {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            this.a.x();
            httpURLConnection.setConnectTimeout(60000);
            this.a.x();
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain HTTP connection");
    }
}
