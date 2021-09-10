package com.google.android.gms.internal.gtm;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.google.android.gms.analytics.q;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.apache.http.protocol.HTTP;

/* access modifiers changed from: package-private */
public final class zzfe extends zzbs {
    private static final byte[] zza = "\n".getBytes();
    private final String zzb = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleAnalytics", zzbt.zza, Build.VERSION.RELEASE, zzfs.zzd(Locale.getDefault()), Build.MODEL, Build.ID);
    private final zzfo zzc;

    zzfe(zzbv zzbv) {
        super(zzbv);
        this.zzc = new zzfo(zzbv.zzr());
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x007f A[SYNTHETIC, Splitter:B:29:0x007f] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0094 A[SYNTHETIC, Splitter:B:38:0x0094] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zzg(java.net.URL r6, byte[] r7) {
        /*
        // Method dump skipped, instructions count: 162
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzfe.zzg(java.net.URL, byte[]):int");
    }

    private final URL zzh() {
        String str;
        zzw();
        String zzi = zzct.zzi();
        zzw();
        String zzb2 = zzeu.zzt.zzb();
        if (zzb2.length() != 0) {
            str = zzi.concat(zzb2);
        } else {
            str = new String(zzi);
        }
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            zzK("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private final URL zzi(zzex zzex) {
        String str;
        String str2;
        if (zzex.zzh()) {
            zzw();
            String zzi = zzct.zzi();
            zzw();
            String zzj = zzct.zzj();
            if (zzj.length() != 0) {
                str = zzi.concat(zzj);
                return new URL(str);
            }
            str2 = new String(zzi);
        } else {
            zzw();
            String zzk = zzct.zzk();
            zzw();
            String zzj2 = zzct.zzj();
            if (zzj2.length() != 0) {
                str = zzk.concat(zzj2);
                return new URL(str);
            }
            str2 = new String(zzk);
        }
        str = str2;
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            zzK("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private final URL zzj(zzex zzex, String str) {
        String str2;
        if (zzex.zzh()) {
            zzw();
            String zzi = zzct.zzi();
            zzw();
            String zzj = zzct.zzj();
            int length = zzi.length();
            StringBuilder sb = new StringBuilder(length + 1 + zzj.length() + str.length());
            sb.append(zzi);
            sb.append(zzj);
            sb.append("?");
            sb.append(str);
            str2 = sb.toString();
        } else {
            zzw();
            String zzk = zzct.zzk();
            zzw();
            String zzj2 = zzct.zzj();
            int length2 = zzk.length();
            StringBuilder sb2 = new StringBuilder(length2 + 1 + zzj2.length() + str.length());
            sb2.append(zzk);
            sb2.append(zzj2);
            sb2.append("?");
            sb2.append(str);
            str2 = sb2.toString();
        }
        try {
            return new URL(str2);
        } catch (MalformedURLException e) {
            zzK("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x001f A[SYNTHETIC, Splitter:B:18:0x001f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzk(java.net.HttpURLConnection r4) {
        /*
            r3 = this;
            java.lang.String r0 = "Error closing http connection input stream"
            java.io.InputStream r4 = r4.getInputStream()     // Catch:{ all -> 0x001b }
            r1 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r1]     // Catch:{ all -> 0x0019 }
        L_0x000a:
            int r2 = r4.read(r1)     // Catch:{ all -> 0x0019 }
            if (r2 > 0) goto L_0x000a
            r4.close()     // Catch:{ IOException -> 0x0014 }
            return
        L_0x0014:
            r4 = move-exception
            r3.zzK(r0, r4)
            return
        L_0x0019:
            r1 = move-exception
            goto L_0x001d
        L_0x001b:
            r1 = move-exception
            r4 = 0
        L_0x001d:
            if (r4 == 0) goto L_0x0027
            r4.close()     // Catch:{ IOException -> 0x0023 }
            goto L_0x0027
        L_0x0023:
            r4 = move-exception
            r3.zzK(r0, r4)
        L_0x0027:
            goto L_0x0029
        L_0x0028:
            throw r1
        L_0x0029:
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzfe.zzk(java.net.HttpURLConnection):void");
    }

    private static final void zzl(StringBuilder sb, String str, String str2) {
        if (sb.length() != 0) {
            sb.append('&');
        }
        sb.append(URLEncoder.encode(str, HTTP.UTF_8));
        sb.append('=');
        sb.append(URLEncoder.encode(str2, HTTP.UTF_8));
    }

    /* access modifiers changed from: package-private */
    public final String zza(zzex zzex, boolean z) {
        String str;
        Objects.requireNonNull(zzex, "null reference");
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : zzex.zzg().entrySet()) {
                String key = entry.getKey();
                if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key) && !"z".equals(key) && !"_gmsv".equals(key)) {
                    zzl(sb, key, entry.getValue());
                }
            }
            zzl(sb, "ht", String.valueOf(zzex.zzd()));
            zzl(sb, "qt", String.valueOf(zzC().a() - zzex.zzd()));
            zzw();
            if (z) {
                long zzc2 = zzex.zzc();
                if (zzc2 != 0) {
                    str = String.valueOf(zzc2);
                } else {
                    str = String.valueOf(zzex.zzb());
                }
                zzl(sb, "z", str);
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            zzK("Failed to encode name or value", e);
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final HttpURLConnection zzb(URL url) {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            zzw();
            httpURLConnection.setConnectTimeout(zzeu.zzE.zzb().intValue());
            zzw();
            httpURLConnection.setReadTimeout(zzeu.zzF.zzb().intValue());
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty("User-Agent", this.zzb);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain http connection");
    }

    /* JADX WARNING: Removed duplicated region for block: B:133:0x02bd  */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x02c4  */
    /* JADX WARNING: Removed duplicated region for block: B:155:0x0323 A[EDGE_INSN: B:155:0x0323->B:151:0x0323 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x01c1 A[SYNTHETIC, Splitter:B:75:0x01c1] */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x01cc  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x01db A[SYNTHETIC, Splitter:B:85:0x01db] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x01e6  */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x01f4  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0202  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x0228  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<java.lang.Long> zzc(java.util.List<com.google.android.gms.internal.gtm.zzex> r20) {
        /*
        // Method dump skipped, instructions count: 804
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzfe.zzc(java.util.List):java.util.List");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzbs
    public final void zzd() {
        zzP("Network initialized. User agent", this.zzb);
    }

    public final boolean zze() {
        NetworkInfo networkInfo;
        q.h();
        zzW();
        try {
            networkInfo = ((ConnectivityManager) zzo().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException unused) {
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        zzO("No network connectivity");
        return false;
    }
}
