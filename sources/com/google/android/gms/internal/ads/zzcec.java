package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
public final class zzcec implements zzccl {
    private final Context context;
    private final zzazn zzbpn;
    private final zzdmw zzesr;
    private final zzdnp zzfwy;
    private final zzbsd zzgci;
    private final zzbrl zzgcj;
    private boolean zzgcn = false;
    private boolean zzgcq = false;
    private final zzanr zzghc;
    private final zzans zzghd;
    private final zzanx zzghe;
    private boolean zzghf = true;

    public zzcec(zzanr zzanr, zzans zzans, zzanx zzanx, zzbsd zzbsd, zzbrl zzbrl, Context context2, zzdmw zzdmw, zzazn zzazn, zzdnp zzdnp) {
        this.zzghc = zzanr;
        this.zzghd = zzans;
        this.zzghe = zzanx;
        this.zzgci = zzbsd;
        this.zzgcj = zzbrl;
        this.context = context2;
        this.zzesr = zzdmw;
        this.zzbpn = zzazn;
        this.zzfwy = zzdnp;
    }

    private final void zzad(View view) {
        try {
            zzanx zzanx = this.zzghe;
            if (zzanx == null || zzanx.getOverrideClickHandling()) {
                zzanr zzanr = this.zzghc;
                if (zzanr == null || zzanr.getOverrideClickHandling()) {
                    zzans zzans = this.zzghd;
                    if (zzans != null && !zzans.getOverrideClickHandling()) {
                        this.zzghd.zzu(aw.Q(view));
                        this.zzgcj.onAdClicked();
                        return;
                    }
                    return;
                }
                this.zzghc.zzu(aw.Q(view));
                this.zzgcj.onAdClicked();
                return;
            }
            this.zzghe.zzu(aw.Q(view));
            this.zzgcj.onAdClicked();
        } catch (RemoteException e) {
            zzazk.zzd("Failed to call handleClick", e);
        }
    }

    private final Object zzapg() {
        zv zvVar;
        zzanx zzanx = this.zzghe;
        if (zzanx != null) {
            try {
                zvVar = zzanx.zzvh();
            } catch (RemoteException unused) {
                return null;
            }
        } else {
            zzanr zzanr = this.zzghc;
            if (zzanr != null) {
                try {
                    zvVar = zzanr.zzvh();
                } catch (RemoteException unused2) {
                    return null;
                }
            } else {
                zzans zzans = this.zzghd;
                if (zzans != null) {
                    try {
                        zvVar = zzans.zzvh();
                    } catch (RemoteException unused3) {
                        return null;
                    }
                } else {
                    zvVar = null;
                }
            }
        }
        if (zvVar != null) {
            try {
                return aw.P(zvVar);
            } catch (IllegalArgumentException unused4) {
            }
        }
        return null;
    }

    private static HashMap<String, View> zzb(Map<String, WeakReference<View>> map) {
        HashMap<String, View> hashMap = new HashMap<>();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view = entry.getValue().get();
                if (view != null) {
                    hashMap.put(entry.getKey(), view);
                }
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void cancelUnconfirmedClick() {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void destroy() {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final boolean isCustomClickGestureEnabled() {
        return this.zzesr.zzdne;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void setClickConfirmingView(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final JSONObject zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        try {
            zv Q = aw.Q(view);
            this.zzghf = zzb(map, map2);
            HashMap<String, View> zzb = zzb(map);
            HashMap<String, View> zzb2 = zzb(map2);
            zzanx zzanx = this.zzghe;
            if (zzanx != null) {
                zzanx.zzc(Q, aw.Q(zzb), aw.Q(zzb2));
                return;
            }
            zzanr zzanr = this.zzghc;
            if (zzanr != null) {
                zzanr.zzc(Q, aw.Q(zzb), aw.Q(zzb2));
                this.zzghc.zzv(Q);
                return;
            }
            zzans zzans = this.zzghd;
            if (zzans != null) {
                zzans.zzc(Q, aw.Q(zzb), aw.Q(zzb2));
                this.zzghd.zzv(Q);
            }
        } catch (RemoteException e) {
            zzazk.zzd("Failed to call trackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(zzagm zzagm) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzanj() {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzank() {
        zzazk.zzex("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzanl() {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzf(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzfw(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzg(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final boolean zzh(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zztx() {
        this.zzgcq = true;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzb(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            boolean z = this.zzgcn;
            if (!z && this.zzesr.zzhjl != null) {
                this.zzgcn = z | zzr.zzlb().zzb(this.context, this.zzbpn.zzbrp, this.zzesr.zzhjl.toString(), this.zzfwy.zzhkx);
            }
            if (this.zzghf) {
                zzanx zzanx = this.zzghe;
                if (zzanx == null || zzanx.getOverrideImpressionRecording()) {
                    zzanr zzanr = this.zzghc;
                    if (zzanr == null || zzanr.getOverrideImpressionRecording()) {
                        zzans zzans = this.zzghd;
                        if (zzans != null && !zzans.getOverrideImpressionRecording()) {
                            this.zzghd.recordImpression();
                            this.zzgci.onAdImpression();
                            return;
                        }
                        return;
                    }
                    this.zzghc.recordImpression();
                    this.zzgci.onAdImpression();
                    return;
                }
                this.zzghe.recordImpression();
                this.zzgci.onAdImpression();
            }
        } catch (RemoteException e) {
            zzazk.zzd("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, Map<String, WeakReference<View>> map) {
        try {
            zv Q = aw.Q(view);
            zzanx zzanx = this.zzghe;
            if (zzanx != null) {
                zzanx.zzw(Q);
                return;
            }
            zzanr zzanr = this.zzghc;
            if (zzanr != null) {
                zzanr.zzw(Q);
                return;
            }
            zzans zzans = this.zzghd;
            if (zzans != null) {
                zzans.zzw(Q);
            }
        } catch (RemoteException e) {
            zzazk.zzd("Failed to call untrackView", e);
        }
    }

    private final boolean zzb(Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        Object obj;
        JSONObject jSONObject = this.zzesr.zzhka;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrf)).booleanValue() && jSONObject.length() != 0) {
            if (map == null) {
                map = new HashMap<>();
            }
            if (map2 == null) {
                map2 = new HashMap<>();
            }
            HashMap hashMap = new HashMap();
            hashMap.putAll(map);
            hashMap.putAll(map2);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONArray optJSONArray = jSONObject.optJSONArray(next);
                if (optJSONArray != null) {
                    WeakReference weakReference = (WeakReference) hashMap.get(next);
                    if (weakReference == null || (obj = weakReference.get()) == null) {
                        return false;
                    }
                    Class<?> cls = obj.getClass();
                    if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrg)).booleanValue() && next.equals("3010")) {
                        Object zzapg = zzapg();
                        if (zzapg == null) {
                            return false;
                        }
                        cls = zzapg.getClass();
                    }
                    try {
                        ArrayList arrayList = new ArrayList();
                        zzbh.zza(optJSONArray, arrayList);
                        zzr.zzkr();
                        if (!zzj.zza(this.context.getClassLoader(), cls, arrayList)) {
                            return false;
                        }
                    } catch (JSONException unused) {
                        continue;
                    }
                }
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzgcq || !this.zzesr.zzdne) {
            zzad(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzgcq) {
            zzazk.zzex("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.zzesr.zzdne) {
            zzazk.zzex("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            zzad(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(zzyn zzyn) {
        zzazk.zzex("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(zzyj zzyj) {
        zzazk.zzex("Mute This Ad is not supported for 3rd party ads");
    }
}
