package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.util.c;
import com.google.android.gms.common.util.d;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
public final class zzcbc implements zzccl {
    private final Context context;
    private final zzazn zzbpn;
    private final d zzbqg;
    private final zzei zzesm;
    private final zzdmw zzesr;
    private final zzdss zzfrf;
    private final zzcco zzfup;
    private final zzdnp zzfwy;
    private final JSONObject zzgcf;
    private final zzcgk zzgcg;
    private final zzccd zzgch;
    private final zzbsd zzgci;
    private final zzbrl zzgcj;
    private final zzbjz zzgck;
    private final zzcdg zzgcl;
    private final zzbxz zzgcm;
    private boolean zzgcn = false;
    private boolean zzgco;
    private boolean zzgcp = false;
    private boolean zzgcq = false;
    private Point zzgcr = new Point();
    private Point zzgcs = new Point();
    private long zzgct = 0;
    private long zzgcu = 0;
    private zzyj zzgcv;

    public zzcbc(Context context2, zzcco zzcco, JSONObject jSONObject, zzcgk zzcgk, zzccd zzccd, zzei zzei, zzbsd zzbsd, zzbrl zzbrl, zzdmw zzdmw, zzazn zzazn, zzdnp zzdnp, zzbjz zzbjz, zzcdg zzcdg, d dVar, zzbxz zzbxz, zzdss zzdss) {
        this.context = context2;
        this.zzfup = zzcco;
        this.zzgcf = jSONObject;
        this.zzgcg = zzcgk;
        this.zzgch = zzccd;
        this.zzesm = zzei;
        this.zzgci = zzbsd;
        this.zzgcj = zzbrl;
        this.zzesr = zzdmw;
        this.zzbpn = zzazn;
        this.zzfwy = zzdnp;
        this.zzgck = zzbjz;
        this.zzgcl = zzcdg;
        this.zzbqg = dVar;
        this.zzgcm = zzbxz;
        this.zzfrf = zzdss;
    }

    private final boolean zzani() {
        return this.zzgcf.optBoolean("allow_custom_click_gesture", false);
    }

    private final String zzb(View view, Map<String, WeakReference<View>> map) {
        if (!(map == null || view == null)) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int zzanu = this.zzgch.zzanu();
        if (zzanu == 1) {
            return "1099";
        }
        if (zzanu == 2) {
            return "2099";
        }
        if (zzanu != 6) {
            return null;
        }
        return "3099";
    }

    private final boolean zzfv(String str) {
        JSONObject optJSONObject = this.zzgcf.optJSONObject("allow_pub_event_reporting");
        if (optJSONObject == null || !optJSONObject.optBoolean(str, false)) {
            return false;
        }
        return true;
    }

    private final String zzx(View view) {
        try {
            JSONObject optJSONObject = this.zzgcf.optJSONObject("tracking_urls_and_actions");
            if (optJSONObject == null) {
                optJSONObject = new JSONObject();
            }
            return this.zzesm.zzca().zza(this.context, optJSONObject.optString("click_string"), view);
        } catch (Exception e) {
            zzazk.zzc("Exception obtaining click signals", e);
            return null;
        }
    }

    private final String zzy(View view) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcsq)).booleanValue()) {
            return null;
        }
        try {
            return this.zzesm.zzca().zza(this.context, view, (Activity) null);
        } catch (Exception unused) {
            zzazk.zzev("Exception getting data.");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void cancelUnconfirmedClick() {
        if (this.zzgcf.optBoolean("custom_one_point_five_click_enabled", false)) {
            this.zzgcl.cancelUnconfirmedClick();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void destroy() {
        this.zzgcg.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final boolean isCustomClickGestureEnabled() {
        return zzani();
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void setClickConfirmingView(View view) {
        if (!this.zzgcf.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzazk.zzex("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        zzcdg zzcdg = this.zzgcl;
        if (view != null) {
            view.setOnClickListener(zzcdg);
            view.setClickable(true);
            zzcdg.zzggj = new WeakReference<>(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.zzgcr = new Point();
        this.zzgcs = new Point();
        if (!this.zzgco) {
            this.zzgcm.zzv(view);
            this.zzgco = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.zzgck.zzn(this);
        boolean zzdh = zzbn.zzdh(this.zzbpn.zzehz);
        if (map != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    if (zzdh) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            for (Map.Entry<String, WeakReference<View>> entry2 : map2.entrySet()) {
                View view3 = entry2.getValue().get();
                if (view3 != null) {
                    if (zzdh) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzanj() {
        zza(null, null, null, null, null, null, false);
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzank() {
        try {
            zzyj zzyj = this.zzgcv;
            if (zzyj != null) {
                zzyj.onAdMuted();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzanl() {
        n.d("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.zzgcf);
            zzazw.zza(this.zzgcg.zzc("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzf(Bundle bundle) {
        if (bundle == null) {
            zzazk.zzdy("Click data is null. No click is reported.");
        } else if (!zzfv("click_reporting")) {
            zzazk.zzev("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            zza(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, zzr.zzkr().zza(bundle, (JSONObject) null), false, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzfw(String str) {
        zza(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzg(Bundle bundle) {
        if (bundle == null) {
            zzazk.zzdy("Touch event data is null. No touch event is reported.");
        } else if (!zzfv("touch_reporting")) {
            zzazk.zzev("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
        } else {
            int i = bundle.getInt("duration_ms");
            this.zzesm.zzca().zza((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final boolean zzh(Bundle bundle) {
        if (zzfv("impression_reporting")) {
            return zza(null, null, null, null, null, zzr.zzkr().zza(bundle, (JSONObject) null), false);
        }
        zzazk.zzev("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zztx() {
        this.zzgcq = true;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzb(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        zza(zzbn.zza(this.context, view), zzbn.zza(this.context, map, map2, view), zzbn.zzt(view), zzbn.zzb(this.context, view), zzy(view), null, zzbn.zza(this.context, this.zzesr));
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, Map<String, WeakReference<View>> map) {
        this.zzgcr = new Point();
        this.zzgcs = new Point();
        this.zzgcm.zzw(view);
        this.zzgco = false;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        JSONObject zza = zzbn.zza(this.context, map, map2, view2);
        JSONObject zza2 = zzbn.zza(this.context, view2);
        JSONObject zzt = zzbn.zzt(view2);
        JSONObject zzb = zzbn.zzb(this.context, view2);
        String zzb2 = zzb(view, map);
        zza(((Boolean) zzwr.zzqr().zzd(zzabp.zzcsr)).booleanValue() ? view2 : view, zza2, zza, zzt, zzb, zzb2, zzbn.zza(zzb2, this.context, this.zzgcs, this.zzgcr), null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzgcq) {
            zzazk.zzdy("Custom click reporting failed. enableCustomClickGesture is not set.");
        } else if (!zzani()) {
            zzazk.zzdy("Custom click reporting failed. Ad unit id not in the allow list.");
        } else {
            JSONObject zza = zzbn.zza(this.context, map, map2, view);
            JSONObject zza2 = zzbn.zza(this.context, view);
            JSONObject zzt = zzbn.zzt(view);
            JSONObject zzb = zzbn.zzb(this.context, view);
            String zzb2 = zzb(null, map);
            zza(view, zza2, zza, zzt, zzb, zzb2, zzbn.zza(zzb2, this.context, this.zzgcs, this.zzgcr), null, z, true);
        }
    }

    private final void zza(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        n.d("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.zzgcf);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            boolean z3 = false;
            jSONObject7.put("has_custom_click_handler", this.zzfup.zzgb(this.zzgch.getCustomTemplateId()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put(Advertisement.KEY_TEMPLATE, this.zzgch.zzanu());
            jSONObject8.put("view_aware_api_used", z);
            zzaeh zzaeh = this.zzfwy.zzdoe;
            jSONObject8.put("custom_mute_requested", zzaeh != null && zzaeh.zzbnx);
            jSONObject8.put("custom_mute_enabled", !this.zzgch.getMuteThisAdReasons().isEmpty() && this.zzgch.zzanx() != null);
            if (this.zzgcl.zzapd() != null && this.zzgcf.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, this.zzbqg.a());
            if (this.zzgcq && zzani()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            if (this.zzfup.zzgb(this.zzgch.getCustomTemplateId()) != null) {
                z3 = true;
            }
            jSONObject8.put("has_custom_click_handler", z3);
            jSONObject8.put("click_signals", zzx(view));
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcuu)).booleanValue()) {
                jSONObject8.put("open_chrome_custom_tab", true);
            }
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdaj)).booleanValue() && c.d()) {
                jSONObject8.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdak)).booleanValue() && c.d()) {
                jSONObject8.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long a = this.zzbqg.a();
            jSONObject9.put("time_from_last_touch_down", a - this.zzgct);
            jSONObject9.put("time_from_last_touch", a - this.zzgcu);
            jSONObject7.put("touch_signal", jSONObject9);
            zzazw.zza(this.zzgcg.zzc("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e) {
            zzazk.zzc("Unable to create click JSON.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, MotionEvent motionEvent, View view2) {
        this.zzgcr = zzbn.zza(motionEvent, view2);
        long a = this.zzbqg.a();
        this.zzgcu = a;
        if (motionEvent.getAction() == 0) {
            this.zzgct = a;
            this.zzgcs = this.zzgcr;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.zzgcr;
        obtain.setLocation((float) point.x, (float) point.y);
        this.zzesm.zza(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final JSONObject zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject zza = zzbn.zza(this.context, map, map2, view);
        JSONObject zza2 = zzbn.zza(this.context, view);
        JSONObject zzt = zzbn.zzt(view);
        JSONObject zzb = zzbn.zzb(this.context, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", zza);
            jSONObject.put("ad_view_signal", zza2);
            jSONObject.put("scroll_view_signal", zzt);
            jSONObject.put("lock_screen_signal", zzb);
            return jSONObject;
        } catch (JSONException e) {
            zzazk.zzc("Unable to create native ad view signals JSON.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(zzagm zzagm) {
        if (!this.zzgcf.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzazk.zzex("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
        } else {
            this.zzgcl.zza(zzagm);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(zzyn zzyn) {
        try {
            if (!this.zzgcp) {
                if (zzyn != null || this.zzgch.zzanx() == null) {
                    this.zzgcp = true;
                    this.zzfrf.zzel(zzyn.zzre());
                    zzank();
                    return;
                }
                this.zzgcp = true;
                this.zzfrf.zzel(this.zzgch.zzanx().zzre());
                zzank();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(zzyj zzyj) {
        this.zzgcv = zzyj;
    }

    private final boolean zza(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z) {
        n.d("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.zzgcf);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsq)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            jSONObject6.put("screen", zzbn.zzbk(this.context));
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdaf)).booleanValue()) {
                this.zzgcg.zza("/clickRecorded", new zzcbd(this));
            } else {
                this.zzgcg.zza("/logScionEvent", new zzcbe(this));
            }
            this.zzgcg.zza("/nativeImpression", new zzcbg(this));
            zzazw.zza(this.zzgcg.zzc("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            boolean z2 = this.zzgcn;
            if (z2 || this.zzesr.zzhjl == null) {
                return true;
            }
            this.zzgcn = z2 | zzr.zzlb().zzb(this.context, this.zzbpn.zzbrp, this.zzesr.zzhjl.toString(), this.zzfwy.zzhkx);
            return true;
        } catch (JSONException e) {
            zzazk.zzc("Unable to create impression JSON.", e);
            return false;
        }
    }
}
