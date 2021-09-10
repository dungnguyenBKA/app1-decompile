package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public final class zzazo implements zzazb {
    private final String zzbit;

    public zzazo() {
        this(null);
    }

    @Override // com.google.android.gms.internal.ads.zzazb
    public final void zzel(String str) {
        try {
            String valueOf = String.valueOf(str);
            zzazk.zzdy(valueOf.length() != 0 ? "Pinging URL: ".concat(valueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                zzwr.zzqn();
                zzaza.zza(true, httpURLConnection, this.zzbit);
                zzaze zzaze = new zzaze();
                zzaze.zza(httpURLConnection, (byte[]) null);
                int responseCode = httpURLConnection.getResponseCode();
                zzaze.zza(httpURLConnection, responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 65);
                    sb.append("Received non-success response code ");
                    sb.append(responseCode);
                    sb.append(" from pinging URL: ");
                    sb.append(str);
                    zzazk.zzex(sb.toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IndexOutOfBoundsException e) {
            String message = e.getMessage();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message).length());
            sb2.append("Error while parsing ping URL: ");
            sb2.append(str);
            sb2.append(". ");
            sb2.append(message);
            zzazk.zzex(sb2.toString());
        } catch (IOException | RuntimeException e2) {
            String message2 = e2.getMessage();
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message2).length());
            sb3.append("Error while pinging URL: ");
            sb3.append(str);
            sb3.append(". ");
            sb3.append(message2);
            zzazk.zzex(sb3.toString());
        }
    }

    public zzazo(String str) {
        this.zzbit = str;
    }
}
