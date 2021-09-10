package com.google.android.gms.internal.ads;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.protocol.HTTP;

public final class zzbd extends zzar {
    private final zzbf zzcv;
    private final SSLSocketFactory zzcw;

    public zzbd() {
        this(null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:46:0x0100  */
    @Override // com.google.android.gms.internal.ads.zzar
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.internal.ads.zzbb zza(com.google.android.gms.internal.ads.zzab<?> r7, java.util.Map<java.lang.String, java.lang.String> r8) {
        /*
        // Method dump skipped, instructions count: 284
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbd.zza(com.google.android.gms.internal.ads.zzab, java.util.Map):com.google.android.gms.internal.ads.zzbb");
    }

    private zzbd(zzbf zzbf) {
        this(null, null);
    }

    private zzbd(zzbf zzbf, SSLSocketFactory sSLSocketFactory) {
        this.zzcv = null;
        this.zzcw = null;
    }

    private static List<zzv> zza(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new zzv(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: private */
    public static InputStream zza(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private static void zza(HttpURLConnection httpURLConnection, zzab<?> zzab) {
        byte[] zzg = zzab.zzg();
        if (zzg != null) {
            httpURLConnection.setDoOutput(true);
            if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                httpURLConnection.setRequestProperty("Content-Type", HTTP.UTF_8.length() != 0 ? "application/x-www-form-urlencoded; charset=".concat(HTTP.UTF_8) : new String("application/x-www-form-urlencoded; charset="));
            }
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(zzg);
            dataOutputStream.close();
        }
    }
}
