package com.google.ads.consent;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.vungle.warren.error.VungleException;
import java.io.ByteArrayOutputStream;
import java.net.URL;
import java.util.HashMap;

public class ConsentForm {
    private final boolean adFreeOption;
    private final URL appPrivacyPolicyURL;
    private final Context context;
    private final Dialog dialog;
    private final ConsentFormListener listener;
    private LoadState loadState;
    private final boolean nonPersonalizedAdsOption;
    private final boolean personalizedAdsOption;
    private final WebView webView;

    public static class Builder {
        private boolean adFreeOption = false;
        private final URL appPrivacyPolicyURL;
        private final Context context;
        private ConsentFormListener listener;
        private boolean nonPersonalizedAdsOption = false;
        private boolean personalizedAdsOption = false;

        public Builder(Context context2, URL url) {
            this.context = context2;
            this.appPrivacyPolicyURL = url;
            if (url == null) {
                throw new IllegalArgumentException("Must provide valid app privacy policy url to create a ConsentForm");
            }
        }

        public ConsentForm build() {
            return new ConsentForm(this);
        }

        public Builder withAdFreeOption() {
            this.adFreeOption = true;
            return this;
        }

        public Builder withListener(ConsentFormListener consentFormListener) {
            this.listener = consentFormListener;
            return this;
        }

        public Builder withNonPersonalizedAdsOption() {
            this.nonPersonalizedAdsOption = true;
            return this;
        }

        public Builder withPersonalizedAdsOption() {
            this.personalizedAdsOption = true;
            return this;
        }
    }

    /* access modifiers changed from: private */
    public enum LoadState {
        NOT_READY,
        LOADING,
        LOADED
    }

    private static String createJavascriptCommand(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("info", str2);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("args", hashMap);
        return String.format("javascript:%s(%s)", str, new j60().h(hashMap2));
    }

    private static String getAppIconURIString(Context context2) {
        Drawable applicationIcon = context2.getPackageManager().getApplicationIcon(context2.getApplicationInfo());
        Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        applicationIcon.draw(canvas);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        String valueOf = String.valueOf(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0));
        return valueOf.length() != 0 ? "data:image/png;base64,".concat(valueOf) : new String("data:image/png;base64,");
    }

    private static String getApplicationName(Context context2) {
        return context2.getApplicationInfo().loadLabel(context2.getPackageManager()).toString();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void handleDismiss(String str) {
        ConsentStatus consentStatus;
        this.loadState = LoadState.NOT_READY;
        this.dialog.dismiss();
        if (TextUtils.isEmpty(str)) {
            this.listener.onConsentFormError("No information provided.");
        } else if (str.contains("Error")) {
            this.listener.onConsentFormError(str);
        } else {
            char c = 65535;
            boolean z = true;
            switch (str.hashCode()) {
                case -1152655096:
                    if (str.equals("ad_free")) {
                        c = 0;
                        break;
                    }
                    break;
                case -258041904:
                    if (str.equals("personalized")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1666911234:
                    if (str.equals("non_personalized")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    consentStatus = ConsentStatus.UNKNOWN;
                    break;
                case 1:
                    consentStatus = ConsentStatus.PERSONALIZED;
                    z = false;
                    break;
                case 2:
                    consentStatus = ConsentStatus.NON_PERSONALIZED;
                    z = false;
                    break;
                default:
                    consentStatus = ConsentStatus.UNKNOWN;
                    z = false;
                    break;
            }
            ConsentInformation.getInstance(this.context).setConsentStatus(consentStatus, "form");
            this.listener.onConsentFormClosed(consentStatus, Boolean.valueOf(z));
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void handleLoadComplete(String str) {
        if (TextUtils.isEmpty(str)) {
            this.loadState = LoadState.NOT_READY;
            this.listener.onConsentFormError("No information");
        } else if (str.contains("Error")) {
            this.loadState = LoadState.NOT_READY;
            this.listener.onConsentFormError(str);
        } else {
            this.loadState = LoadState.LOADED;
            this.listener.onConsentFormLoaded();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void handleOpenBrowser(String str) {
        if (TextUtils.isEmpty(str)) {
            this.listener.onConsentFormError("No valid URL for browser navigation.");
            return;
        }
        try {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (ActivityNotFoundException unused) {
            this.listener.onConsentFormError("No Activity found to handle browser intent.");
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void updateDialogContent(WebView webView2) {
        HashMap hashMap = new HashMap();
        hashMap.put("app_name", getApplicationName(this.context));
        hashMap.put("app_icon", getAppIconURIString(this.context));
        hashMap.put("offer_personalized", Boolean.valueOf(this.personalizedAdsOption));
        hashMap.put("offer_non_personalized", Boolean.valueOf(this.nonPersonalizedAdsOption));
        hashMap.put("offer_ad_free", Boolean.valueOf(this.adFreeOption));
        hashMap.put("is_request_in_eea_or_unknown", Boolean.valueOf(ConsentInformation.getInstance(this.context).isRequestLocationInEeaOrUnknown()));
        hashMap.put("app_privacy_url", this.appPrivacyPolicyURL);
        ConsentData loadConsentData = ConsentInformation.getInstance(this.context).loadConsentData();
        hashMap.put("plat", loadConsentData.getSDKPlatformString());
        hashMap.put("consent_info", loadConsentData);
        webView2.loadUrl(createJavascriptCommand("setUpConsentDialog", new j60().h(hashMap)));
    }

    public boolean isShowing() {
        return this.dialog.isShowing();
    }

    public void load() {
        LoadState loadState2 = this.loadState;
        LoadState loadState3 = LoadState.LOADING;
        if (loadState2 == loadState3) {
            this.listener.onConsentFormError("Cannot simultaneously load multiple consent forms.");
        } else if (loadState2 == LoadState.LOADED) {
            this.listener.onConsentFormLoaded();
        } else {
            this.loadState = loadState3;
            this.webView.loadUrl("file:///android_asset/consentform.html");
        }
    }

    public void show() {
        if (this.loadState != LoadState.LOADED) {
            this.listener.onConsentFormError("Consent form is not ready to be displayed.");
        } else if (ConsentInformation.getInstance(this.context).isTaggedForUnderAgeOfConsent()) {
            this.listener.onConsentFormError("Error: tagged for under age of consent");
        } else {
            this.dialog.getWindow().setLayout(-1, -1);
            this.dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            this.dialog.setOnShowListener(new DialogInterface.OnShowListener() {
                /* class com.google.ads.consent.ConsentForm.AnonymousClass3 */

                public void onShow(DialogInterface dialogInterface) {
                    ConsentForm.this.listener.onConsentFormOpened();
                }
            });
            this.dialog.show();
            if (!this.dialog.isShowing()) {
                this.listener.onConsentFormError("Consent form could not be displayed.");
            }
        }
    }

    private ConsentForm(Builder builder) {
        Context context2 = builder.context;
        this.context = context2;
        if (builder.listener == null) {
            this.listener = new ConsentFormListener(this) {
                /* class com.google.ads.consent.ConsentForm.AnonymousClass1 */
            };
        } else {
            this.listener = builder.listener;
        }
        this.personalizedAdsOption = builder.personalizedAdsOption;
        this.nonPersonalizedAdsOption = builder.nonPersonalizedAdsOption;
        this.adFreeOption = builder.adFreeOption;
        this.appPrivacyPolicyURL = builder.appPrivacyPolicyURL;
        Dialog dialog2 = new Dialog(context2, 16973840);
        this.dialog = dialog2;
        this.loadState = LoadState.NOT_READY;
        WebView webView2 = new WebView(context2);
        this.webView = webView2;
        webView2.setBackgroundColor(0);
        dialog2.setContentView(webView2);
        dialog2.setCancelable(false);
        webView2.getSettings().setJavaScriptEnabled(true);
        webView2.setWebViewClient(new WebViewClient() {
            /* class com.google.ads.consent.ConsentForm.AnonymousClass2 */
            boolean isInternalRedirect;

            /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARNING: Code restructure failed: missing block: B:10:0x003f, code lost:
                if (r1.equals("browser") == false) goto L_0x002c;
             */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            private void handleUrl(java.lang.String r7) {
                /*
                // Method dump skipped, instructions count: 124
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.ads.consent.ConsentForm.AnonymousClass2.handleUrl(java.lang.String):void");
            }

            private boolean isConsentFormUrl(String str) {
                return !TextUtils.isEmpty(str) && str.startsWith("consent://");
            }

            public void onLoadResource(WebView webView, String str) {
                handleUrl(str);
            }

            public void onPageFinished(WebView webView, String str) {
                if (!this.isInternalRedirect) {
                    ConsentForm.this.updateDialogContent(webView);
                }
                super.onPageFinished(webView, str);
            }

            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                ConsentForm.this.loadState = LoadState.NOT_READY;
                ConsentForm.this.listener.onConsentFormError(webResourceError.toString());
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                String uri = webResourceRequest.getUrl().toString();
                if (!isConsentFormUrl(uri)) {
                    return false;
                }
                handleUrl(uri);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!isConsentFormUrl(str)) {
                    return false;
                }
                handleUrl(str);
                return true;
            }
        });
    }
}
