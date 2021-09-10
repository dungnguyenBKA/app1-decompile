package com.camerasideas.collagemaker.activity;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.ads.consent.ConsentStatus;
import com.vungle.warren.model.ReportDBAdapter;
import org.json.JSONObject;
import photoeditor.cutout.backgrounderaser.R;

public class PolicyActivity extends BaseActivity {
    private static final String TAG = "PolicyActivity";
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
        this.progressBar = (ProgressBar) findViewById(R.id.n6);
        WebView webView2 = (WebView) findViewById(R.id.bf);
        this.webView = webView2;
        webView2.getSettings().setJavaScriptEnabled(true);
        this.webView.addJavascriptInterface(new c(this), "getPrivacyPolicy");
        this.webView.setWebViewClient(new a());
        this.webView.setWebChromeClient(new b());
        this.webView.loadUrl(str);
    }

    private /* synthetic */ void o(View view) {
        finish();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void updateStatus() {
        if (this.webView != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("email", "collageteam.feedback@gmail.com");
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
    @Override // androidx.appcompat.app.AppCompatActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void attachBaseContext(Context context) {
        super.attachBaseContext(xq.e(context));
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseActivity
    public String getTAG() {
        return getClass().getSimpleName();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.a2);
        if (Build.VERSION.SDK_INT > 21) {
            getWindow().setNavigationBarColor(-16777216);
        }
        String str = getIntent().getStringExtra(ReportDBAdapter.ReportColumns.COLUMN_URL) + "?pkg=" + getPackageName();
        try {
            findViewById(R.id.ie).setOnClickListener(new k0(this));
            ((TextView) findViewById(R.id.n1)).setText(uq.u(getString(R.string.he)));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        initView(str);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
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
    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onPause() {
        super.onPause();
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.onPause();
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onResume() {
        super.onResume();
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.onResume();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onStart() {
        super.onStart();
    }
}
