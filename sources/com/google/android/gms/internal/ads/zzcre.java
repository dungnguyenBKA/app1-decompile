package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.RemoteException;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Timer;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcre implements DialogInterface.OnClickListener {
    private final Activity zzeey;
    private final String zzesf;
    private final zzckn zzgsg;
    private final zzdrz zzgsh;
    private final zzcqr zzgsi;
    private final zzbg zzgsj;
    private final String zzgsk;
    private final Resources zzgsl;
    private final zzc zzgsm;

    zzcre(zzckn zzckn, Activity activity, zzdrz zzdrz, zzcqr zzcqr, String str, zzbg zzbg, String str2, Resources resources, zzc zzc) {
        this.zzgsg = zzckn;
        this.zzeey = activity;
        this.zzgsh = zzdrz;
        this.zzgsi = zzcqr;
        this.zzesf = str;
        this.zzgsj = zzbg;
        this.zzgsk = str2;
        this.zzgsl = resources;
        this.zzgsm = zzc;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        zzc zzc;
        String str;
        zzckn zzckn = this.zzgsg;
        Activity activity = this.zzeey;
        zzdrz zzdrz = this.zzgsh;
        zzcqr zzcqr = this.zzgsi;
        String str2 = this.zzesf;
        zzbg zzbg = this.zzgsj;
        String str3 = this.zzgsk;
        Resources resources = this.zzgsl;
        zzc zzc2 = this.zzgsm;
        if (zzckn != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("dialog_action", "confirm");
            zzc = zzc2;
            zzcrb.zza(activity, zzckn, zzdrz, zzcqr, str2, "dialog_click", hashMap);
        } else {
            zzc = zzc2;
        }
        boolean z = false;
        try {
            z = zzbg.zzd(aw.Q(activity), str3, str2);
        } catch (RemoteException e) {
            zzazk.zzc("Failed to schedule offline notification poster.", e);
        }
        if (!z) {
            zzcqr.zzgm(str2);
            if (zzckn != null) {
                zzcrb.zza(activity, zzckn, zzdrz, zzcqr, str2, "offline_notification_worker_not_scheduled");
            }
        }
        zzr.zzkr();
        AlertDialog.Builder zzc3 = zzj.zzc(activity, zzr.zzkt().zzzf());
        if (resources == null) {
            str = "You'll get a notification with the link when you're back online";
        } else {
            str = resources.getString(R.string.offline_opt_in_confirmation);
        }
        zzc3.setMessage(str).setOnCancelListener(new zzcrf(zzc));
        AlertDialog create = zzc3.create();
        create.show();
        Timer timer = new Timer();
        timer.schedule(new zzcri(create, timer, zzc), 3000);
    }
}
