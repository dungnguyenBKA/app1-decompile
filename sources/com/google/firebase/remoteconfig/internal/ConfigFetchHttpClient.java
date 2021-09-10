package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.firebase.remoteconfig.g;
import com.google.firebase.remoteconfig.h;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

public class ConfigFetchHttpClient {
    private static final Pattern h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");
    private final Context a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final long f;
    private final long g;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j, long j2) {
        this.a = context;
        this.b = str;
        this.c = str2;
        Matcher matcher = h.matcher(str);
        this.d = matcher.matches() ? matcher.group(1) : null;
        this.e = str3;
        this.f = j;
        this.g = j2;
    }

    private JSONObject a(String str, String str2, Map<String, String> map) {
        String str3;
        long j;
        HashMap hashMap = new HashMap();
        if (str != null) {
            hashMap.put("appInstanceId", str);
            hashMap.put("appInstanceIdToken", str2);
            hashMap.put("appId", this.b);
            Locale locale = this.a.getResources().getConfiguration().locale;
            hashMap.put("countryCode", locale.getCountry());
            int i = Build.VERSION.SDK_INT;
            if (i >= 21) {
                str3 = locale.toLanguageTag();
            } else {
                str3 = locale.toString();
            }
            hashMap.put("languageCode", str3);
            hashMap.put("platformVersion", Integer.toString(i));
            hashMap.put("timeZone", TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0);
                if (packageInfo != null) {
                    hashMap.put("appVersion", packageInfo.versionName);
                    if (i >= 28) {
                        j = packageInfo.getLongVersionCode();
                    } else {
                        j = (long) packageInfo.versionCode;
                    }
                    hashMap.put("appBuild", Long.toString(j));
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            hashMap.put("packageName", this.a.getPackageName());
            hashMap.put("sdkVersion", "20.0.4");
            hashMap.put("analyticsUserProperties", new JSONObject(map));
            return new JSONObject(hashMap);
        }
        throw new g("Fetch failed: Firebase installation id is null.");
    }

    private JSONObject c(URLConnection uRLConnection) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnection.getInputStream(), "utf-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = bufferedReader.read();
            if (read == -1) {
                return new JSONObject(sb.toString());
            }
            sb.append((char) read);
        }
    }

    private void d(HttpURLConnection httpURLConnection, byte[] bArr) {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    /* access modifiers changed from: package-private */
    public HttpURLConnection b() {
        try {
            return (HttpURLConnection) new URL(String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", this.d, this.e)).openConnection();
        } catch (IOException e2) {
            throw new h(e2.getMessage());
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x00a4 A[LOOP:0: B:10:0x009e->B:12:0x00a4, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x00d6 A[Catch:{ IOException | JSONException -> 0x014f, all -> 0x014d }] */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0143  */
    @androidx.annotation.Keep
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.firebase.remoteconfig.internal.k.a fetch(java.net.HttpURLConnection r6, java.lang.String r7, java.lang.String r8, java.util.Map<java.lang.String, java.lang.String> r9, java.lang.String r10, java.util.Map<java.lang.String, java.lang.String> r11, java.util.Date r12) {
        /*
        // Method dump skipped, instructions count: 359
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient.fetch(java.net.HttpURLConnection, java.lang.String, java.lang.String, java.util.Map, java.lang.String, java.util.Map, java.util.Date):com.google.firebase.remoteconfig.internal.k$a");
    }
}
