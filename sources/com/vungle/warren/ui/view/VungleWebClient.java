package com.vungle.warren.ui.view;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Placement;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.omsdk.WebViewObserver;
import com.vungle.warren.ui.view.WebViewAPI;
import org.apache.http.HttpHost;
import org.apache.http.cookie.ClientCookie;

public class VungleWebClient extends WebViewClient implements WebViewAPI {
    public static final String TAG = VungleWebClient.class.getSimpleName();
    private WebViewAPI.MRAIDDelegate MRAIDDelegate;
    private Advertisement advertisement;
    private boolean collectConsent;
    private WebViewAPI.WebClientErrorHandler errorHandler;
    private String gdprAccept;
    private String gdprBody;
    private String gdprDeny;
    private String gdprTitle;
    private Boolean isViewable;
    private WebView loadedWebView;
    private Placement placement;
    private boolean ready;
    private WebViewObserver webViewObserver;

    static class VungleWebViewRenderProcessClient extends WebViewRenderProcessClient {
        WebViewAPI.WebClientErrorHandler errorHandler;

        VungleWebViewRenderProcessClient(WebViewAPI.WebClientErrorHandler webClientErrorHandler) {
            this.errorHandler = webClientErrorHandler;
        }

        public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        }

        public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            String str = VungleWebClient.TAG;
            StringBuilder q = ic.q("onRenderProcessUnresponsive(Title = ");
            q.append(webView.getTitle());
            q.append(", URL = ");
            q.append(webView.getOriginalUrl());
            q.append(", (webViewRenderProcess != null) = ");
            q.append(webViewRenderProcess != null);
            Log.w(str, q.toString());
            WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.errorHandler;
            if (webClientErrorHandler != null) {
                webClientErrorHandler.onRenderProcessUnresponsive(webView, webViewRenderProcess);
            }
        }
    }

    public VungleWebClient(Advertisement advertisement2, Placement placement2) {
        this.advertisement = advertisement2;
        this.placement = placement2;
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void notifyPropertiesChange(boolean z) {
        if (this.loadedWebView != null) {
            s60 s60 = new s60();
            s60 s602 = new s60();
            s602.k("width", Integer.valueOf(this.loadedWebView.getWidth()));
            s602.k("height", Integer.valueOf(this.loadedWebView.getHeight()));
            s60 s603 = new s60();
            boolean z2 = false;
            s603.k("x", 0);
            s603.k("y", 0);
            s603.k("width", Integer.valueOf(this.loadedWebView.getWidth()));
            s603.k("height", Integer.valueOf(this.loadedWebView.getHeight()));
            s60 s604 = new s60();
            Boolean bool = Boolean.FALSE;
            s604.j("sms", bool);
            s604.j("tel", bool);
            s604.j("calendar", bool);
            s604.j("storePicture", bool);
            s604.j("inlineVideo", bool);
            s60.i("maxSize", s602);
            s60.i("screenSize", s602);
            s60.i("defaultPosition", s603);
            s60.i("currentPosition", s603);
            s60.i("supports", s604);
            s60.l("placementType", this.advertisement.getTemplateType());
            Boolean bool2 = this.isViewable;
            if (bool2 != null) {
                s60.j("isViewable", bool2);
            }
            s60.l("os", "android");
            s60.l("osVersion", Integer.toString(Build.VERSION.SDK_INT));
            s60.j("incentivized", Boolean.valueOf(this.placement.isIncentivized()));
            if (this.advertisement.getShowCloseDelay(this.placement.isIncentivized()) == 0) {
                z2 = true;
            }
            s60.j("enableBackImmediately", Boolean.valueOf(z2));
            s60.l(ClientCookie.VERSION_ATTR, "1.0");
            if (this.collectConsent) {
                s60.j("consentRequired", Boolean.TRUE);
                s60.l("consentTitleText", this.gdprTitle);
                s60.l("consentBodyText", this.gdprBody);
                s60.l("consentAcceptButtonText", this.gdprAccept);
                s60.l("consentDenyButtonText", this.gdprDeny);
            } else {
                s60.j("consentRequired", bool);
            }
            s60.l("sdkVersion", "6.9.1");
            String str = "loadJsjavascript:window.vungle.mraidBridge.notifyPropertiesChange(" + s60 + "," + z + ")";
            this.loadedWebView.loadUrl("javascript:window.vungle.mraidBridge.notifyPropertiesChange(" + s60 + "," + z + ")");
        }
    }

    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        int adType = this.advertisement.getAdType();
        if (adType == 0) {
            webView.loadUrl("javascript:function actionClicked(action){Android.performAction(action);};");
        } else if (adType == 1) {
            this.loadedWebView = webView;
            webView.setVisibility(0);
            notifyPropertiesChange(true);
        } else {
            throw new IllegalArgumentException("Unknown Client Type!");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            webView.setWebViewRenderProcessClient(new VungleWebViewRenderProcessClient(this.errorHandler));
        }
        WebViewObserver webViewObserver2 = this.webViewObserver;
        if (webViewObserver2 != null) {
            webViewObserver2.onPageFinished(webView);
        }
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (Build.VERSION.SDK_INT < 23) {
            String str3 = TAG;
            Log.e(str3, "Error desc " + str);
            Log.e(str3, "Error for URL " + str2);
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            String l = ic.l(sb, " ", str);
            WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.errorHandler;
            if (webClientErrorHandler != null) {
                webClientErrorHandler.onReceivedError(l);
            }
        }
    }

    @TargetApi(VungleException.DB_ERROR)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        String str = TAG;
        StringBuilder q = ic.q("onRenderProcessGone url: ");
        q.append(webView.getUrl());
        q.append(",  did crash: ");
        q.append(renderProcessGoneDetail.didCrash());
        Log.w(str, q.toString());
        this.loadedWebView = null;
        WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.errorHandler;
        if (webClientErrorHandler != null) {
            return webClientErrorHandler.onWebRenderingProcessGone(webView, renderProcessGoneDetail.didCrash());
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void setAdVisibility(boolean z) {
        this.isViewable = Boolean.valueOf(z);
        notifyPropertiesChange(false);
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void setConsentStatus(boolean z, String str, String str2, String str3, String str4) {
        this.collectConsent = z;
        this.gdprTitle = str;
        this.gdprBody = str2;
        this.gdprAccept = str3;
        this.gdprDeny = str4;
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void setErrorHandler(WebViewAPI.WebClientErrorHandler webClientErrorHandler) {
        this.errorHandler = webClientErrorHandler;
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void setMRAIDDelegate(WebViewAPI.MRAIDDelegate mRAIDDelegate) {
        this.MRAIDDelegate = mRAIDDelegate;
    }

    @Override // com.vungle.warren.ui.view.WebViewAPI
    public void setWebViewObserver(WebViewObserver webViewObserver2) {
        this.webViewObserver = webViewObserver2;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String str2 = TAG;
        if (TextUtils.isEmpty(str)) {
            Log.e(str2, "Invalid URL ");
            return false;
        }
        Uri parse = Uri.parse(str);
        if (parse.getScheme() != null) {
            String scheme = parse.getScheme();
            if (scheme.equals("mraid")) {
                String host = parse.getHost();
                if (host == null) {
                    return false;
                }
                if ("propertiesChangeCompleted".equals(host) && !this.ready) {
                    s60 createMRAIDArgs = this.advertisement.createMRAIDArgs();
                    webView.loadUrl("javascript:window.vungle.mraidBridge.notifyReadyEvent(" + createMRAIDArgs + ")");
                    this.ready = true;
                } else if (this.MRAIDDelegate != null) {
                    s60 s60 = new s60();
                    for (String str3 : parse.getQueryParameterNames()) {
                        s60.l(str3, parse.getQueryParameter(str3));
                    }
                    if (this.MRAIDDelegate.processCommand(host, s60)) {
                        webView.loadUrl("javascript:window.vungle.mraidBridge.notifyCommandComplete()");
                    }
                }
                return true;
            } else if (HttpHost.DEFAULT_SCHEME_NAME.equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                if (this.MRAIDDelegate != null) {
                    s60 s602 = new s60();
                    s602.l(ReportDBAdapter.ReportColumns.COLUMN_URL, str);
                    this.MRAIDDelegate.processCommand("openNonMraid", s602);
                }
                return true;
            }
        }
        return false;
    }

    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (Build.VERSION.SDK_INT >= 23) {
            String str = TAG;
            StringBuilder q = ic.q("Error desc ");
            q.append(webResourceError.getDescription().toString());
            Log.e(str, q.toString());
            Log.e(str, "Error for URL " + webResourceRequest.getUrl().toString());
            String str2 = webResourceRequest.getUrl().toString() + " " + webResourceError.getDescription().toString();
            WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.errorHandler;
            if (webClientErrorHandler != null) {
                webClientErrorHandler.onReceivedError(str2);
            }
        }
    }
}
