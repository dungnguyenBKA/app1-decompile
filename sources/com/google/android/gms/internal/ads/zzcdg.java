package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.util.d;
import java.lang.ref.WeakReference;
import java.util.HashMap;

public final class zzcdg implements View.OnClickListener {
    private final d zzbqg;
    private final zzcgk zzgge;
    private zzagm zzggf;
    private zzaif<Object> zzggg;
    String zzggh;
    Long zzggi;
    WeakReference<View> zzggj;

    public zzcdg(zzcgk zzcgk, d dVar) {
        this.zzgge = zzcgk;
        this.zzbqg = dVar;
    }

    private final void zzape() {
        View view;
        this.zzggh = null;
        this.zzggi = null;
        WeakReference<View> weakReference = this.zzggj;
        if (weakReference != null && (view = weakReference.get()) != null) {
            view.setClickable(false);
            view.setOnClickListener(null);
            this.zzggj = null;
        }
    }

    public final void cancelUnconfirmedClick() {
        if (this.zzggf != null && this.zzggi != null) {
            zzape();
            try {
                this.zzggf.onUnconfirmedClickCancelled();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void onClick(View view) {
        WeakReference<View> weakReference = this.zzggj;
        if (weakReference != null && weakReference.get() == view) {
            if (!(this.zzggh == null || this.zzggi == null)) {
                HashMap hashMap = new HashMap();
                hashMap.put(FacebookAdapter.KEY_ID, this.zzggh);
                hashMap.put("time_interval", String.valueOf(this.zzbqg.a() - this.zzggi.longValue()));
                hashMap.put("messageType", "onePointFiveClick");
                this.zzgge.zza("sendMessageToNativeJs", hashMap);
            }
            zzape();
        }
    }

    public final void zza(zzagm zzagm) {
        this.zzggf = zzagm;
        zzaif<Object> zzaif = this.zzggg;
        if (zzaif != null) {
            this.zzgge.zzb("/unconfirmedClick", zzaif);
        }
        zzcdf zzcdf = new zzcdf(this, zzagm);
        this.zzggg = zzcdf;
        this.zzgge.zza("/unconfirmedClick", zzcdf);
    }

    public final zzagm zzapd() {
        return this.zzggf;
    }
}
