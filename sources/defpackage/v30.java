package defpackage;

import android.text.TextUtils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.apache.http.HttpHeaders;
import org.json.JSONObject;

/* renamed from: v30  reason: default package */
public class v30 {
    private final String a;
    private final t20 b;
    private final az c;

    public v30(String str, t20 t20) {
        az f = az.f();
        if (str != null) {
            this.c = f;
            this.b = t20;
            this.a = str;
            return;
        }
        throw new IllegalArgumentException("url must not be null.");
    }

    private s20 a(s20 s20, u30 u30) {
        String str = u30.a;
        if (str != null) {
            s20.c("X-CRASHLYTICS-GOOGLE-APP-ID", str);
        }
        s20.c("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        s20.c("X-CRASHLYTICS-API-CLIENT-VERSION", "17.4.0");
        s20.c(HttpHeaders.ACCEPT, "application/json");
        String str2 = u30.b;
        if (str2 != null) {
            s20.c("X-CRASHLYTICS-DEVICE-MODEL", str2);
        }
        String str3 = u30.c;
        if (str3 != null) {
            s20.c("X-CRASHLYTICS-OS-BUILD-VERSION", str3);
        }
        String str4 = u30.d;
        if (str4 != null) {
            s20.c("X-CRASHLYTICS-OS-DISPLAY-VERSION", str4);
        }
        String c2 = ((t00) u30.e).c();
        if (c2 != null) {
            s20.c("X-CRASHLYTICS-INSTALLATION-ID", c2);
        }
        return s20;
    }

    private Map<String, String> b(u30 u30) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", u30.h);
        hashMap.put("display_version", u30.g);
        hashMap.put("source", Integer.toString(u30.i));
        String str = u30.f;
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    /* access modifiers changed from: package-private */
    public JSONObject c(u20 u20) {
        int b2 = u20.b();
        az azVar = this.c;
        azVar.h("Settings response code was: " + b2);
        if (b2 == 200 || b2 == 201 || b2 == 202 || b2 == 203) {
            String a2 = u20.a();
            try {
                return new JSONObject(a2);
            } catch (Exception e) {
                az azVar2 = this.c;
                StringBuilder q = ic.q("Failed to parse settings JSON from ");
                q.append(this.a);
                azVar2.j(q.toString(), e);
                az azVar3 = this.c;
                azVar3.i("Settings response " + a2);
                return null;
            }
        } else {
            az azVar4 = this.c;
            azVar4.d("Settings request failed; (status: " + b2 + ") from " + this.a);
            return null;
        }
    }

    public JSONObject d(u30 u30, boolean z) {
        if (z) {
            try {
                Map<String, String> b2 = b(u30);
                t20 t20 = this.b;
                String str = this.a;
                Objects.requireNonNull(t20);
                s20 s20 = new s20(str, b2);
                s20.c("User-Agent", "Crashlytics Android SDK/17.4.0");
                s20.c("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
                a(s20, u30);
                az azVar = this.c;
                azVar.b("Requesting settings from " + this.a);
                az azVar2 = this.c;
                azVar2.h("Settings query params were: " + b2);
                return c(s20.b());
            } catch (IOException e) {
                this.c.e("Settings request failed.", e);
                return null;
            }
        } else {
            throw new RuntimeException("An invalid data collection token was used.");
        }
    }
}
