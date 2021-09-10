package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.JsonReader;
import android.util.Log;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.util.a;
import com.google.android.gms.common.util.g;
import com.google.firebase.installations.h;
import defpackage.a50;
import defpackage.j50;
import defpackage.m50;
import defpackage.o50;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpHeaders;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.protocol.HTTP;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: l50  reason: default package */
public class l50 {
    private static final Pattern e = Pattern.compile("[0-9]+s");
    private static final Charset f = Charset.forName(HTTP.UTF_8);
    private final Context a;
    private final d50<y50> b;
    private final d50<a50> c;
    private final n50 d = new n50();

    public l50(Context context, d50<y50> d50, d50<a50> d502) {
        this.a = context;
        this.b = d50;
        this.c = d502;
    }

    private URL c(String str) {
        try {
            return new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", str));
        } catch (MalformedURLException e2) {
            throw new h(e2.getMessage(), h.a.UNAVAILABLE);
        }
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x004d */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void d(java.net.HttpURLConnection r10, java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
        // Method dump skipped, instructions count: 126
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.l50.d(java.net.HttpURLConnection, java.lang.String, java.lang.String, java.lang.String):void");
    }

    private HttpURLConnection e(URL url, String str) {
        a50.a a2;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty(HttpHeaders.ACCEPT, "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty(HttpHeaders.CACHE_CONTROL, "no-cache");
            httpURLConnection.addRequestProperty("X-Android-Package", this.a.getPackageName());
            if (!(this.c.get() == null || this.b.get() == null || (a2 = this.c.get().a("fire-installations-id")) == a50.a.NONE)) {
                httpURLConnection.addRequestProperty("x-firebase-client", this.b.get().a());
                httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(a2.a()));
            }
            String str2 = null;
            try {
                Context context = this.a;
                byte[] a3 = a.a(context, context.getPackageName());
                if (a3 == null) {
                    Log.e("ContentValues", "Could not get fingerprint hash for package: " + this.a.getPackageName());
                } else {
                    str2 = g.b(a3, false);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                StringBuilder q = ic.q("No such package: ");
                q.append(this.a.getPackageName());
                Log.e("ContentValues", q.toString(), e2);
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", str2);
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException unused) {
            throw new h("Firebase Installations Service is unavailable. Please try again later.", h.a.UNAVAILABLE);
        }
    }

    static long f(String str) {
        n.b(e.matcher(str).matches(), "Invalid Expiration Timestamp.");
        if (str == null || str.length() == 0) {
            return 0;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    private m50 g(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f));
        o50.a a2 = o50.a();
        j50.b bVar = new j50.b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                bVar.f(jsonReader.nextString());
            } else if (nextName.equals("fid")) {
                bVar.c(jsonReader.nextString());
            } else if (nextName.equals("refreshToken")) {
                bVar.d(jsonReader.nextString());
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        a2.c(jsonReader.nextString());
                    } else if (nextName2.equals("expiresIn")) {
                        a2.d(f(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                bVar.b(a2.a());
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        bVar.e(m50.b.OK);
        return bVar.a();
    }

    private o50 h(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f));
        o50.a a2 = o50.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                a2.c(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                a2.d(f(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        a2.b(o50.b.OK);
        return a2.a();
    }

    private void i(HttpURLConnection httpURLConnection, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:16.3.5");
            k(httpURLConnection, jSONObject.toString().getBytes(HTTP.UTF_8));
        } catch (JSONException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private void j(HttpURLConnection httpURLConnection) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:16.3.5");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            k(httpURLConnection, jSONObject2.toString().getBytes(HTTP.UTF_8));
        } catch (JSONException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private static void k(URLConnection uRLConnection, byte[] bArr) {
        OutputStream outputStream = uRLConnection.getOutputStream();
        if (outputStream != null) {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            try {
                gZIPOutputStream.write(bArr);
            } finally {
                try {
                    gZIPOutputStream.close();
                    outputStream.close();
                } catch (IOException unused) {
                }
            }
        } else {
            throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
        }
    }

    /* JADX INFO: finally extract failed */
    public m50 a(String str, String str2, String str3, String str4, String str5) {
        h.a aVar = h.a.UNAVAILABLE;
        if (this.d.a()) {
            URL c2 = c(String.format("projects/%s/installations", str3));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection e2 = e(c2, str);
                try {
                    e2.setRequestMethod(HttpPost.METHOD_NAME);
                    e2.setDoOutput(true);
                    if (str5 != null) {
                        e2.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                    }
                    i(e2, str2, str4);
                    int responseCode = e2.getResponseCode();
                    this.d.b(responseCode);
                    if (responseCode >= 200 && responseCode < 300) {
                        m50 g = g(e2);
                        e2.disconnect();
                        return g;
                    }
                    try {
                        d(e2, str4, str, str3);
                        if (responseCode == 429) {
                            throw new h("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", h.a.TOO_MANY_REQUESTS);
                        } else if (responseCode < 500 || responseCode >= 600) {
                            Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                            j50.b bVar = new j50.b();
                            bVar.e(m50.b.BAD_CONFIG);
                            m50 a2 = bVar.a();
                            e2.disconnect();
                            return a2;
                        } else {
                            e2.disconnect();
                        }
                    } catch (IOException | AssertionError unused) {
                    }
                } catch (Throwable th) {
                    e2.disconnect();
                    throw th;
                }
            }
            throw new h("Firebase Installations Service is unavailable. Please try again later.", aVar);
        }
        throw new h("Firebase Installations Service is unavailable. Please try again later.", aVar);
    }

    /* JADX INFO: finally extract failed */
    public o50 b(String str, String str2, String str3, String str4) {
        h.a aVar = h.a.UNAVAILABLE;
        if (this.d.a()) {
            URL c2 = c(String.format("projects/%s/installations/%s/authTokens:generate", str3, str2));
            for (int i = 0; i <= 1; i++) {
                HttpURLConnection e2 = e(c2, str);
                try {
                    e2.setRequestMethod(HttpPost.METHOD_NAME);
                    e2.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    e2.setDoOutput(true);
                    j(e2);
                    int responseCode = e2.getResponseCode();
                    this.d.b(responseCode);
                    if (responseCode >= 200 && responseCode < 300) {
                        o50 h = h(e2);
                        e2.disconnect();
                        return h;
                    }
                    try {
                        d(e2, null, str, str3);
                        if (responseCode != 401) {
                            if (responseCode != 404) {
                                if (responseCode == 429) {
                                    throw new h("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", h.a.TOO_MANY_REQUESTS);
                                } else if (responseCode < 500 || responseCode >= 600) {
                                    Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                                    o50.a a2 = o50.a();
                                    a2.b(o50.b.BAD_CONFIG);
                                    o50 a3 = a2.a();
                                    e2.disconnect();
                                    return a3;
                                } else {
                                    e2.disconnect();
                                }
                            }
                        }
                        o50.a a4 = o50.a();
                        a4.b(o50.b.AUTH_ERROR);
                        o50 a5 = a4.a();
                        e2.disconnect();
                        return a5;
                    } catch (IOException | AssertionError unused) {
                    }
                } catch (Throwable th) {
                    e2.disconnect();
                    throw th;
                }
            }
            throw new h("Firebase Installations Service is unavailable. Please try again later.", aVar);
        }
        throw new h("Firebase Installations Service is unavailable. Please try again later.", aVar);
    }
}
