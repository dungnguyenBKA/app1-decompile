package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;

public final class zzbce implements zzot {
    private static final Pattern zzbio = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> zzbip = new AtomicReference<>();
    private final int zzbir;
    private final int zzbis;
    private final String zzbit;
    private final zzox zzbiw;
    private final zzpd<? super zzbce> zzbix;
    private zzos zzbiy;
    private HttpURLConnection zzbiz;
    private InputStream zzbja;
    private boolean zzbjb;
    private long zzbjc;
    private long zzbjd;
    private long zzbje;
    private long zzcp;
    private SSLSocketFactory zzenr = new zzbcd(this);
    private int zzens;
    private Set<Socket> zzent = new HashSet();

    zzbce(String str, zzpd<? super zzbce> zzpd, int i, int i2, int i3) {
        this.zzbit = zzpg.checkNotEmpty(str);
        this.zzbix = zzpd;
        this.zzbiw = new zzox();
        this.zzbir = i;
        this.zzbis = i2;
        this.zzens = i3;
    }

    /* access modifiers changed from: public */
    private final void zzb(Socket socket) {
        this.zzent.add(socket);
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0042  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static long zzc(java.net.HttpURLConnection r9) {
        /*
        // Method dump skipped, instructions count: 202
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbce.zzc(java.net.HttpURLConnection):long");
    }

    private final void zzir() {
        HttpURLConnection httpURLConnection = this.zzbiz;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzazk.zzc("Unexpected error while disconnecting", e);
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
        // Method dump skipped, instructions count: 166
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbce.close():void");
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
                        zzpd<? super zzbce> zzpd = this.zzbix;
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
                zzpd<? super zzbce> zzpd2 = this.zzbix;
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

    public final void setReceiveBufferSize(int i) {
        this.zzens = i;
        for (Socket socket : this.zzent) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.zzens);
                } catch (SocketException e) {
                    zzazk.zzd("Failed to update receive buffer size.", e);
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:119:0x0127 A[EDGE_INSN: B:119:0x0127->B:50:0x0127 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00d5 A[Catch:{ IOException -> 0x0241 }] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00e2 A[Catch:{ IOException -> 0x0241 }] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00e4 A[Catch:{ IOException -> 0x0241 }] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ea A[Catch:{ IOException -> 0x0241 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x011d A[Catch:{ IOException -> 0x0241 }] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x014e  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x016c  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x017f  */
    @Override // com.google.android.gms.internal.ads.zzon
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long zza(com.google.android.gms.internal.ads.zzos r24) {
        /*
        // Method dump skipped, instructions count: 614
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbce.zza(com.google.android.gms.internal.ads.zzos):long");
    }
}
