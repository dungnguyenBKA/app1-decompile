package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import com.google.android.gms.ads.internal.overlay.zzc;
import java.util.Timer;
import java.util.TimerTask;

final class zzcri extends TimerTask {
    private final /* synthetic */ AlertDialog zzgsq;
    private final /* synthetic */ Timer zzgsr;
    private final /* synthetic */ zzc zzgss;

    zzcri(AlertDialog alertDialog, Timer timer, zzc zzc) {
        this.zzgsq = alertDialog;
        this.zzgsr = timer;
        this.zzgss = zzc;
    }

    public final void run() {
        this.zzgsq.dismiss();
        this.zzgsr.cancel();
        zzc zzc = this.zzgss;
        if (zzc != null) {
            zzc.close();
        }
    }
}
