package com.vungle.warren.ui.view;

import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class WebSettingsUtils {
    public static void applyDefault(WebView webView) {
        WebSettings settings = webView.getSettings();
        settings.setBuiltInZoomControls(false);
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSaveFormData(true);
        settings.setUseWideViewPort(false);
        settings.setAllowFileAccess(true);
        if (Build.VERSION.SDK_INT > 19) {
            webView.setVisibility(4);
        }
    }
}
