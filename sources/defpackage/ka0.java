package defpackage;

import android.os.Build;
import android.webkit.WebView;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: ka0  reason: default package */
public abstract class ka0 {
    private ja0 a = new ja0(null);
    private a b = a.AD_STATE_IDLE;
    private long c = System.nanoTime();

    /* renamed from: ka0$a */
    enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public void a() {
    }

    /* access modifiers changed from: package-private */
    public void b(WebView webView) {
        this.a = new ja0(webView);
    }

    public void c(u90 u90, n90 n90) {
        d(u90, n90, null);
    }

    /* access modifiers changed from: protected */
    public void d(u90 u90, n90 n90, JSONObject jSONObject) {
        String h = u90.h();
        JSONObject jSONObject2 = new JSONObject();
        ha0.e(jSONObject2, "environment", "app");
        ha0.e(jSONObject2, "adSessionType", n90.b());
        JSONObject jSONObject3 = new JSONObject();
        ha0.e(jSONObject3, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        ha0.e(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        ha0.e(jSONObject3, "os", "Android");
        ha0.e(jSONObject2, "deviceInfo", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        ha0.e(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        ha0.e(jSONObject4, "partnerName", n90.g().b());
        ha0.e(jSONObject4, "partnerVersion", n90.g().c());
        ha0.e(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        ha0.e(jSONObject5, "libraryVersion", "1.3.11-Vungle");
        ha0.e(jSONObject5, "appId", y90.a().c().getApplicationContext().getPackageName());
        ha0.e(jSONObject2, "app", jSONObject5);
        if (n90.c() != null) {
            ha0.e(jSONObject2, "contentUrl", n90.c());
        }
        if (n90.d() != null) {
            ha0.e(jSONObject2, "customReferenceData", n90.d());
        }
        JSONObject jSONObject6 = new JSONObject();
        for (t90 t90 : n90.h()) {
            Objects.requireNonNull(t90);
            ha0.e(jSONObject6, null, null);
        }
        aa0.a().d(i(), h, jSONObject2, jSONObject6, jSONObject);
    }

    public void e(String str, long j) {
        if (j >= this.c) {
            this.b = a.AD_STATE_VISIBLE;
            aa0.a().h(i(), str);
        }
    }

    public void f(boolean z) {
        if (this.a.get() != null) {
            aa0.a().i(i(), z ? "foregrounded" : "backgrounded");
        }
    }

    public void g() {
        this.a.clear();
    }

    public void h(String str, long j) {
        a aVar;
        if (j >= this.c && this.b != (aVar = a.AD_STATE_NOTVISIBLE)) {
            this.b = aVar;
            aa0.a().h(i(), str);
        }
    }

    public WebView i() {
        return (WebView) this.a.get();
    }

    public void j() {
        this.c = System.nanoTime();
        this.b = a.AD_STATE_IDLE;
    }
}
