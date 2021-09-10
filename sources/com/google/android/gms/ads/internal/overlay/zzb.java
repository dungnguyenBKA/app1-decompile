package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzacr;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzwr;

public final class zzb {
    private static boolean a(Context context, Intent intent, zzv zzv, zzt zzt, boolean z) {
        if (z) {
            Uri data = intent.getData();
            zzacr zzacr = zzacr.UNKNOWN;
            try {
                zzacr zza = zzr.zzkr().zza(context, data);
                if (zzv != null) {
                    zzv.zzwg();
                }
                if (zzt != null) {
                    zzt.zza(zza);
                }
                return zza.equals(zzacr.CCT_READY_TO_OPEN);
            } catch (ActivityNotFoundException e) {
                zzazk.zzex(e.getMessage());
                zzacr zzacr2 = zzacr.ACTIVITY_NOT_FOUND;
                if (zzt != null) {
                    zzt.zza(zzacr2);
                }
                return zzacr2.equals(zzacr.CCT_READY_TO_OPEN);
            } catch (Throwable unused) {
                if (zzt != null) {
                    zzt.zza(zzacr);
                }
                return zzacr.equals(zzacr.CCT_READY_TO_OPEN);
            }
        } else {
            try {
                String valueOf = String.valueOf(intent.toURI());
                zzd.zzeb(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
                zzr.zzkr();
                zzj.zza(context, intent);
                if (zzv != null) {
                    zzv.zzwg();
                }
                if (zzt != null) {
                    zzt.zzab(true);
                }
                return true;
            } catch (ActivityNotFoundException e2) {
                zzazk.zzex(e2.getMessage());
                if (zzt != null) {
                    zzt.zzab(false);
                }
                return false;
            }
        }
    }

    public static boolean zza(Context context, zzd zzd, zzv zzv, zzt zzt) {
        int i = 0;
        if (zzd == null) {
            zzazk.zzex("No intent data for launcher overlay.");
            return false;
        }
        zzabp.initialize(context);
        Intent intent = zzd.intent;
        if (intent != null) {
            return a(context, intent, zzv, zzt, zzd.zzdsg);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(zzd.url)) {
            zzazk.zzex("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(zzd.mimeType)) {
            intent2.setDataAndType(Uri.parse(zzd.url), zzd.mimeType);
        } else {
            intent2.setData(Uri.parse(zzd.url));
        }
        intent2.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzd.packageName)) {
            intent2.setPackage(zzd.packageName);
        }
        if (!TextUtils.isEmpty(zzd.zzdsd)) {
            String[] split = zzd.zzdsd.split("/", 2);
            if (split.length < 2) {
                String valueOf = String.valueOf(zzd.zzdsd);
                zzazk.zzex(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent2.setClassName(split[0], split[1]);
        }
        String str = zzd.zzdse;
        if (!TextUtils.isEmpty(str)) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                zzazk.zzex("Could not parse intent flags.");
            }
            intent2.addFlags(i);
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcuq)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcup)).booleanValue()) {
                zzr.zzkr();
                zzj.zzb(context, intent2);
            }
        }
        return a(context, intent2, zzv, zzt, zzd.zzdsg);
    }
}
