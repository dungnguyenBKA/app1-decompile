package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzbz;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.k;
import com.google.android.gms.internal.ads.zztw;
import com.google.android.gms.internal.ads.zzug;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.protocol.HTTP;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzber extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzbeb {
    private int maxHeight = -1;
    private int maxWidth = -1;
    private String zzacy;
    private final zzazn zzbpn;
    private final WindowManager zzbre;
    private int zzbvt;
    private int zzdqi = -1;
    private int zzdqj = -1;
    private boolean zzdsx;
    private String zzdun = "";
    private Boolean zzecg;
    private zzaca zzemp;
    private final zztu zzeqv;
    private final zzbfr zzesl;
    private final zzei zzesm;
    private final zzacq zzesn;
    private final zzm zzeso;
    private final zzb zzesp;
    private final float zzesq;
    private zzdmw zzesr;
    private zzdnb zzess;
    private boolean zzest = false;
    private boolean zzesu = false;
    private zzbee zzesv;
    private zzc zzesw;
    private zv zzesx;
    private zzbft zzesy;
    private boolean zzesz;
    private boolean zzeta;
    private boolean zzetb;
    private int zzetc;
    private boolean zzetd = true;
    private boolean zzete = false;
    private zzbev zzetf;
    private boolean zzetg;
    private boolean zzeth;
    private zzaef zzeti;
    private zzaea zzetj;
    private zzsh zzetk;
    private int zzetl;
    private int zzetm;
    private zzaca zzetn;
    private zzaca zzeto;
    private zzacd zzetp;
    private WeakReference<View.OnClickListener> zzetq;
    private zzc zzetr;
    private boolean zzets;
    private zzbz zzett;
    private Map<String, zzbdd> zzetu;
    private final DisplayMetrics zzwz;

    private zzber(zzbfr zzbfr, zzbft zzbft, String str, boolean z, boolean z2, zzei zzei, zzacq zzacq, zzazn zzazn, zzacc zzacc, zzm zzm, zzb zzb, zztu zztu, zzdmw zzdmw, zzdnb zzdnb) {
        super(zzbfr);
        zzdnb zzdnb2;
        this.zzesl = zzbfr;
        this.zzesy = zzbft;
        this.zzacy = str;
        this.zzeta = z;
        this.zzetc = -1;
        this.zzesm = zzei;
        this.zzesn = zzacq;
        this.zzbpn = zzazn;
        this.zzeso = zzm;
        this.zzesp = zzb;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.zzbre = windowManager;
        zzr.zzkr();
        DisplayMetrics zza = zzj.zza(windowManager);
        this.zzwz = zza;
        this.zzesq = zza.density;
        this.zzeqv = zztu;
        this.zzesr = zzdmw;
        this.zzess = zzdnb;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzazk.zzc("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        settings.setUserAgentString(zzr.zzkr().zzq(zzbfr, zzazn.zzbrp));
        zzr.zzkt().zza(getContext(), settings);
        setDownloadListener(this);
        zzaee();
        addJavascriptInterface(new zzbez(this, new zzbfc(this)), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.zzett = new zzbz(this.zzesl.zzabe(), this, this, null);
        zzaei();
        zzacd zzacd = new zzacd(new zzacc(true, "make_wv", this.zzacy));
        this.zzetp = zzacd;
        zzacd.zzsp().zzc(zzacc);
        if (!(!((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() || (zzdnb2 = this.zzess) == null || zzdnb2.zzbvs == null)) {
            this.zzetp.zzsp().zzg("gqi", this.zzess.zzbvs);
        }
        zzaca zzb2 = zzabx.zzb(this.zzetp.zzsp());
        this.zzemp = zzb2;
        this.zzetp.zza("native:view_create", zzb2);
        this.zzeto = null;
        this.zzetn = null;
        zzr.zzkt().zzbe(zzbfr);
        zzr.zzkv().zzxp();
    }

    private final boolean zzaeb() {
        int i;
        int i2;
        boolean z = false;
        if (!this.zzesv.zzadp() && !this.zzesv.zzadq()) {
            return false;
        }
        zzwr.zzqn();
        DisplayMetrics displayMetrics = this.zzwz;
        int zzb = zzaza.zzb(displayMetrics, displayMetrics.widthPixels);
        zzwr.zzqn();
        DisplayMetrics displayMetrics2 = this.zzwz;
        int zzb2 = zzaza.zzb(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzabe = this.zzesl.zzabe();
        if (zzabe == null || zzabe.getWindow() == null) {
            i2 = zzb;
            i = zzb2;
        } else {
            zzr.zzkr();
            int[] zzf = zzj.zzf(zzabe);
            zzwr.zzqn();
            int zzb3 = zzaza.zzb(this.zzwz, zzf[0]);
            zzwr.zzqn();
            i = zzaza.zzb(this.zzwz, zzf[1]);
            i2 = zzb3;
        }
        int i3 = this.zzdqi;
        if (i3 == zzb && this.zzdqj == zzb2 && this.maxWidth == i2 && this.maxHeight == i) {
            return false;
        }
        if (!(i3 == zzb && this.zzdqj == zzb2)) {
            z = true;
        }
        this.zzdqi = zzb;
        this.zzdqj = zzb2;
        this.maxWidth = i2;
        this.maxHeight = i;
        new zzaqq(this).zza(zzb, zzb2, i2, i, this.zzwz.density, this.zzbre.getDefaultDisplay().getRotation());
        return z;
    }

    private final synchronized void zzaec() {
        Boolean zzxn = zzr.zzkv().zzxn();
        this.zzecg = zzxn;
        if (zzxn == null) {
            try {
                evaluateJavascript("(function(){})()", null);
                zza(Boolean.TRUE);
            } catch (IllegalStateException unused) {
                zza(Boolean.FALSE);
            }
        }
    }

    private final void zzaed() {
        zzabx.zza(this.zzetp.zzsp(), this.zzemp, "aeh2");
    }

    private final synchronized void zzaee() {
        if (!this.zzeta) {
            if (!this.zzesy.zzaeo()) {
                zzazk.zzdy("Enabling hardware acceleration on an AdView.");
                zzaeg();
                return;
            }
        }
        zzazk.zzdy("Enabling hardware acceleration on an overlay.");
        zzaeg();
    }

    private final synchronized void zzaef() {
        if (!this.zzetb) {
            setLayerType(1, null);
        }
        this.zzetb = true;
    }

    private final synchronized void zzaeg() {
        if (this.zzetb) {
            setLayerType(0, null);
        }
        this.zzetb = false;
    }

    private final synchronized void zzaeh() {
        Map<String, zzbdd> map = this.zzetu;
        if (map != null) {
            for (zzbdd zzbdd : map.values()) {
                zzbdd.release();
            }
        }
        this.zzetu = null;
    }

    private final void zzaei() {
        zzacc zzsp;
        zzacd zzacd = this.zzetp;
        if (zzacd != null && (zzsp = zzacd.zzsp()) != null && zzr.zzkv().zzxm() != null) {
            zzr.zzkv().zzxm().zza(zzsp);
        }
    }

    private final void zzbe(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        zza("onAdVisibilityChanged", hashMap);
    }

    static zzber zzc(Context context, zzbft zzbft, String str, boolean z, boolean z2, zzei zzei, zzacq zzacq, zzazn zzazn, zzacc zzacc, zzm zzm, zzb zzb, zztu zztu, zzdmw zzdmw, zzdnb zzdnb) {
        return new zzber(new zzbfr(context), zzbft, str, z, z2, zzei, zzacq, zzazn, zzacc, zzm, zzb, zztu, zzdmw, zzdnb);
    }

    private final synchronized void zzfk(String str) {
        if (!isDestroyed()) {
            loadUrl(str);
        } else {
            zzazk.zzex("#004 The webview is destroyed. Ignoring action.");
        }
    }

    private final synchronized void zzfl(String str) {
        try {
            super.loadUrl(str);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError | UnsatisfiedLinkError e) {
            zzr.zzkv().zza(e, "AdWebViewImpl.loadUrlUnsafe");
            zzazk.zzd("Could not call loadUrl. ", e);
        }
    }

    private final void zzfm(String str) {
        if (zzxn() == null) {
            zzaec();
        }
        if (zzxn().booleanValue()) {
            zza(str, (ValueCallback<String>) null);
            return;
        }
        String valueOf = String.valueOf(str);
        zzfk(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
    }

    private final synchronized Boolean zzxn() {
        return this.zzecg;
    }

    private final synchronized void zzxq() {
        if (!this.zzets) {
            this.zzets = true;
            zzr.zzkv().zzxq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void destroy() {
        zzaei();
        this.zzett.zzzt();
        zzc zzc = this.zzesw;
        if (zzc != null) {
            zzc.close();
            this.zzesw.onDestroy();
            this.zzesw = null;
        }
        this.zzesx = null;
        this.zzesv.reset();
        if (!this.zzesz) {
            zzr.zzln();
            zzbde.zzc(this);
            zzaeh();
            this.zzesz = true;
            zzd.zzeb("Initiating WebView self destruct sequence in 3...");
            zzd.zzeb("Loading blank page in WebView, 2...");
            zzfl("about:blank");
        }
    }

    @Override // android.webkit.WebView
    public final synchronized void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (isDestroyed()) {
            zzazk.zzez("#004 The webview is destroyed. Ignoring action.");
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
            return;
        }
        super.evaluateJavascript(str, valueCallback);
    }

    @Override // java.lang.Object
    public final void finalize() {
        try {
            synchronized (this) {
                if (!this.zzesz) {
                    this.zzesv.reset();
                    zzr.zzln();
                    zzbde.zzc(this);
                    zzaeh();
                    zzxq();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final synchronized String getRequestId() {
        return this.zzdun;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbfo
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized boolean isDestroyed() {
        return this.zzesz;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void loadData(String str, String str2, String str3) {
        if (!isDestroyed()) {
            super.loadData(str, str2, str3);
        } else {
            zzazk.zzex("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!isDestroyed()) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            zzazk.zzex("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void loadUrl(String str) {
        if (!isDestroyed()) {
            try {
                super.loadUrl(str);
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
                zzr.zzkv().zza(e, "AdWebViewImpl.loadUrl");
                zzazk.zzd("Could not call loadUrl. ", e);
            }
        } else {
            zzazk.zzex("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        zzbee zzbee = this.zzesv;
        if (zzbee != null) {
            zzbee.onAdClicked();
        }
    }

    public final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isDestroyed()) {
            this.zzett.onAttachedToWindow();
        }
        boolean z = this.zzetg;
        zzbee zzbee = this.zzesv;
        if (zzbee != null && zzbee.zzadq()) {
            if (!this.zzeth) {
                this.zzesv.zzads();
                this.zzesv.zzadt();
                this.zzeth = true;
            }
            zzaeb();
            z = true;
        }
        zzbe(z);
    }

    public final void onDetachedFromWindow() {
        zzbee zzbee;
        synchronized (this) {
            if (!isDestroyed()) {
                this.zzett.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.zzeth && (zzbee = this.zzesv) != null && zzbee.zzadq() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzesv.zzads();
                this.zzesv.zzadt();
                this.zzeth = false;
            }
        }
        zzbe(false);
    }

    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzr.zzkr();
            zzj.zza(getContext(), intent);
        } catch (ActivityNotFoundException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + String.valueOf(str).length() + 51);
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzazk.zzdy(sb.toString());
        }
    }

    public final void onDraw(Canvas canvas) {
        if (!isDestroyed()) {
            if (Build.VERSION.SDK_INT != 21 || !canvas.isHardwareAccelerated() || isAttachedToWindow()) {
                super.onDraw(canvas);
            }
        }
    }

    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    public final void onGlobalLayout() {
        boolean zzaeb = zzaeb();
        zzc zzact = zzact();
        if (zzact != null && zzaeb) {
            zzact.zzwa();
        }
    }

    public final synchronized void onMeasure(int i, int i2) {
        int i3;
        if (isDestroyed()) {
            setMeasuredDimension(0, 0);
        } else if (isInEditMode() || this.zzeta || this.zzesy.zzaep()) {
            super.onMeasure(i, i2);
        } else if (this.zzesy.zzaer()) {
            super.onMeasure(i, i2);
        } else if (this.zzesy.zzaeq()) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcti)).booleanValue()) {
                super.onMeasure(i, i2);
                return;
            }
            zzbev zzabc = zzabc();
            float aspectRatio = zzabc != null ? zzabc.getAspectRatio() : 0.0f;
            if (aspectRatio == 0.0f) {
                super.onMeasure(i, i2);
                return;
            }
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int i4 = (int) (((float) size2) * aspectRatio);
            int i5 = (int) (((float) size) / aspectRatio);
            if (size2 == 0 && i5 != 0) {
                i4 = (int) (((float) i5) * aspectRatio);
                size2 = i5;
            } else if (size == 0 && i4 != 0) {
                i5 = (int) (((float) i4) / aspectRatio);
                size = i4;
            }
            setMeasuredDimension(Math.min(i4, size), Math.min(i5, size2));
        } else if (this.zzesy.isFluid()) {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzctl)).booleanValue()) {
                zza("/contentHeight", new zzbet(this));
                zzfm("(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();");
                float f = this.zzwz.density;
                int size3 = View.MeasureSpec.getSize(i);
                int i6 = this.zzetm;
                if (i6 != -1) {
                    i3 = (int) (((float) i6) * f);
                } else {
                    i3 = View.MeasureSpec.getSize(i2);
                }
                setMeasuredDimension(size3, i3);
                return;
            }
            super.onMeasure(i, i2);
        } else if (this.zzesy.zzaeo()) {
            DisplayMetrics displayMetrics = this.zzwz;
            setMeasuredDimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
        } else {
            int mode = View.MeasureSpec.getMode(i);
            int size4 = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size5 = View.MeasureSpec.getSize(i2);
            int i7 = Integer.MAX_VALUE;
            int i8 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size4 : Integer.MAX_VALUE;
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i7 = size5;
            }
            zzbft zzbft = this.zzesy;
            boolean z = zzbft.widthPixels > i8 || zzbft.heightPixels > i7;
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwg)).booleanValue()) {
                zzbft zzbft2 = this.zzesy;
                float f2 = this.zzesq;
                boolean z2 = ((float) zzbft2.widthPixels) / f2 <= ((float) i8) / f2 && ((float) zzbft2.heightPixels) / f2 <= ((float) i7) / f2;
                if (z) {
                    z = z2;
                }
            }
            if (z) {
                zzbft zzbft3 = this.zzesy;
                float f3 = this.zzesq;
                StringBuilder sb = new StringBuilder((int) FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT);
                sb.append("Not enough space to show ad. Needs ");
                sb.append((int) (((float) zzbft3.widthPixels) / f3));
                sb.append("x");
                sb.append((int) (((float) zzbft3.heightPixels) / f3));
                sb.append(" dp, but only has ");
                sb.append((int) (((float) size4) / f3));
                sb.append("x");
                sb.append((int) (((float) size5) / f3));
                sb.append(" dp.");
                zzazk.zzex(sb.toString());
                if (getVisibility() != 8) {
                    setVisibility(4);
                }
                setMeasuredDimension(0, 0);
                if (!this.zzest) {
                    this.zzeqv.zza(zztw.zza.EnumC0068zza.BANNER_SIZE_INVALID);
                    this.zzest = true;
                }
            } else {
                if (getVisibility() != 8) {
                    setVisibility(0);
                }
                if (!this.zzesu) {
                    this.zzeqv.zza(zztw.zza.EnumC0068zza.BANNER_SIZE_VALID);
                    this.zzesu = true;
                }
                zzbft zzbft4 = this.zzesy;
                setMeasuredDimension(zzbft4.widthPixels, zzbft4.heightPixels);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void onPause() {
        if (!isDestroyed()) {
            try {
                super.onPause();
            } catch (Exception e) {
                zzazk.zzc("Could not pause webview.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void onResume() {
        if (!isDestroyed()) {
            try {
                super.onResume();
            } catch (Exception e) {
                zzazk.zzc("Could not resume webview.", e);
            }
        }
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.zzesv.zzadq() || this.zzesv.zzadr()) {
            zzei zzei = this.zzesm;
            if (zzei != null) {
                zzei.zza(motionEvent);
            }
            zzacq zzacq = this.zzesn;
            if (zzacq != null) {
                zzacq.zza(motionEvent);
            }
        } else {
            synchronized (this) {
                zzaef zzaef = this.zzeti;
                if (zzaef != null) {
                    zzaef.zzc(motionEvent);
                }
            }
        }
        if (isDestroyed()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzetq = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void setRequestedOrientation(int i) {
        this.zzetc = i;
        zzc zzc = this.zzesw;
        if (zzc != null) {
            zzc.setRequestedOrientation(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzbee) {
            this.zzesv = (zzbee) webViewClient;
        }
    }

    public final void stopLoading() {
        if (!isDestroyed()) {
            try {
                super.stopLoading();
            } catch (Exception e) {
                zzazk.zzc("Could not stop loading webview.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(String str, Map<String, ?> map) {
        try {
            zza(str, zzr.zzkr().zzj(map));
        } catch (JSONException unused) {
            zzazk.zzex("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final zzbbd zzabb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo
    public final synchronized zzbev zzabc() {
        return this.zzetf;
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final zzaca zzabd() {
        return this.zzemp;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo, com.google.android.gms.internal.ads.zzbfd
    public final Activity zzabe() {
        return this.zzesl.zzabe();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo
    public final zzb zzabf() {
        return this.zzesp;
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final synchronized String zzabg() {
        zzdnb zzdnb = this.zzess;
        if (zzdnb == null) {
            return null;
        }
        return zzdnb.zzbvs;
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final synchronized int zzabh() {
        return this.zzbvt;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo
    public final zzacd zzabi() {
        return this.zzetp;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo, com.google.android.gms.internal.ads.zzbfl
    public final zzazn zzabj() {
        return this.zzbpn;
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final int zzabk() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final int zzabl() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final synchronized void zzabm() {
        zzaea zzaea = this.zzetj;
        if (zzaea != null) {
            zzaea.zzth();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbdu
    public final zzdmw zzacp() {
        return this.zzesr;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzacq() {
        zzaed();
        HashMap hashMap = new HashMap(1);
        hashMap.put(ClientCookie.VERSION_ATTR, this.zzbpn.zzbrp);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzacr() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(zzr.zzkw().zzrb()));
        hashMap.put("app_volume", String.valueOf(zzr.zzkw().zzra()));
        hashMap.put("device_volume", String.valueOf(zzae.zzbg(getContext())));
        zza("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final Context zzacs() {
        return this.zzesl.zzacs();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized zzc zzact() {
        return this.zzesw;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized zzc zzacu() {
        return this.zzetr;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbfj
    public final synchronized zzbft zzacv() {
        return this.zzesy;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized String zzacw() {
        return this.zzacy;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final /* synthetic */ zzbfn zzacx() {
        return this.zzesv;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final WebViewClient zzacy() {
        return this.zzesv;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized boolean zzacz() {
        return this.zzdsx;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbfm
    public final zzei zzada() {
        return this.zzesm;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized zv zzadb() {
        return this.zzesx;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized boolean zzadc() {
        return this.zzeta;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zzadd() {
        zzd.zzeb("Destroying WebView!");
        zzxq();
        zzj.zzeen.post(new zzbew(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized boolean zzade() {
        return this.zzetd;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized boolean zzadf() {
        return this.zzetl > 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzadg() {
        this.zzett.zzzs();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzadh() {
        if (this.zzeto == null) {
            zzaca zzb = zzabx.zzb(this.zzetp.zzsp());
            this.zzeto = zzb;
            this.zzetp.zza("native:view_load", zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized zzaef zzadi() {
        return this.zzeti;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzadj() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzadk() {
        zzd.zzeb("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized zzsh zzadl() {
        return this.zzetk;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final boolean zzadm() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbfa
    public final zzdnb zzadn() {
        return this.zzess;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zzam(boolean z) {
        zzc zzc = this.zzesw;
        if (zzc != null) {
            zzc.zza(this.zzesv.zzadp(), z);
        } else {
            this.zzdsx = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zzaq(zv zvVar) {
        this.zzesx = zvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final void zzaw(boolean z) {
        this.zzesv.zzaw(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zzay(boolean z) {
        boolean z2 = z != this.zzeta;
        this.zzeta = z;
        zzaee();
        if (z2) {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcnt)).booleanValue() || !this.zzesy.zzaeo()) {
                new zzaqq(this).zzdu(z ? "expanded" : "default");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zzaz(boolean z) {
        this.zzetd = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zzb(String str, String str2, String str3) {
        if (!isDestroyed()) {
            super.loadDataWithBaseURL(str, zzbfk.zzf(str2, zzbfk.zzaek()), "text/html", HTTP.UTF_8, str3);
            return;
        }
        zzazk.zzex("#004 The webview is destroyed. Ignoring action.");
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zzba(boolean z) {
        zzc zzc;
        int i = this.zzetl + (z ? 1 : -1);
        this.zzetl = i;
        if (i <= 0 && (zzc = this.zzesw) != null) {
            zzc.zzwd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzbb(boolean z) {
        this.zzesv.zzbb(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzbv(Context context) {
        this.zzesl.setBaseContext(context);
        this.zzett.zzj(this.zzesl.zzabe());
    }

    @Override // com.google.android.gms.internal.ads.zzakw
    public final void zzcv(String str) {
        zzfm(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final synchronized void zzdp(int i) {
        this.zzbvt = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzdu(int i) {
        if (i == 0) {
            zzabx.zza(this.zzetp.zzsp(), this.zzemp, "aebb2");
        }
        zzaed();
        if (this.zzetp.zzsp() != null) {
            this.zzetp.zzsp().zzg("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put(ClientCookie.VERSION_ATTR, this.zzbpn.zzbrp);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final synchronized zzbdd zzfc(String str) {
        Map<String, zzbdd> map = this.zzetu;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final synchronized void zzkn() {
        this.zzete = true;
        zzm zzm = this.zzeso;
        if (zzm != null) {
            zzm.zzkn();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final synchronized void zzko() {
        this.zzete = false;
        zzm zzm = this.zzeso;
        if (zzm != null) {
            zzm.zzko();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzwb() {
        if (this.zzetn == null) {
            zzabx.zza(this.zzetp.zzsp(), this.zzemp, "aes2");
            zzaca zzb = zzabx.zzb(this.zzetp.zzsp());
            this.zzetn = zzb;
            this.zzetp.zza("native:view_show", zzb);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put(ClientCookie.VERSION_ATTR, this.zzbpn.zzbrp);
        zza("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final void zzwc() {
        zzc zzact = zzact();
        if (zzact != null) {
            zzact.zzwc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfh
    public final void zzc(boolean z, int i) {
        this.zzesv.zzc(z, i);
    }

    private final synchronized void zza(String str, ValueCallback<String> valueCallback) {
        if (!isDestroyed()) {
            evaluateJavascript(str, null);
        } else {
            zzazk.zzex("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakw
    public final void zzb(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(jSONObject2).length() + String.valueOf(str).length() + 3);
        sb.append(str);
        sb.append("(");
        sb.append(jSONObject2);
        sb.append(");");
        zzfm(sb.toString());
    }

    private final void zza(Boolean bool) {
        synchronized (this) {
            this.zzecg = bool;
        }
        zzr.zzkv().zza(bool);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zzb(zzc zzc) {
        this.zzetr = zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzb(String str, zzaif<? super zzbeb> zzaif) {
        zzbee zzbee = this.zzesv;
        if (zzbee != null) {
            zzbee.zzb(str, zzaif);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject2);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        zzazk.zzdy(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        zzfm(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final boolean zzb(boolean z, int i) {
        destroy();
        this.zzeqv.zza(new zzbeu(z, i));
        this.zzeqv.zza(zztw.zza.EnumC0068zza.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final void zza(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : "0");
        hashMap.put("duration", Long.toString(j));
        zza("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zza(zzc zzc) {
        this.zzesw = zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zza(zzbft zzbft) {
        this.zzesy = zzbft;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo
    public final synchronized void zza(String str, zzbdd zzbdd) {
        if (this.zzetu == null) {
            this.zzetu = new HashMap();
        }
        this.zzetu.put(str, zzbdd);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zza(zzaea zzaea) {
        this.zzetj = zzaea;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zza(zzsh zzsh) {
        this.zzetk = zzsh;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void zza(zzaef zzaef) {
        this.zzeti = zzaef;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb, com.google.android.gms.internal.ads.zzbbo
    public final synchronized void zza(zzbev zzbev) {
        if (this.zzetf != null) {
            zzazk.zzev("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.zzetf = zzbev;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfh
    public final void zza(com.google.android.gms.ads.internal.overlay.zzd zzd) {
        this.zzesv.zza(zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzbfh
    public final void zza(boolean z, int i, String str) {
        this.zzesv.zza(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfh
    public final void zza(boolean z, int i, String str, String str2) {
        this.zzesv.zza(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbfh
    public final void zza(zzbg zzbg, zzcqr zzcqr, zzckn zzckn, zzdrz zzdrz, String str, String str2, int i) {
        this.zzesv.zza(zzbg, zzcqr, zzckn, zzdrz, str, str2, i);
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zza(zzqx zzqx) {
        boolean z;
        synchronized (this) {
            z = zzqx.zzbrj;
            this.zzetg = z;
        }
        zzbe(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(String str, zzaif<? super zzbeb> zzaif) {
        zzbee zzbee = this.zzesv;
        if (zzbee != null) {
            zzbee.zza(str, zzaif);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(String str, k<zzaif<? super zzbeb>> kVar) {
        zzbee zzbee = this.zzesv;
        if (zzbee != null) {
            zzbee.zza(str, kVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(zzdmw zzdmw, zzdnb zzdnb) {
        this.zzesr = zzdmw;
        this.zzess = zzdnb;
    }

    static final /* synthetic */ void zza(boolean z, int i, zzug.zzi.zza zza) {
        zzug.zzae.zza zzpz = zzug.zzae.zzpz();
        if (zzpz.zzpy() != z) {
            zzpz.zzw(z);
        }
        zza.zzb((zzug.zzae) ((zzelb) zzpz.zzcu(i).zzbiw()));
    }
}
