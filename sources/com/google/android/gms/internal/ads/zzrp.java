package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.error.VungleException;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
@TargetApi(VungleException.SERVER_RETRY_ERROR)
public final class zzrp extends Thread {
    private final Object lock;
    private boolean started;
    private final int zzbsi;
    private final int zzbsk;
    private final boolean zzbsl;
    private boolean zzbti;
    private boolean zzbtj;
    private final zzri zzbtk;
    private final int zzbtl;
    private final int zzbtm;
    private final int zzbtn;
    private final int zzbto;
    private final int zzbtp;
    private final int zzbtq;
    private final String zzbtr;
    private final boolean zzbts;
    private final boolean zzbtt;

    public zzrp() {
        this(new zzri());
    }

    private final zzrt zza(View view, zzrj zzrj) {
        if (view == null) {
            return new zzrt(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zzrt(this, 0, 0);
            }
            zzrj.zzb(text.toString(), globalVisibleRect, view.getX(), view.getY(), (float) view.getWidth(), (float) view.getHeight());
            return new zzrt(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof zzbeb)) {
            WebView webView = (WebView) view;
            zzrj.zzme();
            webView.post(new zzrr(this, zzrj, webView, globalVisibleRect));
            return new zzrt(this, 0, 1);
        } else if (!(view instanceof ViewGroup)) {
            return new zzrt(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                zzrt zza = zza(viewGroup.getChildAt(i3), zzrj);
                i += zza.zzbua;
                i2 += zza.zzbub;
            }
            return new zzrt(this, i, i2);
        }
    }

    private static boolean zzmj() {
        boolean z;
        try {
            Context context = zzr.zzku().getContext();
            if (context == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null) {
                return false;
            }
            if (keyguardManager == null) {
                return false;
            }
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                        return false;
                    }
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    if (powerManager == null) {
                        z = false;
                    } else {
                        z = powerManager.isScreenOn();
                    }
                    if (z) {
                        return true;
                    }
                    return false;
                }
            }
            return false;
        } catch (Throwable th) {
            zzr.zzkv().zza(th, "ContentFetchTask.isInForeground");
            return false;
        }
    }

    private final void zzml() {
        synchronized (this.lock) {
            this.zzbti = true;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(true);
            zzazk.zzdy(sb.toString());
        }
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x007f */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x007f A[LOOP:1: B:26:0x007f->B:37:0x007f, LOOP_START, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
        // Method dump skipped, instructions count: 150
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrp.run():void");
    }

    public final void wakeup() {
        synchronized (this.lock) {
            this.zzbti = false;
            this.lock.notifyAll();
            zzazk.zzdy("ContentFetchThread: wakeup");
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzj(View view) {
        try {
            zzrj zzrj = new zzrj(this.zzbsi, this.zzbtm, this.zzbsk, this.zzbtn, this.zzbto, this.zzbtp, this.zzbtq, this.zzbsl);
            Context context = zzr.zzku().getContext();
            if (context != null && !TextUtils.isEmpty(this.zzbtr)) {
                String str = (String) view.getTag(context.getResources().getIdentifier((String) zzwr.zzqr().zzd(zzabp.zzcny), FacebookAdapter.KEY_ID, context.getPackageName()));
                if (str != null && str.equals(this.zzbtr)) {
                    return;
                }
            }
            zzrt zza = zza(view, zzrj);
            zzrj.zzmg();
            if (zza.zzbua != 0 || zza.zzbub != 0) {
                if (zza.zzbub != 0 || zzrj.zzmh() != 0) {
                    if (zza.zzbub != 0 || !this.zzbtk.zza(zzrj)) {
                        this.zzbtk.zzc(zzrj);
                    }
                }
            }
        } catch (Exception e) {
            zzazk.zzc("Exception in fetchContentOnUIThread", e);
            zzr.zzkv().zza(e, "ContentFetchTask.fetchContent");
        }
    }

    public final void zzmi() {
        synchronized (this.lock) {
            if (this.started) {
                zzazk.zzdy("Content hash thread already started, quiting...");
                return;
            }
            this.started = true;
            start();
        }
    }

    public final zzrj zzmk() {
        return this.zzbtk.zzo(this.zzbtt);
    }

    public final boolean zzmm() {
        return this.zzbti;
    }

    private zzrp(zzri zzri) {
        this.started = false;
        this.zzbti = false;
        this.zzbtj = false;
        this.zzbtk = zzri;
        this.lock = new Object();
        this.zzbsi = zzadc.zzdcv.get().intValue();
        this.zzbtm = zzadc.zzdcs.get().intValue();
        this.zzbsk = zzadc.zzdcw.get().intValue();
        this.zzbtn = zzadc.zzdcu.get().intValue();
        this.zzbto = ((Integer) zzwr.zzqr().zzd(zzabp.zzcnv)).intValue();
        this.zzbtp = ((Integer) zzwr.zzqr().zzd(zzabp.zzcnw)).intValue();
        this.zzbtq = ((Integer) zzwr.zzqr().zzd(zzabp.zzcnx)).intValue();
        this.zzbtl = zzadc.zzdcx.get().intValue();
        this.zzbtr = (String) zzwr.zzqr().zzd(zzabp.zzcnz);
        this.zzbts = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcoa)).booleanValue();
        this.zzbsl = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcob)).booleanValue();
        this.zzbtt = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcoc)).booleanValue();
        setName("ContentFetchTask");
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzrj zzrj, WebView webView, String str, boolean z) {
        zzrj.zzmd();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.zzbts || TextUtils.isEmpty(webView.getTitle())) {
                    zzrj.zza(optString, z, webView.getX(), webView.getY(), (float) webView.getWidth(), (float) webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    zzrj.zza(sb.toString(), z, webView.getX(), webView.getY(), (float) webView.getWidth(), (float) webView.getHeight());
                }
            }
            if (zzrj.zzly()) {
                this.zzbtk.zzb(zzrj);
            }
        } catch (JSONException unused) {
            zzazk.zzdy("Json string may be malformed.");
        } catch (Throwable th) {
            zzazk.zzb("Failed to get webview content.", th);
            zzr.zzkv().zza(th, "ContentFetchTask.processWebViewContent");
        }
    }
}
