package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;

public final class zzaxu {
    private static Uri zza(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = str.indexOf("?adurl");
        }
        if (indexOf == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        int i = indexOf + 1;
        return Uri.parse(str.substring(0, i) + str2 + "=" + str3 + "&" + str.substring(i));
    }

    private static String zzb(String str, Context context) {
        String zzab = zzr.zzlp().zzab(context);
        String zzac = zzr.zzlp().zzac(context);
        if (!str.contains("gmp_app_id") && !TextUtils.isEmpty(zzab)) {
            str = zza(str, "gmp_app_id", zzab).toString();
        }
        return (str.contains("fbs_aiid") || TextUtils.isEmpty(zzac)) ? str : zza(str, "fbs_aiid", zzac).toString();
    }

    public static String zzc(String str, Context context, boolean z) {
        String zzad;
        if ((((Boolean) zzwr.zzqr().zzd(zzabp.zzcoo)).booleanValue() && !z) || !zzr.zzlp().zzy(context) || TextUtils.isEmpty(str) || (zzad = zzr.zzlp().zzad(context)) == null) {
            return str;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcog)).booleanValue()) {
            String str2 = (String) zzwr.zzqr().zzd(zzabp.zzcoh);
            if (!str.contains(str2)) {
                return str;
            }
            if (zzr.zzkr().zzei(str)) {
                zzr.zzlp().zzg(context, zzad);
                return zzb(str, context).replace(str2, zzad);
            } else if (!zzr.zzkr().zzej(str)) {
                return str;
            } else {
                zzr.zzlp().zzh(context, zzad);
                return zzb(str, context).replace(str2, zzad);
            }
        } else if (str.contains("fbs_aeid")) {
            return str;
        } else {
            if (zzr.zzkr().zzei(str)) {
                zzr.zzlp().zzg(context, zzad);
                return zza(zzb(str, context), "fbs_aeid", zzad).toString();
            } else if (!zzr.zzkr().zzej(str)) {
                return str;
            } else {
                zzr.zzlp().zzh(context, zzad);
                return zza(zzb(str, context), "fbs_aeid", zzad).toString();
            }
        }
    }

    public static String zzb(Uri uri, Context context) {
        if (!zzr.zzlp().zzy(context)) {
            return uri.toString();
        }
        String zzad = zzr.zzlp().zzad(context);
        if (zzad == null) {
            return uri.toString();
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcog)).booleanValue()) {
            String str = (String) zzwr.zzqr().zzd(zzabp.zzcoh);
            String uri2 = uri.toString();
            if (uri2.contains(str)) {
                zzr.zzlp().zzg(context, zzad);
                return zzb(uri2, context).replace(str, zzad);
            }
        } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
            String uri3 = zza(zzb(uri.toString(), context), "fbs_aeid", zzad).toString();
            zzr.zzlp().zzg(context, zzad);
            return uri3;
        }
        return uri.toString();
    }
}
