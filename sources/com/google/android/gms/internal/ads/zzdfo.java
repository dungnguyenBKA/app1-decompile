package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.c;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* access modifiers changed from: package-private */
public final class zzdfo implements zzdfi<zzdfp> {
    private final Context context;
    private final zzdzv zzghl;

    public zzdfo(zzdzv zzdzv, Context context2) {
        this.zzghl = zzdzv;
        this.context = context2;
    }

    private static String zza(Context context2, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo zza = zza(packageManager, "market://details?id=com.google.android.gms.ads");
        if (zza == null || (activityInfo = zza.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo e = yv.a(context2).e(activityInfo.packageName, 0);
            if (e != null) {
                int i = e.versionCode;
                String str = activityInfo.packageName;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
                sb.append(i);
                sb.append(".");
                sb.append(str);
                return sb.toString();
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    private static String zzu(Context context2) {
        try {
            PackageInfo e = yv.a(context2).e("com.android.vending", 128);
            if (e != null) {
                int i = e.versionCode;
                String str = e.packageName;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
                sb.append(i);
                sb.append(".");
                sb.append(str);
                return sb.toString();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfp> zzasy() {
        return this.zzghl.zze(new zzdfr(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdfp zzatr() {
        boolean z;
        PackageManager packageManager = this.context.getPackageManager();
        Locale locale = Locale.getDefault();
        boolean z2 = zza(packageManager, "geo:0,0?q=donuts") != null;
        boolean z3 = zza(packageManager, "http://www.google.com") != null;
        String country = locale.getCountry();
        boolean startsWith = Build.DEVICE.startsWith("generic");
        boolean e = c.e(this.context);
        boolean f = c.f(this.context);
        String language = locale.getLanguage();
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList localeList = LocaleList.getDefault();
            for (int i = 0; i < localeList.size(); i++) {
                arrayList.add(localeList.get(i).getLanguage());
            }
        }
        String zza = zza(this.context, packageManager);
        String zzu = zzu(this.context);
        String str = Build.FINGERPRINT;
        Context context2 = this.context;
        if (packageManager != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            if (!(queryIntentActivities == null || resolveActivity == null)) {
                int i2 = 0;
                while (true) {
                    if (i2 >= queryIntentActivities.size()) {
                        break;
                    } else if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i2).activityInfo.name)) {
                        z = resolveActivity.activityInfo.packageName.equals(zzeqn.zzcl(context2));
                        break;
                    } else {
                        i2++;
                    }
                }
                return new zzdfp(z2, z3, country, startsWith, e, f, language, arrayList, zza, zzu, str, z, Build.MODEL, zzr.zzkt().zzzg());
            }
        }
        z = false;
        return new zzdfp(z2, z3, country, startsWith, e, f, language, arrayList, zza, zzu, str, z, Build.MODEL, zzr.zzkt().zzzg());
    }

    private static ResolveInfo zza(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }
}
