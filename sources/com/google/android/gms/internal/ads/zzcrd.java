package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.DialogInterface;
import com.google.android.gms.ads.internal.overlay.zzc;
import java.util.HashMap;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcrd implements DialogInterface.OnClickListener {
    private final String zzdjf;
    private final zzcqr zzgrw;
    private final zzckn zzgsc;
    private final Activity zzgsd;
    private final zzdrz zzgse;
    private final zzc zzgsf;

    zzcrd(zzcqr zzcqr, String str, zzckn zzckn, Activity activity, zzdrz zzdrz, zzc zzc) {
        this.zzgrw = zzcqr;
        this.zzdjf = str;
        this.zzgsc = zzckn;
        this.zzgsd = activity;
        this.zzgse = zzdrz;
        this.zzgsf = zzc;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        zzcqr zzcqr = this.zzgrw;
        String str = this.zzdjf;
        zzckn zzckn = this.zzgsc;
        Activity activity = this.zzgsd;
        zzdrz zzdrz = this.zzgse;
        zzc zzc = this.zzgsf;
        zzcqr.zzgm(str);
        if (zzckn != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("dialog_action", "dismiss");
            zzcrb.zza(activity, zzckn, zzdrz, zzcqr, str, "dialog_click", hashMap);
        }
        if (zzc != null) {
            zzc.close();
        }
    }
}
