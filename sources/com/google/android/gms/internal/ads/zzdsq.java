package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.d;
import java.util.ArrayList;
import java.util.List;

public final class zzdsq {
    private final Context context;
    private final d zzbqg;
    private final String zzbrp;
    private final String zzcjn;
    private final String zzdug;
    private final zzei zzfrl;
    private final zzdnk zzfyy;
    private final zzcuw zzgat;

    public zzdsq(zzcuw zzcuw, zzazn zzazn, String str, String str2, Context context2, zzdnk zzdnk, d dVar, zzei zzei) {
        this.zzgat = zzcuw;
        this.zzbrp = zzazn.zzbrp;
        this.zzdug = str;
        this.zzcjn = str2;
        this.context = context2;
        this.zzfyy = zzdnk;
        this.zzbqg = dVar;
        this.zzfrl = zzei;
    }

    private static String zzc(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    private static String zzhb(String str) {
        return (TextUtils.isEmpty(str) || !zzaze.isEnabled()) ? str : "fakeForAdDebugLog";
    }

    public final List<String> zza(zzdnl zzdnl, zzdmw zzdmw, List<String> list) {
        return zza(zzdnl, zzdmw, false, "", "", list);
    }

    public static List<String> zza(int i, int i2, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            StringBuilder sb = new StringBuilder(23);
            sb.append(2);
            sb.append(".");
            sb.append(i2);
            arrayList.add(zzc(str, "@gw_mpe@", sb.toString()));
        }
        return arrayList;
    }

    public final List<String> zza(zzdnl zzdnl, zzdmw zzdmw, boolean z, String str, String str2, List<String> list) {
        ArrayList arrayList = new ArrayList();
        String str3 = z ? "1" : "0";
        for (String str4 : list) {
            String zzc = zzc(zzc(zzc(str4, "@gw_adlocid@", zzdnl.zzhkr.zzfwy.zzhkx), "@gw_adnetrefresh@", str3), "@gw_sdkver@", this.zzbrp);
            if (zzdmw != null) {
                zzc = zzaxu.zzc(zzc(zzc(zzc(zzc, "@gw_qdata@", zzdmw.zzdmv), "@gw_adnetid@", zzdmw.id), "@gw_allocid@", zzdmw.zzdlu), this.context, zzdmw.zzdwz);
            }
            String zzc2 = zzc(zzc(zzc(zzc, "@gw_adnetstatus@", this.zzgat.zzasc()), "@gw_seqnum@", this.zzdug), "@gw_sessid@", this.zzcjn);
            boolean z2 = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcsq)).booleanValue() && !TextUtils.isEmpty(str);
            boolean isEmpty = true ^ TextUtils.isEmpty(str2);
            if (z2 || isEmpty) {
                if (this.zzfrl.zzb(Uri.parse(zzc2))) {
                    Uri.Builder buildUpon = Uri.parse(zzc2).buildUpon();
                    if (z2) {
                        buildUpon = buildUpon.appendQueryParameter("ms", str);
                    }
                    if (isEmpty) {
                        buildUpon = buildUpon.appendQueryParameter("attok", str2);
                    }
                    zzc2 = buildUpon.build().toString();
                }
            }
            arrayList.add(zzc2);
        }
        return arrayList;
    }

    public final List<String> zza(zzdmw zzdmw, List<String> list, zzauk zzauk) {
        ArrayList arrayList = new ArrayList();
        long a = this.zzbqg.a();
        try {
            String type = zzauk.getType();
            String num = Integer.toString(zzauk.getAmount());
            zzdnk zzdnk = this.zzfyy;
            String str = "";
            String zzhb = zzdnk == null ? str : zzhb(zzdnk.zzdzh);
            zzdnk zzdnk2 = this.zzfyy;
            if (zzdnk2 != null) {
                str = zzhb(zzdnk2.zzdzi);
            }
            for (String str2 : list) {
                arrayList.add(zzaxu.zzc(zzc(zzc(zzc(zzc(zzc(zzc(str2, "@gw_rwd_userid@", Uri.encode(zzhb)), "@gw_rwd_custom_data@", Uri.encode(str)), "@gw_tmstmp@", Long.toString(a)), "@gw_rwd_itm@", Uri.encode(type)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.zzbrp), this.context, zzdmw.zzdwz));
            }
            return arrayList;
        } catch (RemoteException e) {
            zzazk.zzc("Unable to determine award type and amount.", e);
            return arrayList;
        }
    }
}
