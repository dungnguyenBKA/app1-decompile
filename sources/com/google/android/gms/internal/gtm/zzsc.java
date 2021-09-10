package com.google.android.gms.internal.gtm;

import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

final class zzsc implements zzsd {
    private HttpURLConnection zza;
    private InputStream zzb = null;

    zzsc() {
    }

    @Override // com.google.android.gms.internal.gtm.zzsd
    public final InputStream zza(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(20000);
        httpURLConnection.setConnectTimeout(20000);
        this.zza = httpURLConnection;
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200) {
            InputStream inputStream = httpURLConnection.getInputStream();
            this.zzb = inputStream;
            return inputStream;
        }
        String C = ic.C(25, "Bad response: ", responseCode);
        if (responseCode == 404) {
            throw new FileNotFoundException(C);
        } else if (responseCode == 503) {
            throw new zzsf(C);
        } else {
            throw new IOException(C);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzsd
    public final void zzb() {
        String str;
        HttpURLConnection httpURLConnection = this.zza;
        try {
            InputStream inputStream = this.zzb;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                str = "HttpUrlConnectionNetworkClient: Error when closing http input stream: ".concat(valueOf);
            } else {
                str = new String("HttpUrlConnectionNetworkClient: Error when closing http input stream: ");
            }
            Log.e("GoogleTagManager", str, e);
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }
}
