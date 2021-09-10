package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.facebook.ads.AdError;
import com.google.android.datatransport.runtime.backends.f;
import com.google.android.datatransport.runtime.backends.g;
import com.google.android.datatransport.runtime.backends.m;
import defpackage.ds;
import defpackage.et;
import defpackage.ss;
import defpackage.ts;
import defpackage.us;
import defpackage.ws;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.protocol.HTTP;

/* access modifiers changed from: package-private */
public final class d implements m {
    private final d40 a = rs.b();
    private final ConnectivityManager b;
    private final Context c;
    final URL d;
    private final mv e;
    private final mv f;
    private final int g;

    /* access modifiers changed from: package-private */
    public static final class a {
        final URL a;
        final rs b;
        final String c;

        a(URL url, rs rsVar, String str) {
            this.a = url;
            this.b = rsVar;
            this.c = str;
        }
    }

    /* access modifiers changed from: package-private */
    public static final class b {
        final int a;
        final URL b;
        final long c;

        b(int i, URL url, long j) {
            this.a = i;
            this.b = url;
            this.c = j;
        }
    }

    d(Context context, mv mvVar, mv mvVar2) {
        this.c = context;
        this.b = (ConnectivityManager) context.getSystemService("connectivity");
        this.d = d(a.c);
        this.e = mvVar2;
        this.f = mvVar;
        this.g = 40000;
    }

    static b c(d dVar, a aVar) {
        Objects.requireNonNull(dVar);
        st.a("CctTransportBackend", "Making request to: %s", aVar.a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(dVar.g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod(HttpPost.METHOD_NAME);
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "2.3.3"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, "gzip");
        String str = aVar.c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    dVar.a.a(aVar.b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    st.e("CctTransportBackend", "Status Code: " + responseCode);
                    st.e("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField("Content-Type"));
                    st.e("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new b(responseCode, new URL(httpURLConnection.getHeaderField(HttpHeaders.LOCATION)), 0);
                    }
                    if (responseCode != 200) {
                        return new b(responseCode, null, 0);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                        try {
                            b bVar = new b(responseCode, null, vs.a(new BufferedReader(new InputStreamReader(gZIPInputStream))).b());
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
                        } catch (Throwable unused) {
                        }
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable unused3) {
                }
                throw th;
                throw th;
                throw th;
                throw th;
            } catch (Throwable unused4) {
            }
        } catch (ConnectException | UnknownHostException e2) {
            st.c("CctTransportBackend", "Couldn't open connection, returning with 500", e2);
            return new b(HttpStatus.SC_INTERNAL_SERVER_ERROR, null, 0);
        } catch (e40 | IOException e3) {
            st.c("CctTransportBackend", "Couldn't encode request, returning with 400", e3);
            return new b(HttpStatus.SC_BAD_REQUEST, null, 0);
        }
    }

    private static URL d(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e2) {
            throw new IllegalArgumentException(ic.i("Invalid url: ", str), e2);
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.m
    public g a(f fVar) {
        Object a2;
        ts.a aVar;
        HashMap hashMap = new HashMap();
        for (et etVar : fVar.b()) {
            String j = etVar.j();
            if (!hashMap.containsKey(j)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(etVar);
                hashMap.put(j, arrayList);
            } else {
                ((List) hashMap.get(j)).add(etVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            et etVar2 = (et) ((List) entry.getValue()).get(0);
            us.a a3 = us.a();
            a3.f(xs.DEFAULT);
            a3.g(this.f.a());
            a3.h(this.e.a());
            ss.a a4 = ss.a();
            a4.c(ss.b.ANDROID_FIREBASE);
            ds.a a5 = ds.a();
            a5.m(Integer.valueOf(etVar2.g("sdk-version")));
            a5.j(etVar2.b("model"));
            a5.f(etVar2.b("hardware"));
            a5.d(etVar2.b("device"));
            a5.l(etVar2.b("product"));
            a5.k(etVar2.b("os-uild"));
            a5.h(etVar2.b("manufacturer"));
            a5.e(etVar2.b("fingerprint"));
            a5.c(etVar2.b("country"));
            a5.g(etVar2.b("locale"));
            a5.i(etVar2.b("mcc_mnc"));
            a5.b(etVar2.b("application_build"));
            a4.b(a5.a());
            a3.b(a4.a());
            try {
                a3.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                a3.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (et etVar3 : (List) entry.getValue()) {
                dt e2 = etVar3.e();
                wr b2 = e2.b();
                if (b2.equals(wr.b("proto"))) {
                    aVar = ts.i(e2.a());
                } else if (b2.equals(wr.b("json"))) {
                    aVar = ts.h(new String(e2.a(), Charset.forName(HTTP.UTF_8)));
                } else {
                    st.f("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", b2);
                }
                aVar.c(etVar3.f());
                aVar.d(etVar3.k());
                aVar.f(etVar3.h("tz-offset"));
                ws.a a6 = ws.a();
                a6.c(ws.c.a(etVar3.g("net-type")));
                a6.b(ws.b.a(etVar3.g("mobile-subtype")));
                aVar.e(a6.a());
                if (etVar3.d() != null) {
                    aVar.b(etVar3.d());
                }
                arrayList3.add(aVar.a());
            }
            a3.c(arrayList3);
            arrayList2.add(a3.a());
        }
        rs a7 = rs.a(arrayList2);
        String str = null;
        URL url = this.d;
        if (fVar.c() != null) {
            try {
                a a8 = a.a(fVar.c());
                if (a8.b() != null) {
                    str = a8.b();
                }
                if (a8.c() != null) {
                    url = d(a8.c());
                }
            } catch (IllegalArgumentException unused2) {
                return g.a();
            }
        }
        int i = 5;
        try {
            Object aVar2 = new a(url, a7, str);
            tt b3 = b.b(this);
            ut a9 = c.a();
            do {
                a2 = ((b) b3).a(aVar2);
                aVar2 = ((c) a9).b(aVar2, a2);
                if (aVar2 == null) {
                    break;
                }
                i--;
            } while (i >= 1);
            b bVar = (b) a2;
            int i2 = bVar.a;
            if (i2 == 200) {
                return g.d(bVar.c);
            }
            if (i2 < 500) {
                if (i2 != 404) {
                    return g.a();
                }
            }
            return g.e();
        } catch (IOException e3) {
            st.c("CctTransportBackend", "Could not make request to the backend", e3);
            return g.e();
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.m
    public et b(et etVar) {
        int i;
        int i2;
        NetworkInfo activeNetworkInfo = this.b.getActiveNetworkInfo();
        et.a l = etVar.l();
        l.a("sdk-version", Build.VERSION.SDK_INT);
        l.c("model", Build.MODEL);
        l.c("hardware", Build.HARDWARE);
        l.c("device", Build.DEVICE);
        l.c("product", Build.PRODUCT);
        l.c("os-uild", Build.ID);
        l.c("manufacturer", Build.MANUFACTURER);
        l.c("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        l.b("tz-offset", (long) (TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / AdError.NETWORK_ERROR_CODE));
        if (activeNetworkInfo == null) {
            i = ws.c.NONE.b();
        } else {
            i = activeNetworkInfo.getType();
        }
        l.a("net-type", i);
        int i3 = -1;
        if (activeNetworkInfo == null) {
            i2 = ws.b.UNKNOWN_MOBILE_SUBTYPE.b();
        } else {
            i2 = activeNetworkInfo.getSubtype();
            if (i2 == -1) {
                i2 = ws.b.COMBINED.b();
            } else if (ws.b.a(i2) == null) {
                i2 = 0;
            }
        }
        l.a("mobile-subtype", i2);
        l.c("country", Locale.getDefault().getCountry());
        l.c("locale", Locale.getDefault().getLanguage());
        l.c("mcc_mnc", ((TelephonyManager) this.c.getSystemService("phone")).getSimOperator());
        Context context = this.c;
        try {
            i3 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            st.c("CctTransportBackend", "Unable to find version code for package", e2);
        }
        l.c("application_build", Integer.toString(i3));
        return l.d();
    }
}
