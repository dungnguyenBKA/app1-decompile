package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdSize;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.k;
import com.google.android.gms.internal.ads.zztw;
import com.vungle.warren.error.VungleException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpHost;

@ParametersAreNonnullByDefault
public class zzbee extends WebViewClient implements zzbfn {
    private final Object lock;
    @GuardedBy("lock")
    private boolean zzbrq;
    private zzvc zzchd;
    private zzahi zzdgz;
    private zzahk zzdha;
    private zza zzdhw;
    private zzaqg zzdhx;
    private zzq zzdsv;
    private zzv zzdsz;
    private boolean zzdwz;
    protected zzbeb zzequ;
    private final zztu zzeqv;
    private final HashMap<String, List<zzaif<? super zzbeb>>> zzeqw;
    private zzbfq zzeqx;
    private zzbfp zzeqy;
    private zzbfs zzeqz;
    private boolean zzera;
    @GuardedBy("lock")
    private boolean zzerb;
    @GuardedBy("lock")
    private boolean zzerc;
    @GuardedBy("lock")
    private boolean zzerd;
    private final zzaqr zzere;
    protected zzawz zzerf;
    private boolean zzerg;
    private boolean zzerh;
    private int zzeri;
    private final HashSet<String> zzerj;
    private View.OnAttachStateChangeListener zzerk;

    public zzbee(zzbeb zzbeb, zztu zztu, boolean z) {
        this(zzbeb, zztu, z, new zzaqr(zzbeb, zzbeb.zzacs(), new zzaaw(zzbeb.getContext())), null);
    }

    private final void zzadu() {
        if (this.zzerk != null) {
            this.zzequ.getView().removeOnAttachStateChangeListener(this.zzerk);
        }
    }

    private final void zzadz() {
        if (this.zzeqx != null && ((this.zzerg && this.zzeri <= 0) || this.zzerh)) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() && this.zzequ.zzabi() != null) {
                zzabx.zza(this.zzequ.zzabi().zzsp(), this.zzequ.zzabd(), "awfllc");
            }
            this.zzeqx.zzal(!this.zzerh);
            this.zzeqx = null;
        }
        this.zzequ.zzadh();
    }

    private static WebResourceResponse zzaea() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcoy)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    private final WebResourceResponse zzd(String str, Map<String, String> map) {
        HttpURLConnection httpURLConnection;
        URL url = new URL(str);
        try {
            TrafficStats.setThreadStatsTag(264);
            int i = 0;
            while (true) {
                i++;
                if (i <= 20) {
                    URLConnection openConnection = url.openConnection();
                    openConnection.setConnectTimeout(10000);
                    openConnection.setReadTimeout(10000);
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        openConnection.addRequestProperty(entry.getKey(), entry.getValue());
                    }
                    if (openConnection instanceof HttpURLConnection) {
                        httpURLConnection = (HttpURLConnection) openConnection;
                        zzr.zzkr().zza(this.zzequ.getContext(), this.zzequ.zzabj().zzbrp, false, httpURLConnection, false, 60000);
                        zzaze zzaze = new zzaze();
                        zzaze.zza(httpURLConnection, (byte[]) null);
                        int responseCode = httpURLConnection.getResponseCode();
                        zzaze.zza(httpURLConnection, responseCode);
                        if (responseCode < 300 || responseCode >= 400) {
                            zzr.zzkr();
                            WebResourceResponse zzd = zzj.zzd(httpURLConnection);
                            TrafficStats.clearThreadStatsTag();
                        } else {
                            String headerField = httpURLConnection.getHeaderField(HttpHeaders.LOCATION);
                            if (headerField == null) {
                                throw new IOException("Missing Location header in redirect");
                            } else if (headerField.startsWith("tel:")) {
                                TrafficStats.clearThreadStatsTag();
                                return null;
                            } else {
                                URL url2 = new URL(url, headerField);
                                String protocol = url2.getProtocol();
                                if (protocol == null) {
                                    zzazk.zzex("Protocol is null");
                                    WebResourceResponse zzaea = zzaea();
                                    TrafficStats.clearThreadStatsTag();
                                    return zzaea;
                                } else if (protocol.equals(HttpHost.DEFAULT_SCHEME_NAME) || protocol.equals("https")) {
                                    zzazk.zzdy(headerField.length() != 0 ? "Redirecting to ".concat(headerField) : new String("Redirecting to "));
                                    httpURLConnection.disconnect();
                                    url = url2;
                                } else {
                                    zzazk.zzex(protocol.length() != 0 ? "Unsupported scheme: ".concat(protocol) : new String("Unsupported scheme: "));
                                    return zzaea();
                                }
                            }
                        }
                    } else {
                        throw new IOException("Invalid protocol.");
                    }
                } else {
                    TrafficStats.clearThreadStatsTag();
                    throw new IOException("Too many redirects (20)");
                }
            }
            zzr.zzkr();
            WebResourceResponse zzd2 = zzj.zzd(httpURLConnection);
            TrafficStats.clearThreadStatsTag();
            return zzd2;
        } finally {
            TrafficStats.clearThreadStatsTag();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public void onAdClicked() {
        zzvc zzvc = this.zzchd;
        if (zzvc != null) {
            zzvc.onAdClicked();
        }
    }

    public final void onLoadResource(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        zzd.zzeb(valueOf.length() != 0 ? "Loading resource: ".concat(valueOf) : new String("Loading resource: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzj(parse);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001d, code lost:
        if (r1 == null) goto L_0x0025;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001f, code lost:
        r1.zzul();
        r0.zzeqy = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0025, code lost:
        zzadz();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0028, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0018, code lost:
        r0.zzerg = true;
        r1 = r0.zzeqy;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onPageFinished(android.webkit.WebView r1, java.lang.String r2) {
        /*
            r0 = this;
            java.lang.Object r1 = r0.lock
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzbeb r2 = r0.zzequ     // Catch:{ all -> 0x0029 }
            boolean r2 = r2.isDestroyed()     // Catch:{ all -> 0x0029 }
            if (r2 == 0) goto L_0x0017
            java.lang.String r2 = "Blank page loaded, 1..."
            com.google.android.gms.ads.internal.util.zzd.zzeb(r2)     // Catch:{ all -> 0x0029 }
            com.google.android.gms.internal.ads.zzbeb r2 = r0.zzequ     // Catch:{ all -> 0x0029 }
            r2.zzadd()     // Catch:{ all -> 0x0029 }
            monitor-exit(r1)     // Catch:{ all -> 0x0029 }
            return
        L_0x0017:
            monitor-exit(r1)     // Catch:{ all -> 0x0029 }
            r1 = 1
            r0.zzerg = r1
            com.google.android.gms.internal.ads.zzbfp r1 = r0.zzeqy
            if (r1 == 0) goto L_0x0025
            r1.zzul()
            r1 = 0
            r0.zzeqy = r1
        L_0x0025:
            r0.zzadz()
            return
        L_0x0029:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbee.onPageFinished(android.webkit.WebView, java.lang.String):void");
    }

    @TargetApi(VungleException.DB_ERROR)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.zzequ.zzb(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    public final void reset() {
        zzawz zzawz = this.zzerf;
        if (zzawz != null) {
            zzawz.zzwy();
            this.zzerf = null;
        }
        zzadu();
        synchronized (this.lock) {
            this.zzeqw.clear();
            this.zzchd = null;
            this.zzdsv = null;
            this.zzeqx = null;
            this.zzeqy = null;
            this.zzdgz = null;
            this.zzdha = null;
            this.zzera = false;
            this.zzbrq = false;
            this.zzerb = false;
            this.zzerd = false;
            this.zzdsz = null;
            this.zzeqz = null;
            zzaqg zzaqg = this.zzdhx;
            if (zzaqg != null) {
                zzaqg.zzad(true);
                this.zzdhx = null;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzc(str, Collections.emptyMap());
    }

    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case AdSize.LARGE_AD_HEIGHT:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        zzd.zzeb(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri parse = Uri.parse(str);
        if (!"gmsg".equalsIgnoreCase(parse.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            if (this.zzera && webView == this.zzequ.getWebView()) {
                String scheme = parse.getScheme();
                if (HttpHost.DEFAULT_SCHEME_NAME.equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    zzvc zzvc = this.zzchd;
                    if (zzvc != null) {
                        zzvc.onAdClicked();
                        zzawz zzawz = this.zzerf;
                        if (zzawz != null) {
                            zzawz.zzdv(str);
                        }
                        this.zzchd = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (!this.zzequ.getWebView().willNotDraw()) {
                try {
                    zzei zzada = this.zzequ.zzada();
                    if (zzada != null && zzada.zzb(parse)) {
                        parse = zzada.zza(parse, this.zzequ.getContext(), this.zzequ.getView(), this.zzequ.zzabe());
                    }
                } catch (zzeh unused) {
                    String valueOf2 = String.valueOf(str);
                    zzazk.zzex(valueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf2) : new String("Unable to append parameter to URL: "));
                }
                zza zza = this.zzdhw;
                if (zza == null || zza.zzjy()) {
                    zza(new com.google.android.gms.ads.internal.overlay.zzd("android.intent.action.VIEW", parse.toString(), null, null, null, null, null, null));
                } else {
                    this.zzdhw.zzbk(str);
                }
            } else {
                String valueOf3 = String.valueOf(str);
                zzazk.zzex(valueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf3) : new String("AdWebView unable to handle URL: "));
            }
        } else {
            zzj(parse);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zza(int i, int i2, boolean z) {
        this.zzere.zzj(i, i2);
        zzaqg zzaqg = this.zzdhx;
        if (zzaqg != null) {
            zzaqg.zza(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zza zzado() {
        return this.zzdhw;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzadp() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzbrq;
        }
        return z;
    }

    public final boolean zzadq() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzerb;
        }
        return z;
    }

    public final boolean zzadr() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzerc;
        }
        return z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zzads() {
        synchronized (this.lock) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzadt() {
        synchronized (this.lock) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzadv() {
        zzawz zzawz = this.zzerf;
        if (zzawz != null) {
            WebView webView = this.zzequ.getWebView();
            int i = c3.g;
            if (webView.isAttachedToWindow()) {
                zza(webView, zzawz, 10);
                return;
            }
            zzadu();
            this.zzerk = new zzbei(this, zzawz);
            this.zzequ.getView().addOnAttachStateChangeListener(this.zzerk);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzadw() {
        synchronized (this.lock) {
            this.zzerd = true;
        }
        this.zzeri++;
        zzadz();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzadx() {
        this.zzeri--;
        zzadz();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzady() {
        zztu zztu = this.zzeqv;
        if (zztu != null) {
            zztu.zza(zztw.zza.EnumC0068zza.DELAY_PAGE_LOAD_CANCELLED_AD);
        }
        this.zzerh = true;
        zzadz();
        this.zzequ.destroy();
    }

    public final void zzaw(boolean z) {
        this.zzera = z;
    }

    public final void zzb(String str, zzaif<? super zzbeb> zzaif) {
        synchronized (this.lock) {
            List<zzaif<? super zzbeb>> list = this.zzeqw.get(str);
            if (list != null) {
                list.remove(zzaif);
            }
        }
    }

    public final void zzbb(boolean z) {
        this.zzdwz = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzbc(boolean z) {
        synchronized (this.lock) {
            this.zzerb = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzbd(boolean z) {
        synchronized (this.lock) {
            this.zzerc = z;
        }
    }

    public final void zzc(boolean z, int i) {
        zzvc zzvc = (!this.zzequ.zzadc() || this.zzequ.zzacv().zzaeo()) ? this.zzchd : null;
        zzq zzq = this.zzdsv;
        zzv zzv = this.zzdsz;
        zzbeb zzbeb = this.zzequ;
        zza(new AdOverlayInfoParcel(zzvc, zzq, zzv, zzbeb, z, i, zzbeb.zzabj()));
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzi(int i, int i2) {
        zzaqg zzaqg = this.zzdhx;
        if (zzaqg != null) {
            zzaqg.zzi(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzj(Uri uri) {
        String path = uri.getPath();
        List<zzaif<? super zzbeb>> list = this.zzeqw.get(path);
        if (path == null || list == null) {
            String valueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(valueOf.length() + 32);
            sb.append("No GMSG handler found for GMSG: ");
            sb.append(valueOf);
            zzd.zzeb(sb.toString());
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyx)).booleanValue() && zzr.zzkv().zzxm() != null) {
                zzazp.zzeic.execute(new zzbeg(path));
                return;
            }
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwr)).booleanValue() && this.zzerj.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcwt)).intValue()) {
                zzd.zzeb(path.length() != 0 ? "Parsing gmsg query params on BG thread: ".concat(path) : new String("Parsing gmsg query params on BG thread: "));
                zzdzk.zza(zzr.zzkr().zzh(uri), new zzbeh(this, list, path, uri), zzazp.zzeig);
                return;
            }
        }
        zzr.zzkr();
        zza(zzj.zzg(uri), list, path);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzvx() {
        synchronized (this.lock) {
            this.zzera = false;
            this.zzbrq = true;
            zzazp.zzeig.execute(new zzbed(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zza(zzvc zzvc, zzahi zzahi, zzq zzq, zzahk zzahk, zzv zzv, boolean z, zzaie zzaie, zza zza, zzaqt zzaqt, zzawz zzawz, zzcqr zzcqr, zzdss zzdss, zzckn zzckn, zzdrz zzdrz) {
        zza zza2 = zza == null ? new zza(this.zzequ.getContext(), zzawz, null) : zza;
        this.zzdhx = new zzaqg(this.zzequ, zzaqt);
        this.zzerf = zzawz;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcpj)).booleanValue()) {
            zza("/adMetadata", new zzahj(zzahi));
        }
        zza("/appEvent", new zzahl(zzahk));
        zza("/backButton", zzahm.zzdhl);
        zza("/refresh", zzahm.zzdhm);
        zza("/canOpenApp", zzahm.zzdhc);
        zza("/canOpenURLs", zzahm.zzdhb);
        zza("/canOpenIntents", zzahm.zzdhd);
        zza("/close", zzahm.zzdhf);
        zza("/customClose", zzahm.zzdhg);
        zza("/instrument", zzahm.zzdhp);
        zza("/delayPageLoaded", zzahm.zzdhr);
        zza("/delayPageClosed", zzahm.zzdhs);
        zza("/getLocationInfo", zzahm.zzdht);
        zza("/log", zzahm.zzdhi);
        zza("/mraid", new zzaig(zza2, this.zzdhx, zzaqt));
        zza("/mraidLoaded", this.zzere);
        zza("/open", new zzaij(zza2, this.zzdhx, zzcqr, zzckn, zzdrz));
        zza("/precache", new zzbdm());
        zza("/touch", zzahm.zzdhk);
        zza("/video", zzahm.zzdhn);
        zza("/videoMeta", zzahm.zzdho);
        if (zzcqr == null || zzdss == null) {
            zza("/click", zzahm.zzdhe);
            zza("/httpTrack", zzahm.zzdhh);
        } else {
            zza("/click", zzdnw.zza(zzcqr, zzdss));
            zza("/httpTrack", zzdnw.zzb(zzcqr, zzdss));
        }
        if (zzr.zzlp().zzy(this.zzequ.getContext())) {
            zza("/logScionEvent", new zzaih(this.zzequ.getContext()));
        }
        this.zzchd = zzvc;
        this.zzdsv = zzq;
        this.zzdgz = zzahi;
        this.zzdha = zzahk;
        this.zzdsz = zzv;
        this.zzdhw = zza2;
        this.zzera = z;
    }

    private zzbee(zzbeb zzbeb, zztu zztu, boolean z, zzaqr zzaqr, zzaqg zzaqg) {
        this.zzeqw = new HashMap<>();
        this.lock = new Object();
        this.zzera = false;
        this.zzeqv = zztu;
        this.zzequ = zzbeb;
        this.zzbrq = z;
        this.zzere = zzaqr;
        this.zzdhx = null;
        this.zzerj = new HashSet<>(Arrays.asList(((String) zzwr.zzqr().zzd(zzabp.zzcws)).split(",")));
    }

    /* access modifiers changed from: protected */
    public final WebResourceResponse zzc(String str, Map<String, String> map) {
        zztc zza;
        try {
            String zzc = zzaxu.zzc(str, this.zzequ.getContext(), this.zzdwz);
            if (!zzc.equals(str)) {
                return zzd(zzc, map);
            }
            zzth zzbs = zzth.zzbs(str);
            if (zzbs != null && (zza = zzr.zzkx().zza(zzbs)) != null && zza.zzmw()) {
                return new WebResourceResponse("", "", zza.zzmx());
            }
            if (!zzaze.isEnabled() || !zzadh.zzddv.get().booleanValue()) {
                return null;
            }
            return zzd(str, map);
        } catch (Exception | NoClassDefFoundError e) {
            zzr.zzkv().zza(e, "AdWebViewClient.interceptRequest");
            return zzaea();
        }
    }

    /* access modifiers changed from: private */
    public final void zza(View view, zzawz zzawz, int i) {
        if (zzawz.zzww() && i > 0) {
            zzawz.zzl(view);
            if (zzawz.zzww()) {
                zzj.zzeen.postDelayed(new zzbef(this, view, zzawz, i), 100);
            }
        }
    }

    public final void zza(com.google.android.gms.ads.internal.overlay.zzd zzd) {
        zzq zzq;
        boolean zzadc = this.zzequ.zzadc();
        zzvc zzvc = (!zzadc || this.zzequ.zzacv().zzaeo()) ? this.zzchd : null;
        if (zzadc) {
            zzq = null;
        } else {
            zzq = this.zzdsv;
        }
        zza(new AdOverlayInfoParcel(zzd, zzvc, zzq, this.zzdsz, this.zzequ.zzabj(), this.zzequ));
    }

    public final void zza(zzbg zzbg, zzcqr zzcqr, zzckn zzckn, zzdrz zzdrz, String str, String str2, int i) {
        zzbeb zzbeb = this.zzequ;
        zza(new AdOverlayInfoParcel(zzbeb, zzbeb.zzabj(), zzbg, zzcqr, zzckn, zzdrz, str, str2, i));
    }

    public final void zza(boolean z, int i, String str) {
        zzbek zzbek;
        boolean zzadc = this.zzequ.zzadc();
        zzvc zzvc = (!zzadc || this.zzequ.zzacv().zzaeo()) ? this.zzchd : null;
        if (zzadc) {
            zzbek = null;
        } else {
            zzbek = new zzbek(this.zzequ, this.zzdsv);
        }
        zzahi zzahi = this.zzdgz;
        zzahk zzahk = this.zzdha;
        zzv zzv = this.zzdsz;
        zzbeb zzbeb = this.zzequ;
        zza(new AdOverlayInfoParcel(zzvc, zzbek, zzahi, zzahk, zzv, zzbeb, z, i, str, zzbeb.zzabj()));
    }

    public final void zza(boolean z, int i, String str, String str2) {
        zzbek zzbek;
        boolean zzadc = this.zzequ.zzadc();
        zzvc zzvc = (!zzadc || this.zzequ.zzacv().zzaeo()) ? this.zzchd : null;
        if (zzadc) {
            zzbek = null;
        } else {
            zzbek = new zzbek(this.zzequ, this.zzdsv);
        }
        zzahi zzahi = this.zzdgz;
        zzahk zzahk = this.zzdha;
        zzv zzv = this.zzdsz;
        zzbeb zzbeb = this.zzequ;
        zza(new AdOverlayInfoParcel(zzvc, zzbek, zzahi, zzahk, zzv, zzbeb, z, i, str, str2, zzbeb.zzabj()));
    }

    private final void zza(AdOverlayInfoParcel adOverlayInfoParcel) {
        com.google.android.gms.ads.internal.overlay.zzd zzd;
        zzaqg zzaqg = this.zzdhx;
        boolean zzvp = zzaqg != null ? zzaqg.zzvp() : false;
        zzr.zzkq();
        zzm.zza(this.zzequ.getContext(), adOverlayInfoParcel, !zzvp);
        zzawz zzawz = this.zzerf;
        if (zzawz != null) {
            String str = adOverlayInfoParcel.url;
            if (str == null && (zzd = adOverlayInfoParcel.zzdsu) != null) {
                str = zzd.url;
            }
            zzawz.zzdv(str);
        }
    }

    public final void zza(String str, zzaif<? super zzbeb> zzaif) {
        synchronized (this.lock) {
            List<zzaif<? super zzbeb>> list = this.zzeqw.get(str);
            if (list == null) {
                list = new CopyOnWriteArrayList<>();
                this.zzeqw.put(str, list);
            }
            list.add(zzaif);
        }
    }

    public final void zza(String str, k<zzaif<? super zzbeb>> kVar) {
        synchronized (this.lock) {
            List<zzaif<? super zzbeb>> list = this.zzeqw.get(str);
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                for (zzaif<? super zzbeb> zzaif : list) {
                    if (kVar.apply(zzaif)) {
                        arrayList.add(zzaif);
                    }
                }
                list.removeAll(arrayList);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zza(zzbfq zzbfq) {
        this.zzeqx = zzbfq;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zza(zzbfp zzbfp) {
        this.zzeqy = zzbfp;
    }

    /* access modifiers changed from: private */
    public final void zza(Map<String, String> map, List<zzaif<? super zzbeb>> list, String str) {
        if (zzd.zzyg()) {
            String valueOf = String.valueOf(str);
            zzd.zzeb(valueOf.length() != 0 ? "Received GMSG: ".concat(valueOf) : new String("Received GMSG: "));
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + String.valueOf(str2).length() + 4);
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(str3);
                zzd.zzeb(sb.toString());
            }
        }
        for (zzaif<? super zzbeb> zzaif : list) {
            zzaif.zza(this.zzequ, map);
        }
    }
}
