package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzarr;
import com.google.android.gms.internal.ads.zzvc;

public final class zzw extends zzarr {
    private AdOverlayInfoParcel b;
    private Activity c;
    private boolean d = false;
    private boolean e = false;

    public zzw(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.b = adOverlayInfoParcel;
        this.c = activity;
    }

    private final synchronized void O() {
        if (!this.e) {
            zzq zzq = this.b.zzdsv;
            if (zzq != null) {
                zzq.zza(zzn.OTHER);
            }
            this.e = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onBackPressed() {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onCreate(Bundle bundle) {
        zzq zzq;
        boolean z = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.b;
        if (adOverlayInfoParcel == null) {
            this.c.finish();
        } else if (z) {
            this.c.finish();
        } else {
            if (bundle == null) {
                zzvc zzvc = adOverlayInfoParcel.zzchd;
                if (zzvc != null) {
                    zzvc.onAdClicked();
                }
                if (!(this.c.getIntent() == null || !this.c.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) || (zzq = this.b.zzdsv) == null)) {
                    zzq.zzvo();
                }
            }
            zzr.zzkp();
            Activity activity = this.c;
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.b;
            zzd zzd = adOverlayInfoParcel2.zzdsu;
            if (!zzb.zza(activity, zzd, adOverlayInfoParcel2.zzdsz, zzd.zzdif)) {
                this.c.finish();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onDestroy() {
        if (this.c.isFinishing()) {
            O();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onPause() {
        zzq zzq = this.b.zzdsv;
        if (zzq != null) {
            zzq.onPause();
        }
        if (this.c.isFinishing()) {
            O();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRestart() {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onResume() {
        if (this.d) {
            this.c.finish();
            return;
        }
        this.d = true;
        zzq zzq = this.b.zzdsv;
        if (zzq != null) {
            zzq.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.d);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStart() {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStop() {
        if (this.c.isFinishing()) {
            O();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onUserLeaveHint() {
        zzq zzq = this.b.zzdsv;
        if (zzq != null) {
            zzq.onUserLeaveHint();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzad(zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzdp() {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final boolean zzvw() {
        return false;
    }
}
