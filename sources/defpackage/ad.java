package defpackage;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.f;
import com.bumptech.glide.load.e;
import defpackage.uc;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
import java.util.Objects;
import org.apache.http.HttpHeaders;

/* renamed from: ad  reason: default package */
public class ad implements uc<InputStream> {
    static final b h = new a();
    private final sf b;
    private final int c;
    private final b d;
    private HttpURLConnection e;
    private InputStream f;
    private volatile boolean g;

    /* access modifiers changed from: private */
    /* renamed from: ad$a */
    public static class a implements b {
        a() {
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: ad$b */
    public interface b {
    }

    public ad(sf sfVar, int i) {
        b bVar = h;
        this.b = sfVar;
        this.c = i;
        this.d = bVar;
    }

    private InputStream c(URL url, int i, URL url2, Map<String, String> map) {
        if (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new e("In re-direct loop");
                    }
                } catch (URISyntaxException unused) {
                }
            }
            Objects.requireNonNull((a) this.d);
            this.e = (HttpURLConnection) url.openConnection();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.e.addRequestProperty(entry.getKey(), entry.getValue());
            }
            this.e.setConnectTimeout(this.c);
            this.e.setReadTimeout(this.c);
            boolean z = false;
            this.e.setUseCaches(false);
            this.e.setDoInput(true);
            this.e.setInstanceFollowRedirects(false);
            this.e.connect();
            this.f = this.e.getInputStream();
            if (this.g) {
                return null;
            }
            int responseCode = this.e.getResponseCode();
            int i2 = responseCode / 100;
            if (i2 == 2) {
                HttpURLConnection httpURLConnection = this.e;
                if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                    this.f = al.o(httpURLConnection.getInputStream(), (long) httpURLConnection.getContentLength());
                } else {
                    if (Log.isLoggable("HttpUrlFetcher", 3)) {
                        httpURLConnection.getContentEncoding();
                    }
                    this.f = httpURLConnection.getInputStream();
                }
                return this.f;
            }
            if (i2 == 3) {
                z = true;
            }
            if (z) {
                String headerField = this.e.getHeaderField(HttpHeaders.LOCATION);
                if (!TextUtils.isEmpty(headerField)) {
                    URL url3 = new URL(url, headerField);
                    b();
                    return c(url3, i + 1, url, map);
                }
                throw new e("Received empty or null redirect url");
            } else if (responseCode == -1) {
                throw new e(responseCode);
            } else {
                throw new e(this.e.getResponseMessage(), responseCode);
            }
        } else {
            throw new e("Too many (> 5) redirects!");
        }
    }

    @Override // defpackage.uc
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // defpackage.uc
    public void b() {
        InputStream inputStream = this.f;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.e;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.e = null;
    }

    @Override // defpackage.uc
    public void cancel() {
        this.g = true;
    }

    @Override // defpackage.uc
    public com.bumptech.glide.load.a d() {
        return com.bumptech.glide.load.a.REMOTE;
    }

    /* JADX INFO: finally extract failed */
    @Override // defpackage.uc
    public void e(f fVar, uc.a<? super InputStream> aVar) {
        int i = dl.b;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            aVar.f(c(this.b.g(), 0, null, this.b.d()));
            if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                return;
            }
        } catch (IOException e2) {
            Log.isLoggable("HttpUrlFetcher", 3);
            aVar.c(e2);
            if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                return;
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                dl.a(elapsedRealtimeNanos);
            }
            throw th;
        }
        dl.a(elapsedRealtimeNanos);
    }
}
