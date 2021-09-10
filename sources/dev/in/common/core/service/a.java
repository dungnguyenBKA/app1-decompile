package dev.in.common.core.service;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.app.b;
import java.util.Objects;
import org.apache.http.cookie.ClientCookie;
import org.json.JSONObject;

class a implements Runnable {
    final /* synthetic */ Context b;
    final /* synthetic */ DownloadService c;

    a(DownloadService downloadService, Context context) {
        this.c = downloadService;
        this.b = context;
    }

    public void run() {
        try {
            if (b.c0(this.b)) {
                cc0.t(this.b).edit().putLong("last_post_time", System.currentTimeMillis()).apply();
                String b2 = new hc0(this.b).b();
                if (!b2.equals("")) {
                    if (!b2.equals("[]")) {
                        JSONObject jSONObject = new JSONObject(b2);
                        if (jSONObject.optInt(ClientCookie.VERSION_ATTR) < cc0.t(this.b).getInt(ClientCookie.VERSION_ATTR, 0)) {
                            this.c.b.sendEmptyMessage(0);
                            return;
                        }
                        Context context = this.b;
                        cc0.t(context).edit().putInt(ClientCookie.VERSION_ATTR, jSONObject.optInt(ClientCookie.VERSION_ATTR)).apply();
                        Context context2 = this.b;
                        cc0.t(context2).edit().putInt("update_interval", jSONObject.optInt("update_interval", 5)).apply();
                        Context context3 = this.b;
                        String optString = jSONObject.optString("textad", "");
                        if (!optString.equals("")) {
                            cc0.t(context3).edit().putString("textadCode", optString).apply();
                        }
                        Context context4 = this.b;
                        String optString2 = jSONObject.optString("update", "");
                        if (!optString2.equals("")) {
                            cc0.t(context4).edit().putString("updateinfoCode", optString2).apply();
                        }
                        cc0.z(this.b, jSONObject.optString("exitad", ""));
                        cc0.A(this.b, jSONObject.optString("self_ads", ""));
                        Context context5 = this.b;
                        cc0.t(context5).edit().putString("self_spread", jSONObject.optString("self_spread", "")).apply();
                        Context context6 = this.b;
                        cc0.t(context6).edit().putString("extends_data", jSONObject.optString("extends_data", "")).apply();
                        String o = cc0.o(this.b);
                        if (TextUtils.isEmpty(o) || ic0.c().d(o) <= 20.0f) {
                            this.c.b.sendEmptyMessage(0);
                            return;
                        }
                        DownloadService downloadService = this.c;
                        Context context7 = this.b;
                        Objects.requireNonNull(downloadService);
                        new Thread(new b(downloadService, context7)).start();
                        return;
                    }
                }
                this.c.b.sendEmptyMessage(0);
                return;
            }
            this.c.b.sendEmptyMessage(0);
        } catch (Exception e) {
            this.c.b.sendEmptyMessage(0);
            e.printStackTrace();
        } catch (Error e2) {
            this.c.b.sendEmptyMessage(0);
            e2.printStackTrace();
        }
    }
}
