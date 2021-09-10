package dev.in.common.core.activity;

import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import com.google.ads.consent.ConsentStatus;
import com.vungle.warren.model.ReportDBAdapter;
import org.json.JSONObject;
import photoeditor.cutout.backgrounderaser.R;

public class PolicyActivity extends AppCompatActivity {
    private ActionBar action_bar = null;
    private String policy_email;
    private ProgressBar progressBar;
    private WebView webView;

    /* access modifiers changed from: package-private */
    public class a extends WebViewClient {
        a() {
        }

        public void onPageFinished(WebView webView, String str) {
            PolicyActivity.this.progressBar.setVisibility(8);
            super.onPageFinished(webView, str);
            PolicyActivity.this.updateStatus();
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            PolicyActivity.this.progressBar.setVisibility(0);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            webView.loadUrl(str);
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    /* access modifiers changed from: package-private */
    public class b extends WebChromeClient {
        b() {
        }

        public void onProgressChanged(WebView webView, int i) {
            if (i == 100) {
                PolicyActivity.this.progressBar.setVisibility(8);
                PolicyActivity.this.updateStatus();
                return;
            }
            PolicyActivity.this.progressBar.setVisibility(0);
            PolicyActivity.this.progressBar.setProgress(i);
        }
    }

    /* access modifiers changed from: package-private */
    public class c {
        c(PolicyActivity policyActivity) {
        }
    }

    private void initView(String str) {
        Log.e(ReportDBAdapter.ReportColumns.COLUMN_URL, str);
        this.progressBar = (ProgressBar) findViewById(R.id.n6);
        WebView webView2 = (WebView) findViewById(R.id.bf);
        this.webView = webView2;
        webView2.getSettings().setJavaScriptEnabled(true);
        this.webView.addJavascriptInterface(new c(this), "getPrivacyPolicy");
        this.webView.setWebViewClient(new a());
        this.webView.setWebChromeClient(new b());
        this.webView.loadUrl(str);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void updateStatus() {
        if (this.webView != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("email", this.policy_email);
                if (cc0.l(this) == ConsentStatus.NON_PERSONALIZED) {
                    jSONObject.put(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS, "disagree");
                } else {
                    jSONObject.put(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS, "agree");
                }
                WebView webView2 = this.webView;
                webView2.loadUrl("javascript:setStyle(" + jSONObject + ")");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            if (this.action_bar == null) {
                this.action_bar = getSupportActionBar();
            }
            this.action_bar.n(true);
            this.action_bar.l(new ColorDrawable(getIntent().getIntExtra("color", -16777216)));
            this.action_bar.q();
        } catch (Exception e) {
            e.printStackTrace();
        }
        setContentView(R.layout.af);
        this.policy_email = getIntent().getStringExtra("email");
        String str = getIntent().getStringExtra(ReportDBAdapter.ReportColumns.COLUMN_URL) + "&pkg=" + getPackageName();
        try {
            setTitle(getIntent().getStringExtra("title"));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        initView(str);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity
    public void onDestroy() {
        try {
            WebView webView2 = this.webView;
            if (webView2 != null) {
                webView2.removeAllViews();
                this.webView.setTag(null);
                this.webView.clearCache(true);
                this.webView.clearHistory();
                this.webView.destroy();
                this.webView = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onPause() {
        super.onPause();
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.onPause();
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onResume() {
        super.onResume();
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.onResume();
        }
    }
}
