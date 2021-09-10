package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.overlay.zzv;

public final class zzcgs implements zzq, zzv, zzahi, zzahk, zzvc {
    private zzvc zzchd;
    private zzahi zzdgz;
    private zzahk zzdha;
    private zzq zzdsv;
    private zzv zzdsz;

    private zzcgs() {
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final synchronized void onAdClicked() {
        zzvc zzvc = this.zzchd;
        if (zzvc != null) {
            zzvc.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahk
    public final synchronized void onAppEvent(String str, String str2) {
        zzahk zzahk = this.zzdha;
        if (zzahk != null) {
            zzahk.onAppEvent(str, str2);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void onPause() {
        zzq zzq = this.zzdsv;
        if (zzq != null) {
            zzq.onPause();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void onResume() {
        zzq zzq = this.zzdsv;
        if (zzq != null) {
            zzq.onResume();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void onUserLeaveHint() {
        zzq zzq = this.zzdsv;
        if (zzq != null) {
            zzq.onUserLeaveHint();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void zza(zzn zzn) {
        zzq zzq = this.zzdsv;
        if (zzq != null) {
            zzq.zza(zzn);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final synchronized void zzvo() {
        zzq zzq = this.zzdsv;
        if (zzq != null) {
            zzq.zzvo();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public final synchronized void zzwg() {
        zzv zzv = this.zzdsz;
        if (zzv != null) {
            zzv.zzwg();
        }
    }

    /* synthetic */ zzcgs(zzcgl zzcgl) {
        this();
    }

    @Override // com.google.android.gms.internal.ads.zzahi
    public final synchronized void zza(String str, Bundle bundle) {
        zzahi zzahi = this.zzdgz;
        if (zzahi != null) {
            zzahi.zza(str, bundle);
        }
    }

    /* access modifiers changed from: public */
    private final synchronized void zza(zzvc zzvc, zzahi zzahi, zzq zzq, zzahk zzahk, zzv zzv) {
        this.zzchd = zzvc;
        this.zzdgz = zzahi;
        this.zzdsv = zzq;
        this.zzdha = zzahk;
        this.zzdsz = zzv;
    }
}
