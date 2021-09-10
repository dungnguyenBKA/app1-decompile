package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.util.zzbn;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public final class zzcdp {
    private final zzcgk zzgge;
    private final zzchq zzggk;
    private ViewTreeObserver.OnScrollChangedListener zzggn = null;

    public zzcdp(zzchq zzchq, zzcgk zzcgk) {
        this.zzggk = zzchq;
        this.zzgge = zzcgk;
    }

    public final View zza(View view, WindowManager windowManager) {
        zzbeb zza = this.zzggk.zza(zzvs.zzqe(), null, null);
        zza.getView().setVisibility(4);
        zza.getView().setContentDescription("policy_validator");
        zza.zza("/sendMessageToSdk", new zzcds(this));
        zza.zza("/hideValidatorOverlay", new zzcdr(this, windowManager, view));
        zza.zza("/open", new zzaij(null, null, null, null, null));
        this.zzgge.zza(new WeakReference(zza), "/loadNativeAdPolicyViolations", new zzcdu(this, view, windowManager));
        this.zzgge.zza(new WeakReference(zza), "/showValidatorOverlay", zzcdt.zzdhv);
        return zza.getView();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "validatorHtmlLoaded");
        hashMap.put(FacebookAdapter.KEY_ID, (String) map.get(FacebookAdapter.KEY_ID));
        this.zzgge.zza("sendMessageToNativeJs", hashMap);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zze(zzbeb zzbeb, Map map) {
        this.zzgge.zza("sendMessageToNativeJs", map);
    }

    private static int zza(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        zzwr.zzqn();
        return zzaza.zze(context, i);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(View view, WindowManager windowManager, zzbeb zzbeb, Map map) {
        int i;
        zzbeb.zzacx().zza(new zzcdv(this, map));
        if (map != null) {
            Context context = view.getContext();
            int zza = zza(context, (String) map.get("validator_width"), ((Integer) zzwr.zzqr().zzd(zzabp.zzczo)).intValue());
            int zza2 = zza(context, (String) map.get("validator_height"), ((Integer) zzwr.zzqr().zzd(zzabp.zzczp)).intValue());
            int zza3 = zza(context, (String) map.get("validator_x"), 0);
            int zza4 = zza(context, (String) map.get("validator_y"), 0);
            zzbeb.zza(zzbft.zzq(zza, zza2));
            try {
                zzbeb.getWebView().getSettings().setUseWideViewPort(((Boolean) zzwr.zzqr().zzd(zzabp.zzczq)).booleanValue());
                zzbeb.getWebView().getSettings().setLoadWithOverviewMode(((Boolean) zzwr.zzqr().zzd(zzabp.zzczr)).booleanValue());
            } catch (NullPointerException unused) {
            }
            WindowManager.LayoutParams zzzq = zzbn.zzzq();
            zzzq.x = zza3;
            zzzq.y = zza4;
            windowManager.updateViewLayout(zzbeb.getView(), zzzq);
            String str = (String) map.get("orientation");
            Rect rect = new Rect();
            if (view.getGlobalVisibleRect(rect)) {
                if ("1".equals(str) || "2".equals(str)) {
                    i = rect.bottom;
                } else {
                    i = rect.top;
                }
                this.zzggn = new zzcdw(view, zzbeb, str, zzzq, i - zza4, windowManager);
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnScrollChangedListener(this.zzggn);
                }
            }
            String str2 = (String) map.get("overlay_url");
            if (!TextUtils.isEmpty(str2)) {
                zzbeb.loadUrl(str2);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(WindowManager windowManager, View view, zzbeb zzbeb, Map map) {
        zzazk.zzdy("Hide native ad policy validator overlay.");
        zzbeb.getView().setVisibility(8);
        if (zzbeb.getView().getWindowToken() != null) {
            windowManager.removeView(zzbeb.getView());
        }
        zzbeb.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.zzggn != null && viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.zzggn);
        }
    }
}
