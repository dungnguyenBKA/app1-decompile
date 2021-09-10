package defpackage;

import android.content.Context;
import com.airbnb.lottie.e;
import com.airbnb.lottie.f;
import com.airbnb.lottie.m;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.ZipInputStream;
import org.apache.http.client.methods.HttpGet;

/* renamed from: ja  reason: default package */
public class ja {
    private final Context a;
    private final String b;
    private final ia c;

    private ja(Context context, String str, String str2) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.b = str;
        if (str2 == null) {
            this.c = null;
        } else {
            this.c = new ia(applicationContext);
        }
    }

    private m<e> a() {
        StringBuilder q = ic.q("Fetching ");
        q.append(this.b);
        zb.a(q.toString());
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.b).openConnection();
        httpURLConnection.setRequestMethod(HttpGet.METHOD_NAME);
        try {
            httpURLConnection.connect();
            if (httpURLConnection.getErrorStream() == null) {
                if (httpURLConnection.getResponseCode() == 200) {
                    m<e> d = d(httpURLConnection);
                    StringBuilder sb = new StringBuilder();
                    sb.append("Completed fetch from network. Success: ");
                    sb.append(d.b() != null);
                    zb.a(sb.toString());
                    httpURLConnection.disconnect();
                    return d;
                }
            }
            String c2 = c(httpURLConnection);
            return new m<>(new IllegalArgumentException("Unable to fetch " + this.b + ". Failed with " + httpURLConnection.getResponseCode() + "\n" + c2));
        } catch (Exception e) {
            return new m<>(e);
        } finally {
            httpURLConnection.disconnect();
        }
    }

    public static m<e> b(Context context, String str, String str2) {
        j2<ha, InputStream> a2;
        m<e> mVar;
        ja jaVar = new ja(context, str, str2);
        ia iaVar = jaVar.c;
        e eVar = null;
        if (!(iaVar == null || (a2 = iaVar.a(jaVar.b)) == null)) {
            F f = a2.a;
            S s = a2.b;
            if (f == ha.ZIP) {
                mVar = f.n(new ZipInputStream(s), jaVar.b);
            } else {
                mVar = f.f(s, jaVar.b);
            }
            if (mVar.b() != null) {
                eVar = mVar.b();
            }
        }
        if (eVar != null) {
            return new m<>(eVar);
        }
        StringBuilder q = ic.q("Animation for ");
        q.append(jaVar.b);
        q.append(" not found in cache. Fetching from network.");
        zb.a(q.toString());
        try {
            return jaVar.a();
        } catch (IOException e) {
            return new m<>(e);
        }
    }

    private String c(HttpURLConnection httpURLConnection) {
        httpURLConnection.getResponseCode();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine);
                    sb.append('\n');
                } else {
                    try {
                        break;
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception e) {
                throw e;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        }
        bufferedReader.close();
        return sb.toString();
    }

    private m<e> d(HttpURLConnection httpURLConnection) {
        m<e> mVar;
        ha haVar;
        String contentType = httpURLConnection.getContentType();
        if (contentType == null) {
            contentType = "application/json";
        }
        if (contentType.contains("application/zip")) {
            zb.a("Handling zip response.");
            haVar = ha.ZIP;
            ia iaVar = this.c;
            if (iaVar == null) {
                mVar = f.n(new ZipInputStream(httpURLConnection.getInputStream()), null);
            } else {
                mVar = f.n(new ZipInputStream(new FileInputStream(iaVar.e(this.b, httpURLConnection.getInputStream(), haVar))), this.b);
            }
        } else {
            zb.a("Received json response.");
            haVar = ha.JSON;
            ia iaVar2 = this.c;
            if (iaVar2 == null) {
                mVar = f.f(httpURLConnection.getInputStream(), null);
            } else {
                mVar = f.f(new FileInputStream(new File(iaVar2.e(this.b, httpURLConnection.getInputStream(), haVar).getAbsolutePath())), this.b);
            }
        }
        if (!(this.c == null || mVar.b() == null)) {
            this.c.d(this.b, haVar);
        }
        return mVar;
    }
}
