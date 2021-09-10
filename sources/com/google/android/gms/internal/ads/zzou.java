package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Log;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpHost;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.protocol.HTTP;

public final class zzou implements zzot {
    private static final Pattern zzbio = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> zzbip = new AtomicReference<>();
    private final boolean zzbiq;
    private final int zzbir;
    private final int zzbis;
    private final String zzbit;
    private final zzpp<String> zzbiu = null;
    private final zzox zzbiv;
    private final zzox zzbiw;
    private final zzpd<? super zzou> zzbix;
    private zzos zzbiy;
    private HttpURLConnection zzbiz;
    private InputStream zzbja;
    private boolean zzbjb;
    private long zzbjc;
    private long zzbjd;
    private long zzbje;
    private long zzcp;

    public zzou(String str, zzpp<String> zzpp, zzpd<? super zzou> zzpd, int i, int i2, boolean z, zzox zzox) {
        this.zzbit = zzpg.checkNotEmpty(str);
        this.zzbix = zzpd;
        this.zzbiw = new zzox();
        this.zzbir = i;
        this.zzbis = i2;
        this.zzbiq = true;
        this.zzbiv = null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0044  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static long zzc(java.net.HttpURLConnection r10) {
        /*
        // Method dump skipped, instructions count: 204
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzou.zzc(java.net.HttpURLConnection):long");
    }

    private final void zzir() {
        HttpURLConnection httpURLConnection = this.zzbiz;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.zzbiz = null;
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(7:4|(1:6)(1:7)|8|9|(5:13|14|(2:16|(1:18))(1:19)|21|(1:25))|26|27) */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0032, code lost:
        if (r3 > android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) goto L_0x0034;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x006b, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0074, code lost:
        throw new com.google.android.gms.internal.ads.zzov(r2, r9.zzbiy, 3);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x0065 */
    @Override // com.google.android.gms.internal.ads.zzon
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void close() {
        /*
        // Method dump skipped, instructions count: 156
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzou.close():void");
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.zzbiz;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.zzbiz;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final int read(byte[] bArr, int i, int i2) {
        try {
            if (this.zzbje != this.zzbjc) {
                byte[] andSet = zzbip.getAndSet(null);
                if (andSet == null) {
                    andSet = new byte[4096];
                }
                while (true) {
                    long j = this.zzbje;
                    long j2 = this.zzbjc;
                    if (j == j2) {
                        zzbip.set(andSet);
                        break;
                    }
                    int read = this.zzbja.read(andSet, 0, (int) Math.min(j2 - j, (long) andSet.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.zzbje += (long) read;
                        zzpd<? super zzou> zzpd = this.zzbix;
                        if (zzpd != null) {
                            zzpd.zzc(this, read);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.zzbjd;
            if (j3 != -1) {
                long j4 = j3 - this.zzcp;
                if (j4 == 0) {
                    return -1;
                }
                i2 = (int) Math.min((long) i2, j4);
            }
            int read2 = this.zzbja.read(bArr, i, i2);
            if (read2 != -1) {
                this.zzcp += (long) read2;
                zzpd<? super zzou> zzpd2 = this.zzbix;
                if (zzpd2 != null) {
                    zzpd2.zzc(this, read2);
                }
                return read2;
            } else if (this.zzbjd == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        } catch (IOException e) {
            throw new zzov(e, this.zzbiy, 2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final long zza(zzos zzos) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection zza;
        this.zzbiy = zzos;
        long j = 0;
        this.zzcp = 0;
        this.zzbje = 0;
        try {
            URL url = new URL(zzos.uri.toString());
            byte[] bArr = zzos.zzbil;
            long j2 = zzos.position;
            long j3 = zzos.zzco;
            boolean isFlagSet = zzos.isFlagSet(1);
            if (!this.zzbiq) {
                httpURLConnection = zza(url, bArr, j2, j3, isFlagSet, true);
            } else {
                URL url2 = url;
                byte[] bArr2 = bArr;
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (i <= 20) {
                        zza = zza(url2, bArr2, j2, j3, isFlagSet, false);
                        int responseCode = zza.getResponseCode();
                        if (!(responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303)) {
                            if (bArr2 == null) {
                                if (responseCode != 307) {
                                    if (responseCode != 308) {
                                        break;
                                    }
                                }
                            } else {
                                break;
                            }
                        }
                        bArr2 = null;
                        String headerField = zza.getHeaderField(HttpHeaders.LOCATION);
                        zza.disconnect();
                        if (headerField != null) {
                            url2 = new URL(url2, headerField);
                            String protocol = url2.getProtocol();
                            if ("https".equals(protocol) || HttpHost.DEFAULT_SCHEME_NAME.equals(protocol)) {
                                i = i2;
                                j3 = j3;
                                j2 = j2;
                            } else {
                                String valueOf = String.valueOf(protocol);
                                throw new ProtocolException(valueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(valueOf) : new String("Unsupported protocol redirect: "));
                            }
                        } else {
                            throw new ProtocolException("Null location redirect");
                        }
                    } else {
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("Too many redirects: ");
                        sb.append(i2);
                        throw new NoRouteToHostException(sb.toString());
                    }
                }
                httpURLConnection = zza;
            }
            this.zzbiz = httpURLConnection;
            try {
                int responseCode2 = httpURLConnection.getResponseCode();
                if (responseCode2 < 200 || responseCode2 > 299) {
                    Map<String, List<String>> headerFields = this.zzbiz.getHeaderFields();
                    zzir();
                    zzoy zzoy = new zzoy(responseCode2, headerFields, zzos);
                    if (responseCode2 == 416) {
                        zzoy.initCause(new zzop(0));
                    }
                    throw zzoy;
                }
                this.zzbiz.getContentType();
                if (responseCode2 == 200) {
                    long j4 = zzos.position;
                    if (j4 != 0) {
                        j = j4;
                    }
                }
                this.zzbjc = j;
                if (!zzos.isFlagSet(1)) {
                    long j5 = zzos.zzco;
                    long j6 = -1;
                    if (j5 != -1) {
                        this.zzbjd = j5;
                    } else {
                        long zzc = zzc(this.zzbiz);
                        if (zzc != -1) {
                            j6 = zzc - this.zzbjc;
                        }
                        this.zzbjd = j6;
                    }
                } else {
                    this.zzbjd = zzos.zzco;
                }
                try {
                    this.zzbja = this.zzbiz.getInputStream();
                    this.zzbjb = true;
                    zzpd<? super zzou> zzpd = this.zzbix;
                    if (zzpd != null) {
                        zzpd.zza(this, zzos);
                    }
                    return this.zzbjd;
                } catch (IOException e) {
                    zzir();
                    throw new zzov(e, zzos, 1);
                }
            } catch (IOException e2) {
                zzir();
                String valueOf2 = String.valueOf(zzos.uri.toString());
                throw new zzov(valueOf2.length() != 0 ? "Unable to connect to ".concat(valueOf2) : new String("Unable to connect to "), e2, zzos, 1);
            }
        } catch (IOException e3) {
            String valueOf3 = String.valueOf(zzos.uri.toString());
            throw new zzov(valueOf3.length() != 0 ? "Unable to connect to ".concat(valueOf3) : new String("Unable to connect to "), e3, zzos, 1);
        }
    }

    private final HttpURLConnection zza(URL url, byte[] bArr, long j, long j2, boolean z, boolean z2) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.zzbir);
        httpURLConnection.setReadTimeout(this.zzbis);
        for (Map.Entry<String, String> entry : this.zzbiw.zzis().entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        if (!(j == 0 && j2 == -1)) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("bytes=");
            sb.append(j);
            sb.append("-");
            String sb2 = sb.toString();
            if (j2 != -1) {
                String valueOf = String.valueOf(sb2);
                StringBuilder sb3 = new StringBuilder(valueOf.length() + 20);
                sb3.append(valueOf);
                sb3.append((j + j2) - 1);
                sb2 = sb3.toString();
            }
            httpURLConnection.setRequestProperty(HttpHeaders.RANGE, sb2);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.zzbit);
        if (!z) {
            httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, HTTP.IDENTITY_CODING);
        }
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setRequestMethod(HttpPost.METHOD_NAME);
            if (bArr.length != 0) {
                httpURLConnection.setFixedLengthStreamingMode(bArr.length);
                httpURLConnection.connect();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.close();
                return httpURLConnection;
            }
        }
        httpURLConnection.connect();
        return httpURLConnection;
    }
}
