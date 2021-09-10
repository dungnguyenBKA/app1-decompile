package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.g;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpHost;

public final class zzcrb extends zzare {
    private final Context context;
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzazo zzdid;
    private final zzcqr zzdie;

    public zzcrb(Context context2, zzcqr zzcqr, zzazo zzazo, zzckn zzckn, zzdrz zzdrz) {
        this.context = context2;
        this.zzdib = zzckn;
        this.zzdid = zzazo;
        this.zzdie = zzcqr;
        this.zzdic = zzdrz;
    }

    public static void zza(Activity activity, zzc zzc, zzbg zzbg, zzcqr zzcqr, zzckn zzckn, zzdrz zzdrz, String str, String str2) {
        String str3;
        String str4;
        String str5;
        String str6;
        zzr.zzkr();
        AlertDialog.Builder zzc2 = zzj.zzc(activity, zzr.zzkt().zzzf());
        Resources resources = zzr.zzkv().getResources();
        if (resources == null) {
            str3 = "Open ad when you're back online.";
        } else {
            str3 = resources.getString(R.string.offline_opt_in_title);
        }
        AlertDialog.Builder title = zzc2.setTitle(str3);
        if (resources == null) {
            str4 = "We'll send you a notification with a link to the advertiser site.";
        } else {
            str4 = resources.getString(R.string.offline_opt_in_message);
        }
        AlertDialog.Builder message = title.setMessage(str4);
        if (resources == null) {
            str5 = "OK";
        } else {
            str5 = resources.getString(R.string.offline_opt_in_confirm);
        }
        AlertDialog.Builder positiveButton = message.setPositiveButton(str5, new zzcre(zzckn, activity, zzdrz, zzcqr, str, zzbg, str2, resources, zzc));
        if (resources == null) {
            str6 = "No thanks";
        } else {
            str6 = resources.getString(R.string.offline_opt_in_decline);
        }
        positiveButton.setNegativeButton(str6, new zzcrd(zzcqr, str, zzckn, activity, zzdrz, zzc)).setOnCancelListener(new zzcrg(zzcqr, str, zzckn, activity, zzdrz, zzc));
        zzc2.create().show();
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzc(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            zzr.zzkr();
            boolean zzba = zzj.zzba(this.context);
            int i = zzcrh.zzgso;
            HashMap hashMap = new HashMap();
            if (stringExtra.equals("offline_notification_clicked")) {
                hashMap.put("offline_notification_action", "offline_notification_clicked");
                if (zzba) {
                    i = zzcrh.zzgsn;
                }
                hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                hashMap.put("olaih", String.valueOf(stringExtra3.startsWith(HttpHost.DEFAULT_SCHEME_NAME)));
                try {
                    Context context2 = this.context;
                    Intent launchIntentForPackage = context2.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                    if (launchIntentForPackage == null) {
                        launchIntentForPackage = new Intent("android.intent.action.VIEW");
                        launchIntentForPackage.setData(Uri.parse(stringExtra3));
                    }
                    launchIntentForPackage.addFlags(268435456);
                    context2.startActivity(launchIntentForPackage);
                    hashMap.put("olaa", "olas");
                } catch (ActivityNotFoundException unused) {
                    hashMap.put("olaa", "olaf");
                }
            } else {
                hashMap.put("offline_notification_action", "offline_notification_dismissed");
            }
            zza(stringExtra2, "offline_notification_action", hashMap);
            try {
                SQLiteDatabase writableDatabase = this.zzdie.getWritableDatabase();
                if (i == zzcrh.zzgsn) {
                    this.zzdie.zza(writableDatabase, this.zzdid, stringExtra2);
                } else {
                    zzcqr.zza(writableDatabase, stringExtra2);
                }
            } catch (SQLiteException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(valueOf.length() + 51);
                sb.append("Failed to get writable offline buffering database: ");
                sb.append(valueOf);
                zzazk.zzev(sb.toString());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzvt() {
        this.zzdie.zza(this.zzdid);
    }

    public static void zza(Context context2, zzckn zzckn, zzdrz zzdrz, zzcqr zzcqr, String str, String str2) {
        zza(context2, zzckn, zzdrz, zzcqr, str, str2, new HashMap());
    }

    public static void zza(Context context2, zzckn zzckn, zzdrz zzdrz, zzcqr zzcqr, String str, String str2, Map<String, String> map) {
        String str3;
        String str4 = "online";
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
            zzdsa zzu = zzdsa.zzgx(str2).zzu("gqi", str);
            zzr.zzkr();
            if (!zzj.zzba(context2)) {
                str4 = "offline";
            }
            zzdsa zzu2 = zzu.zzu("device_connectivity", str4).zzu("event_timestamp", String.valueOf(zzr.zzky().a()));
            for (Map.Entry<String, String> entry : map.entrySet()) {
                zzu2.zzu(entry.getKey(), entry.getValue());
            }
            str3 = zzdrz.zzc(zzu2);
        } else {
            zzckq zzaqr = zzckn.zzaqr();
            zzaqr.zzr("gqi", str);
            zzaqr.zzr("action", str2);
            zzr.zzkr();
            if (!zzj.zzba(context2)) {
                str4 = "offline";
            }
            zzaqr.zzr("device_connectivity", str4);
            zzaqr.zzr("event_timestamp", String.valueOf(zzr.zzky().a()));
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                zzaqr.zzr(entry2.getKey(), entry2.getValue());
            }
            str3 = zzaqr.zzaqu();
        }
        zzcqr.zza(new zzcrc(zzr.zzky().a(), str, str3, zzcqs.zzgru));
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzc(zv zvVar, String str, String str2) {
        String str3;
        String str4;
        Context context2 = (Context) aw.P(zvVar);
        int i = Build.VERSION.SDK_INT >= 23 ? 1140850688 : 1073741824;
        Intent intent = new Intent();
        intent.setClass(context2, AdService.class);
        intent.setAction("offline_notification_clicked");
        intent.putExtra("offline_notification_action", "offline_notification_clicked");
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str);
        PendingIntent service = zzdvn.getService(context2, 0, intent, i);
        Intent intent2 = new Intent();
        intent2.setClass(context2, AdService.class);
        intent2.setAction("offline_notification_dismissed");
        intent2.putExtra("offline_notification_action", "offline_notification_dismissed");
        intent2.putExtra("gws_query_id", str2);
        PendingIntent service2 = zzdvn.getService(context2, 0, intent2, i);
        Resources resources = zzr.zzkv().getResources();
        g gVar = new g(context2, "offline_notification_channel");
        if (resources == null) {
            str3 = "View the ad you saved when you were offline";
        } else {
            str3 = resources.getString(R.string.offline_notification_title);
        }
        gVar.g(str3);
        if (resources == null) {
            str4 = "Tap to open ad";
        } else {
            str4 = resources.getString(R.string.offline_notification_text);
        }
        gVar.f(str4);
        gVar.c(true);
        gVar.h(service2);
        gVar.e(service);
        gVar.k(context2.getApplicationInfo().icon);
        ((NotificationManager) context2.getSystemService("notification")).notify(str2, 54321, gVar.a());
        zza(str2, "offline_notification_impression", new HashMap());
    }

    private final void zza(String str, String str2, Map<String, String> map) {
        zza(this.context, this.zzdib, this.zzdic, this.zzdie, str, str2, map);
    }
}
