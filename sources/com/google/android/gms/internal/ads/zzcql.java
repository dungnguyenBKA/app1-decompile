package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zztw;
import com.google.android.gms.internal.ads.zzug;
import java.util.ArrayList;

public final class zzcql {
    private Context context;
    private final zzdrz zzdic;
    private zzazn zzdtx;
    private final zzf zzeaw = zzr.zzkv().zzxs();
    private zzcpv zzgrg;
    private zztu zzgro;
    private final String zzgrp;

    public zzcql(Context context2, zzazn zzazn, zztu zztu, zzcpv zzcpv, String str, zzdrz zzdrz) {
        this.context = context2;
        this.zzdtx = zzazn;
        this.zzgro = zztu;
        this.zzgrg = zzcpv;
        this.zzgrp = str;
        this.zzdic = zzdrz;
    }

    private static void zza(SQLiteDatabase sQLiteDatabase, ArrayList<zzug.zzo.zza> arrayList) {
        int size = arrayList.size();
        int i = 0;
        long j = 0;
        while (i < size) {
            zzug.zzo.zza zza = arrayList.get(i);
            i++;
            zzug.zzo.zza zza2 = zza;
            if (zza2.zzov() == zzuq.ENUM_TRUE && zza2.getTimestamp() > j) {
                j = zza2.getTimestamp();
            }
        }
        if (j != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(j));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
    }

    public final void zzarx() {
        try {
            this.zzgrg.zza(new zzcqo(this));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzazk.zzev(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Void zza(SQLiteDatabase sQLiteDatabase) {
        String str;
        int i = 2;
        int i2 = 0;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
            this.zzdic.zzb(zzdsa.zzgx("oa_upload").zzu("oa_failed_reqs", String.valueOf(zzcqm.zza(sQLiteDatabase, 0))).zzu("oa_total_reqs", String.valueOf(zzcqm.zza(sQLiteDatabase, 1))).zzu("oa_upload_time", String.valueOf(zzr.zzky().a())).zzu("oa_last_successful_time", String.valueOf(zzcqm.zzb(sQLiteDatabase, 2))).zzu("oa_session_id", this.zzeaw.zzyu() ? "" : this.zzgrp));
            ArrayList<zzug.zzo.zza> zzb = zzcqm.zzb(sQLiteDatabase);
            zza(sQLiteDatabase, zzb);
            int size = zzb.size();
            while (i2 < size) {
                zzug.zzo.zza zza = zzb.get(i2);
                i2++;
                zzug.zzo.zza zza2 = zza;
                zzdsa zzgx = zzdsa.zzgx("oa_signals");
                if (this.zzeaw.zzyu()) {
                    str = "";
                } else {
                    str = this.zzgrp;
                }
                zzdsa zzu = zzgx.zzu("oa_session_id", str);
                zzug.zzm zzoz = zza2.zzoz();
                zzu.zzu("oa_sig_ts", String.valueOf(zza2.getTimestamp())).zzu("oa_sig_status", String.valueOf(zza2.zzov().zzv())).zzu("oa_sig_resp_lat", String.valueOf(zza2.zzow())).zzu("oa_sig_render_lat", String.valueOf(zza2.zzox())).zzu("oa_sig_formats", zzdxl.zza(zza2.zzoy(), zzcqp.zzeaj).toString()).zzu("oa_sig_nw_type", zzoz.zzol() ? String.valueOf(zzoz.zzom().zzv()) : "-1").zzu("oa_sig_wifi", String.valueOf(zza2.zzpa().zzv())).zzu("oa_sig_airplane", String.valueOf(zza2.zzpb().zzv())).zzu("oa_sig_data", String.valueOf(zza2.zzpc().zzv())).zzu("oa_sig_nw_resp", String.valueOf(zza2.zzpd())).zzu("oa_sig_offline", String.valueOf(zza2.zzpe().zzv())).zzu("oa_sig_nw_state", String.valueOf(zza2.zzpf().zzv()));
                if (zzoz.zzon() && zzoz.zzol() && zzoz.zzom().equals(zzug.zzm.zzc.CELL)) {
                    zzu.zzu("oa_sig_cell_type", String.valueOf(zzoz.zzoo().zzv()));
                }
                this.zzdic.zzb(zzu);
            }
        } else {
            ArrayList<zzug.zzo.zza> zzb2 = zzcqm.zzb(sQLiteDatabase);
            zza(sQLiteDatabase, zzb2);
            this.zzgro.zza(new zzcqn((zzug.zzo) ((zzelb) zzug.zzo.zzot().zzca(this.context.getPackageName()).zzcb(Build.MODEL).zzcj(zzcqm.zza(sQLiteDatabase, 0)).zze(zzb2).zzck(zzcqm.zza(sQLiteDatabase, 1)).zzes(zzr.zzky().a()).zzet(zzcqm.zzb(sQLiteDatabase, 2)).zzbiw())));
            zzug.zzu.zza zzcr = zzug.zzu.zzpn().zzcq(this.zzdtx.zzehy).zzcr(this.zzdtx.zzehz);
            if (this.zzdtx.zzeia) {
                i = 0;
            }
            this.zzgro.zza(new zzcqq((zzug.zzu) ((zzelb) zzcr.zzcs(i).zzbiw())));
            this.zzgro.zza(zztw.zza.EnumC0068zza.OFFLINE_UPLOAD);
        }
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = ?", new String[]{"failed_requests"});
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"total_requests"});
        return null;
    }
}
