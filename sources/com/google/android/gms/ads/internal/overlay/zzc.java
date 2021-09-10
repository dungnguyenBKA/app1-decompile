package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.AdError;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzahi;
import com.google.android.gms.internal.ads.zzahk;
import com.google.android.gms.internal.ads.zzaqq;
import com.google.android.gms.internal.ads.zzarr;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbej;
import com.google.android.gms.internal.ads.zzbfn;
import com.google.android.gms.internal.ads.zzbft;
import com.google.android.gms.internal.ads.zzcrb;
import com.google.android.gms.internal.ads.zzdvl;
import com.google.android.gms.internal.ads.zztu;
import com.google.android.gms.internal.ads.zzvc;
import com.google.android.gms.internal.ads.zzwr;
import java.util.Collections;
import org.apache.http.protocol.HTTP;

public class zzc extends zzarr implements zzz {
    private static final int v = Color.argb(0, 0, 0, 0);
    protected final Activity b;
    AdOverlayInfoParcel c;
    zzbeb d;
    private zzi e;
    private zzp f;
    private boolean g = false;
    private FrameLayout h;
    private WebChromeClient.CustomViewCallback i;
    private boolean j = false;
    private boolean k = false;
    private e l;
    private boolean m = false;
    zzn n = zzn.BACK_BUTTON;
    private final Object o = new Object();
    private Runnable p;
    private boolean q;
    private boolean r;
    private boolean s = false;
    private boolean t = false;
    private boolean u = true;

    public zzc(Activity activity) {
        this.b = activity;
    }

    private final void O(Configuration configuration) {
        zzk zzk;
        zzk zzk2;
        AdOverlayInfoParcel adOverlayInfoParcel = this.c;
        boolean z = true;
        boolean z2 = false;
        boolean z3 = (adOverlayInfoParcel == null || (zzk2 = adOverlayInfoParcel.zzdtc) == null || !zzk2.zzbpf) ? false : true;
        boolean zza = zzr.zzkt().zza(this.b, configuration);
        if ((!this.k || z3) && !zza) {
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.c;
            if (!(adOverlayInfoParcel2 == null || (zzk = adOverlayInfoParcel2.zzdtc) == null || !zzk.zzbpk)) {
                z2 = true;
            }
        } else {
            z = false;
        }
        Window window = this.b.getWindow();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcpt)).booleanValue()) {
            View decorView = window.getDecorView();
            int i2 = 256;
            if (z) {
                i2 = 5380;
                if (z2) {
                    i2 = 5894;
                }
            }
            decorView.setSystemUiVisibility(i2);
        } else if (z) {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (z2) {
                window.getDecorView().setSystemUiVisibility(4098);
            }
        } else {
            window.addFlags(2048);
            window.clearFlags(1024);
        }
    }

    private final void P(boolean z) {
        int intValue = ((Integer) zzwr.zzqr().zzd(zzabp.zzcvf)).intValue();
        zzs zzs = new zzs();
        zzs.size = 50;
        zzs.paddingLeft = z ? intValue : 0;
        zzs.paddingRight = z ? 0 : intValue;
        zzs.paddingTop = 0;
        zzs.paddingBottom = intValue;
        this.f = new zzp(this.b, zzs, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        zza(z, this.c.zzdsx);
        this.l.addView(this.f, layoutParams);
    }

    private final void Q(boolean z) {
        if (!this.r) {
            this.b.requestWindowFeature(1);
        }
        Window window = this.b.getWindow();
        if (window != null) {
            zzbeb zzbeb = this.c.zzdjd;
            zza zza = null;
            zzbfn zzacx = zzbeb != null ? zzbeb.zzacx() : null;
            boolean z2 = false;
            boolean z3 = zzacx != null && zzacx.zzadp();
            this.m = false;
            if (z3) {
                int i2 = this.c.orientation;
                if (i2 == 6) {
                    if (this.b.getResources().getConfiguration().orientation == 1) {
                        z2 = true;
                    }
                    this.m = z2;
                } else if (i2 == 7) {
                    if (this.b.getResources().getConfiguration().orientation == 2) {
                        z2 = true;
                    }
                    this.m = z2;
                }
            }
            boolean z4 = this.m;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Delay onShow to next orientation change: ");
            sb.append(z4);
            zzazk.zzdy(sb.toString());
            setRequestedOrientation(this.c.orientation);
            window.setFlags(16777216, 16777216);
            zzazk.zzdy("Hardware acceleration on the AdActivity window enabled.");
            if (!this.k) {
                this.l.setBackgroundColor(-16777216);
            } else {
                this.l.setBackgroundColor(v);
            }
            this.b.setContentView(this.l);
            this.r = true;
            if (z) {
                try {
                    zzr.zzks();
                    Activity activity = this.b;
                    zzbeb zzbeb2 = this.c.zzdjd;
                    zzbft zzacv = zzbeb2 != null ? zzbeb2.zzacv() : null;
                    zzbeb zzbeb3 = this.c.zzdjd;
                    String zzacw = zzbeb3 != null ? zzbeb3.zzacw() : null;
                    AdOverlayInfoParcel adOverlayInfoParcel = this.c;
                    zzazn zzazn = adOverlayInfoParcel.zzbpn;
                    zzbeb zzbeb4 = adOverlayInfoParcel.zzdjd;
                    zzbeb zza2 = zzbej.zza(activity, zzacv, zzacw, true, z3, null, null, zzazn, null, null, zzbeb4 != null ? zzbeb4.zzabf() : null, zztu.zznf(), null, null);
                    this.d = zza2;
                    zzbfn zzacx2 = zza2.zzacx();
                    AdOverlayInfoParcel adOverlayInfoParcel2 = this.c;
                    zzahi zzahi = adOverlayInfoParcel2.zzdgz;
                    zzahk zzahk = adOverlayInfoParcel2.zzdha;
                    zzv zzv = adOverlayInfoParcel2.zzdsz;
                    zzbeb zzbeb5 = adOverlayInfoParcel2.zzdjd;
                    if (zzbeb5 != null) {
                        zza = zzbeb5.zzacx().zzado();
                    }
                    zzacx2.zza(null, zzahi, null, zzahk, zzv, true, null, zza, null, null, null, null, null, null);
                    this.d.zzacx().zza(new b(this));
                    AdOverlayInfoParcel adOverlayInfoParcel3 = this.c;
                    String str = adOverlayInfoParcel3.url;
                    if (str != null) {
                        this.d.loadUrl(str);
                    } else {
                        String str2 = adOverlayInfoParcel3.zzdsy;
                        if (str2 != null) {
                            this.d.loadDataWithBaseURL(adOverlayInfoParcel3.zzdsw, str2, "text/html", HTTP.UTF_8, null);
                        } else {
                            throw new c("No URL or HTML to display in ad overlay.");
                        }
                    }
                    zzbeb zzbeb6 = this.c.zzdjd;
                    if (zzbeb6 != null) {
                        zzbeb6.zzb(this);
                    }
                } catch (Exception e2) {
                    zzazk.zzc("Error obtaining webview.", e2);
                    throw new c("Could not obtain webview for the overlay.");
                }
            } else {
                zzbeb zzbeb7 = this.c.zzdjd;
                this.d = zzbeb7;
                zzbeb7.zzbv(this.b);
            }
            this.d.zza(this);
            zzbeb zzbeb8 = this.c.zzdjd;
            if (zzbeb8 != null) {
                zv zzadb = zzbeb8.zzadb();
                e eVar = this.l;
                if (!(zzadb == null || eVar == null)) {
                    zzr.zzlg().zza(zzadb, eVar);
                }
            }
            if (this.c.zzdta != 5) {
                ViewParent parent = this.d.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(this.d.getView());
                }
                if (this.k) {
                    this.d.zzadj();
                }
                this.l.addView(this.d.getView(), -1, -1);
            }
            if (!z && !this.m) {
                this.d.zzwb();
            }
            AdOverlayInfoParcel adOverlayInfoParcel4 = this.c;
            if (adOverlayInfoParcel4.zzdta != 5) {
                P(z3);
                if (this.d.zzacz()) {
                    zza(z3, true);
                    return;
                }
                return;
            }
            zzcrb.zza(this.b, this, adOverlayInfoParcel4.zzdte, adOverlayInfoParcel4.zzdtd, adOverlayInfoParcel4.zzdib, adOverlayInfoParcel4.zzdic, adOverlayInfoParcel4.zzbvs, adOverlayInfoParcel4.zzdtf);
            return;
        }
        throw new c("Invalid activity, no window available.");
    }

    private final void R() {
        if (this.b.isFinishing() && !this.s) {
            this.s = true;
            if (this.d != null) {
                this.d.zzdu(this.n.zzwf());
                synchronized (this.o) {
                    if (!this.q && this.d.zzadf()) {
                        a aVar = new a(this);
                        this.p = aVar;
                        zzj.zzeen.postDelayed(aVar, ((Long) zzwr.zzqr().zzd(zzabp.zzcpq)).longValue());
                        return;
                    }
                }
            }
            S();
        }
    }

    /* access modifiers changed from: package-private */
    public final void S() {
        zzbeb zzbeb;
        zzq zzq;
        if (!this.t) {
            this.t = true;
            zzbeb zzbeb2 = this.d;
            if (zzbeb2 != null) {
                this.l.removeView(zzbeb2.getView());
                zzi zzi = this.e;
                if (zzi != null) {
                    this.d.zzbv(zzi.context);
                    this.d.zzay(false);
                    ViewGroup viewGroup = this.e.parent;
                    View view = this.d.getView();
                    zzi zzi2 = this.e;
                    viewGroup.addView(view, zzi2.index, zzi2.zzdsi);
                    this.e = null;
                } else if (this.b.getApplicationContext() != null) {
                    this.d.zzbv(this.b.getApplicationContext());
                }
                this.d = null;
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.c;
            if (!(adOverlayInfoParcel == null || (zzq = adOverlayInfoParcel.zzdsv) == null)) {
                zzq.zza(this.n);
            }
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.c;
            if (adOverlayInfoParcel2 != null && (zzbeb = adOverlayInfoParcel2.zzdjd) != null) {
                zv zzadb = zzbeb.zzadb();
                View view2 = this.c.zzdjd.getView();
                if (zzadb != null && view2 != null) {
                    zzr.zzlg().zza(zzadb, view2);
                }
            }
        }
    }

    public final void close() {
        this.n = zzn.CUSTOM_CLOSE;
        this.b.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.c;
        if (adOverlayInfoParcel != null && adOverlayInfoParcel.zzdta == 5) {
            this.b.overridePendingTransition(0, 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onActivityResult(int i2, int i3, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onBackPressed() {
        this.n = zzn.BACK_BUTTON;
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public void onCreate(Bundle bundle) {
        zzvc zzvc;
        this.b.requestWindowFeature(1);
        this.j = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            AdOverlayInfoParcel zzd = AdOverlayInfoParcel.zzd(this.b.getIntent());
            this.c = zzd;
            if (zzd != null) {
                if (zzd.zzbpn.zzehz > 7500000) {
                    this.n = zzn.OTHER;
                }
                if (this.b.getIntent() != null) {
                    this.u = this.b.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
                }
                AdOverlayInfoParcel adOverlayInfoParcel = this.c;
                zzk zzk = adOverlayInfoParcel.zzdtc;
                if (zzk != null) {
                    this.k = zzk.zzbpe;
                } else if (adOverlayInfoParcel.zzdta == 5) {
                    this.k = true;
                } else {
                    this.k = false;
                }
                if (!(!this.k || adOverlayInfoParcel.zzdta == 5 || zzk.zzbpj == -1)) {
                    new g(this, null).zzye();
                }
                if (bundle == null) {
                    zzq zzq = this.c.zzdsv;
                    if (zzq != null && this.u) {
                        zzq.zzvo();
                    }
                    AdOverlayInfoParcel adOverlayInfoParcel2 = this.c;
                    if (!(adOverlayInfoParcel2.zzdta == 1 || (zzvc = adOverlayInfoParcel2.zzchd) == null)) {
                        zzvc.onAdClicked();
                    }
                }
                Activity activity = this.b;
                AdOverlayInfoParcel adOverlayInfoParcel3 = this.c;
                e eVar = new e(activity, adOverlayInfoParcel3.zzdtb, adOverlayInfoParcel3.zzbpn.zzbrp);
                this.l = eVar;
                eVar.setId(AdError.NETWORK_ERROR_CODE);
                zzr.zzkt().zzi(this.b);
                AdOverlayInfoParcel adOverlayInfoParcel4 = this.c;
                int i2 = adOverlayInfoParcel4.zzdta;
                if (i2 == 1) {
                    Q(false);
                } else if (i2 == 2) {
                    this.e = new zzi(adOverlayInfoParcel4.zzdjd);
                    Q(false);
                } else if (i2 == 3) {
                    Q(true);
                } else if (i2 == 5) {
                    Q(false);
                } else {
                    throw new c("Could not determine ad overlay type.");
                }
            } else {
                throw new c("Could not get info for ad overlay.");
            }
        } catch (c e2) {
            zzazk.zzex(e2.getMessage());
            this.n = zzn.OTHER;
            this.b.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onDestroy() {
        zzbeb zzbeb = this.d;
        if (zzbeb != null) {
            try {
                this.l.removeView(zzbeb.getView());
            } catch (NullPointerException unused) {
            }
        }
        R();
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onPause() {
        zzvu();
        zzq zzq = this.c.zzdsv;
        if (zzq != null) {
            zzq.onPause();
        }
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvd)).booleanValue() && this.d != null && (!this.b.isFinishing() || this.e == null)) {
            this.d.onPause();
        }
        R();
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRestart() {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onResume() {
        zzq zzq = this.c.zzdsv;
        if (zzq != null) {
            zzq.onResume();
        }
        O(this.b.getResources().getConfiguration());
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvd)).booleanValue()) {
            zzbeb zzbeb = this.d;
            if (zzbeb == null || zzbeb.isDestroyed()) {
                zzazk.zzex("The webview does not exist. Ignoring action.");
            } else {
                this.d.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.j);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStart() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvd)).booleanValue()) {
            zzbeb zzbeb = this.d;
            if (zzbeb == null || zzbeb.isDestroyed()) {
                zzazk.zzex("The webview does not exist. Ignoring action.");
            } else {
                this.d.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStop() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvd)).booleanValue() && this.d != null && (!this.b.isFinishing() || this.e == null)) {
            this.d.onPause();
        }
        R();
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onUserLeaveHint() {
        zzq zzq = this.c.zzdsv;
        if (zzq != null) {
            zzq.onUserLeaveHint();
        }
    }

    public final void setRequestedOrientation(int i2) {
        if (this.b.getApplicationInfo().targetSdkVersion >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcxm)).intValue()) {
            if (this.b.getApplicationInfo().targetSdkVersion <= ((Integer) zzwr.zzqr().zzd(zzabp.zzcxn)).intValue()) {
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcxo)).intValue()) {
                    if (i3 <= ((Integer) zzwr.zzqr().zzd(zzabp.zzcxp)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.b.setRequestedOrientation(i2);
        } catch (Throwable th) {
            zzr.zzkv().zzb(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zza(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzk zzk;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        zzk zzk2;
        boolean z3 = true;
        boolean z4 = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcpr)).booleanValue() && (adOverlayInfoParcel2 = this.c) != null && (zzk2 = adOverlayInfoParcel2.zzdtc) != null && zzk2.zzbpl;
        boolean z5 = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcps)).booleanValue() && (adOverlayInfoParcel = this.c) != null && (zzk = adOverlayInfoParcel.zzdtc) != null && zzk.zzbpm;
        if (z && z2 && z4 && !z5) {
            new zzaqq(this.d, "useCustomClose").zzds("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzp zzp = this.f;
        if (zzp != null) {
            if (!z5 && (!z2 || z4)) {
                z3 = false;
            }
            zzp.zzam(z3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzad(zv zvVar) {
        O((Configuration) aw.P(zvVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzdp() {
        this.r = true;
    }

    public final void zzvu() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.c;
        if (adOverlayInfoParcel != null && this.g) {
            setRequestedOrientation(adOverlayInfoParcel.orientation);
        }
        if (this.h != null) {
            this.b.setContentView(this.l);
            this.r = true;
            this.h.removeAllViews();
            this.h = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.i;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.i = null;
        }
        this.g = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzz
    public final void zzvv() {
        this.n = zzn.CLOSE_BUTTON;
        this.b.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final boolean zzvw() {
        this.n = zzn.BACK_BUTTON;
        zzbeb zzbeb = this.d;
        if (zzbeb == null) {
            return true;
        }
        boolean zzade = zzbeb.zzade();
        if (!zzade) {
            this.d.zza("onbackblocked", Collections.emptyMap());
        }
        return zzade;
    }

    public final void zzvx() {
        this.l.removeView(this.f);
        P(true);
    }

    public final void zzwa() {
        if (this.m) {
            this.m = false;
            this.d.zzwb();
        }
    }

    public final void zzwc() {
        this.l.c = true;
    }

    public final void zzwd() {
        synchronized (this.o) {
            this.q = true;
            Runnable runnable = this.p;
            if (runnable != null) {
                zzdvl zzdvl = zzj.zzeen;
                zzdvl.removeCallbacks(runnable);
                zzdvl.post(this.p);
            }
        }
    }

    public final void zza(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout = new FrameLayout(this.b);
        this.h = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        this.h.addView(view, -1, -1);
        this.b.setContentView(this.h);
        this.r = true;
        this.i = customViewCallback;
        this.g = true;
    }
}
