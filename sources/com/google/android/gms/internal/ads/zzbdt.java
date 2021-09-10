package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzr;

@TargetApi(11)
public final class zzbdt extends WebChromeClient {
    private final zzbeb zzdjd;

    public zzbdt(zzbeb zzbeb) {
        this.zzdjd = zzbeb;
    }

    private final boolean zza(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        zza zzado;
        try {
            zzbeb zzbeb = this.zzdjd;
            if (zzbeb == null || zzbeb.zzacx() == null || this.zzdjd.zzacx().zzado() == null || (zzado = this.zzdjd.zzacx().zzado()) == null || zzado.zzjy()) {
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setTitle(str2);
                if (z) {
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(1);
                    TextView textView = new TextView(context);
                    textView.setText(str3);
                    EditText editText = new EditText(context);
                    editText.setText(str4);
                    linearLayout.addView(textView);
                    linearLayout.addView(editText);
                    builder.setView(linearLayout).setPositiveButton(17039370, new zzbdz(jsPromptResult, editText)).setNegativeButton(17039360, new zzbea(jsPromptResult)).setOnCancelListener(new zzbdx(jsPromptResult)).create().show();
                } else {
                    builder.setMessage(str3).setPositiveButton(17039370, new zzbdy(jsResult)).setNegativeButton(17039360, new zzbdv(jsResult)).setOnCancelListener(new zzbdw(jsResult)).create().show();
                }
                return true;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(str3).length());
            sb.append("window.");
            sb.append(str);
            sb.append("('");
            sb.append(str3);
            sb.append("')");
            zzado.zzbk(sb.toString());
            return false;
        } catch (WindowManager.BadTokenException e) {
            zzazk.zzd("Fail to display Dialog.", e);
        }
    }

    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof zzbeb)) {
            zzazk.zzex("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        zzc zzact = ((zzbeb) webView).zzact();
        if (zzact == null) {
            zzazk.zzex("Tried to close an AdWebView not associated with an overlay.");
        } else {
            zzact.close();
        }
    }

    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String message = consoleMessage.message();
        String sourceId = consoleMessage.sourceId();
        int lineNumber = consoleMessage.lineNumber();
        StringBuilder p = ic.p(ic.m(sourceId, ic.m(message, 19)), "JS: ", message, " (", sourceId);
        p.append(":");
        p.append(lineNumber);
        p.append(")");
        String sb = p.toString();
        if (sb.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i = zzbec.zzeqs[consoleMessage.messageLevel().ordinal()];
        if (i == 1) {
            zzazk.zzev(sb);
        } else if (i == 2) {
            zzazk.zzex(sb);
        } else if (i == 3 || i == 4) {
            zzazk.zzew(sb);
        } else if (i != 5) {
            zzazk.zzew(sb);
        } else {
            zzazk.zzdy(sb);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.zzdjd.zzacy() != null) {
            webView2.setWebViewClient(this.zzdjd.zzacy());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j != 0) {
            if (j2 == 0) {
                j = Math.min(Math.min((long) PlaybackStateCompat.ACTION_PREPARE_FROM_URI, j4) + j, (long) PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
            } else if (j2 <= Math.min(PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED - j, j4)) {
                j += j2;
            }
            j2 = j;
        } else if (j2 > j4 || j2 > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            j2 = 0;
        }
        quotaUpdater.updateQuota(j2);
    }

    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        if (callback != null) {
            zzr.zzkr();
            if (!zzj.zzp(this.zzdjd.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                zzr.zzkr();
                if (!zzj.zzp(this.zzdjd.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = false;
                    callback.invoke(str, z, true);
                }
            }
            z = true;
            callback.invoke(str, z, true);
        }
    }

    public final void onHideCustomView() {
        zzc zzact = this.zzdjd.zzact();
        if (zzact == null) {
            zzazk.zzex("Could not get ad overlay when hiding custom view.");
        } else {
            zzact.zzvu();
        }
    }

    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), "alert", str, str2, null, jsResult, null, false);
    }

    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return zza(zza(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    public final void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        long j3 = j + PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }

    @Deprecated
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        zzc zzact = this.zzdjd.zzact();
        if (zzact == null) {
            zzazk.zzex("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        zzact.zza(view, customViewCallback);
        zzact.setRequestedOrientation(i);
    }

    private static Context zza(WebView webView) {
        if (!(webView instanceof zzbeb)) {
            return webView.getContext();
        }
        zzbeb zzbeb = (zzbeb) webView;
        Activity zzabe = zzbeb.zzabe();
        if (zzabe != null) {
            return zzabe;
        }
        return zzbeb.getContext();
    }
}
