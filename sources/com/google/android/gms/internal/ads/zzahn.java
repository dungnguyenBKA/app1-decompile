package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.util.Map;

public final class zzahn implements zzaif<zzbeb> {
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbeb, Map map) {
        zzbeb zzbeb2 = zzbeb;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP);
            if (TextUtils.isEmpty(str2)) {
                zzazk.zzex("No label given for CSI tick.");
            } else if (TextUtils.isEmpty(str4)) {
                zzazk.zzex("No timestamp given for CSI tick.");
            } else {
                try {
                    long parseLong = (Long.parseLong(str4) - zzr.zzky().a()) + zzr.zzky().b();
                    if (TextUtils.isEmpty(str3)) {
                        str3 = "native:view_load";
                    }
                    zzbeb2.zzabi().zzb(str2, str3, parseLong);
                } catch (NumberFormatException e) {
                    zzazk.zzd("Malformed timestamp for CSI tick.", e);
                }
            }
        } else if ("experiment".equals(str)) {
            String str5 = (String) map.get("value");
            if (TextUtils.isEmpty(str5)) {
                zzazk.zzex("No value given for CSI experiment.");
                return;
            }
            zzacc zzsp = zzbeb2.zzabi().zzsp();
            if (zzsp == null) {
                zzazk.zzex("No ticker for WebView, dropping experiment ID.");
            } else {
                zzsp.zzg("e", str5);
            }
        } else if ("extra".equals(str)) {
            String str6 = (String) map.get("name");
            String str7 = (String) map.get("value");
            if (TextUtils.isEmpty(str7)) {
                zzazk.zzex("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str6)) {
                zzazk.zzex("No name given for CSI extra.");
            } else {
                zzacc zzsp2 = zzbeb2.zzabi().zzsp();
                if (zzsp2 == null) {
                    zzazk.zzex("No ticker for WebView, dropping extra parameter.");
                } else {
                    zzsp2.zzg(str6, str7);
                }
            }
        }
    }
}
