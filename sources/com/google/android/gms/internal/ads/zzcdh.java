package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public final class zzcdh {
    private final zzccl zzgdh;
    private final zzcgk zzgge;
    private final zzchq zzggk;
    private final zzbkm zzggl;

    public zzcdh(zzchq zzchq, zzcgk zzcgk, zzbkm zzbkm, zzccl zzccl) {
        this.zzggk = zzchq;
        this.zzgge = zzcgk;
        this.zzggl = zzbkm;
        this.zzgdh = zzccl;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzbeb zzbeb, Map map) {
        zzazk.zzew("Hiding native ads overlay.");
        zzbeb.getView().setVisibility(8);
        this.zzggl.zzbf(false);
    }

    public final View zzapf() {
        zzbeb zza = this.zzggk.zza(zzvs.zzqe(), null, null);
        zza.getView().setVisibility(8);
        zza.zza("/sendMessageToSdk", new zzcdk(this));
        zza.zza("/adMuted", new zzcdj(this));
        this.zzgge.zza(new WeakReference(zza), "/loadHtml", new zzcdm(this));
        this.zzgge.zza(new WeakReference(zza), "/showOverlay", new zzcdl(this));
        this.zzgge.zza(new WeakReference(zza), "/hideOverlay", new zzcdo(this));
        return zza.getView();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(zzbeb zzbeb, Map map) {
        zzazk.zzew("Showing native ads overlay.");
        zzbeb.getView().setVisibility(0);
        this.zzggl.zzbf(true);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(zzbeb zzbeb, Map map) {
        this.zzgdh.zzank();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(zzbeb zzbeb, Map map) {
        this.zzgge.zza("sendMessageToNativeJs", map);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put(FacebookAdapter.KEY_ID, (String) map.get(FacebookAdapter.KEY_ID));
        this.zzgge.zza("sendMessageToNativeJs", hashMap);
    }
}
