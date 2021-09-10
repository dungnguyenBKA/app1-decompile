package defpackage;

import android.os.Handler;
import android.webkit.WebView;
import com.vungle.warren.AdLoader;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* renamed from: ma0  reason: default package */
public class ma0 extends ka0 {
    private WebView d;
    private Long e = null;
    private Map<String, t90> f;
    private final String g;

    /* renamed from: ma0$a */
    class a implements Runnable {
        private WebView b;

        a() {
            this.b = ma0.this.d;
        }

        public void run() {
            this.b.destroy();
        }
    }

    public ma0(Map<String, t90> map, String str) {
        this.f = map;
        this.g = str;
    }

    @Override // defpackage.ka0
    public void a() {
        WebView webView = new WebView(y90.a().c());
        this.d = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        b(this.d);
        aa0.a().g(this.d, this.g);
        Iterator<String> it = this.f.keySet().iterator();
        if (!it.hasNext()) {
            this.e = Long.valueOf(System.nanoTime());
            return;
        }
        Objects.requireNonNull(this.f.get(it.next()));
        throw null;
    }

    @Override // defpackage.ka0
    public void c(u90 u90, n90 n90) {
        JSONObject jSONObject = new JSONObject();
        Map<String, t90> e2 = n90.e();
        for (String str : e2.keySet()) {
            ha0.e(jSONObject, str, e2.get(str));
        }
        d(u90, n90, jSONObject);
    }

    @Override // defpackage.ka0
    public void g() {
        long j;
        super.g();
        if (this.e == null) {
            j = 4000;
        } else {
            j = TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.e.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new a(), Math.max(4000 - j, (long) AdLoader.RETRY_DELAY));
        this.d = null;
    }
}
