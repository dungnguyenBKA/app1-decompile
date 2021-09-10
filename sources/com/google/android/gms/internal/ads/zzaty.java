package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.c;
import com.vungle.warren.model.ReportDBAdapter;
import java.util.Locale;

public final class zzaty {
    private float zzbsd;
    private int zzdqi;
    private int zzdqj;
    private int zzdxv;
    private boolean zzdxw;
    private boolean zzdxx;
    private int zzdxy;
    private int zzdxz;
    private int zzdya;
    private String zzdyb;
    private int zzdyc;
    private int zzdyd;
    private int zzdye;
    private boolean zzdyf;
    private int zzdyg;
    private double zzdyh;
    private boolean zzdyi;
    private String zzdyj;
    private String zzdyk;
    private boolean zzdyl;
    private boolean zzdym;
    private String zzdyn;
    private boolean zzdyo;
    private final boolean zzdyp;
    private boolean zzdyq;
    private String zzdyr;
    private String zzdys;
    private String zzdyt;
    private boolean zzdyu;

    public zzaty(Context context) {
        DisplayMetrics displayMetrics;
        PackageManager packageManager = context.getPackageManager();
        zzr(context);
        zzs(context);
        zzt(context);
        Locale locale = Locale.getDefault();
        boolean z = true;
        this.zzdyl = zza(packageManager, "geo:0,0?q=donuts") != null;
        this.zzdym = zza(packageManager, "http://www.google.com") == null ? false : z;
        this.zzdyn = locale.getCountry();
        zzwr.zzqn();
        this.zzdyo = zzaza.zzzw();
        this.zzdyp = c.e(context);
        this.zzdyq = c.f(context);
        this.zzdyr = locale.getLanguage();
        this.zzdys = zza(context, packageManager);
        this.zzdyt = zzu(context);
        Resources resources = context.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            this.zzbsd = displayMetrics.density;
            this.zzdqi = displayMetrics.widthPixels;
            this.zzdqj = displayMetrics.heightPixels;
        }
    }

    private static String zza(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo zza = zza(packageManager, "market://details?id=com.google.android.gms.ads");
        if (zza == null || (activityInfo = zza.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo e = yv.a(context).e(activityInfo.packageName, 0);
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

    private final void zzr(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.zzdxv = audioManager.getMode();
                this.zzdxw = audioManager.isMusicActive();
                this.zzdxx = audioManager.isSpeakerphoneOn();
                this.zzdxy = audioManager.getStreamVolume(3);
                this.zzdxz = audioManager.getRingerMode();
                this.zzdya = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                zzr.zzkv().zza(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.zzdxv = -2;
        this.zzdxw = false;
        this.zzdxx = false;
        this.zzdxy = 0;
        this.zzdxz = 2;
        this.zzdya = 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0050  */
    @android.annotation.TargetApi(com.vungle.warren.error.VungleException.NO_SPACE_TO_INIT)
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzs(android.content.Context r6) {
        /*
        // Method dump skipped, instructions count: 112
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaty.zzs(android.content.Context):void");
    }

    private final void zzt(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS, -1);
            this.zzdyh = (double) (((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1)));
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
            this.zzdyi = z;
            return;
        }
        this.zzdyh = -1.0d;
        this.zzdyi = false;
    }

    private static String zzu(Context context) {
        try {
            PackageInfo e = yv.a(context).e("com.android.vending", 128);
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

    public final zzatz zzws() {
        return new zzatz(this.zzdxv, this.zzdyl, this.zzdym, this.zzdyb, this.zzdyn, this.zzdyo, this.zzdyp, this.zzdyq, this.zzdxw, this.zzdxx, this.zzdyr, this.zzdys, this.zzdyt, this.zzdxy, this.zzdyc, this.zzdyd, this.zzdye, this.zzdxz, this.zzdya, this.zzbsd, this.zzdqi, this.zzdqj, this.zzdyh, this.zzdyi, this.zzdyf, this.zzdyg, this.zzdyj, this.zzdyu, this.zzdyk);
    }

    private static ResolveInfo zza(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            zzr.zzkv().zza(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    public zzaty(Context context, zzatz zzatz) {
        zzr(context);
        zzs(context);
        zzt(context);
        this.zzdyj = Build.FINGERPRINT;
        this.zzdyk = Build.DEVICE;
        this.zzdyu = zzacp.zzj(context);
        this.zzdyl = zzatz.zzdyl;
        this.zzdym = zzatz.zzdym;
        this.zzdyn = zzatz.zzdyn;
        this.zzdyo = zzatz.zzdyo;
        this.zzdyp = zzatz.zzdyp;
        this.zzdyq = zzatz.zzdyq;
        this.zzdyr = zzatz.zzdyr;
        this.zzdys = zzatz.zzdys;
        this.zzdyt = zzatz.zzdyt;
        this.zzbsd = zzatz.zzbsd;
        this.zzdqi = zzatz.zzdqi;
        this.zzdqj = zzatz.zzdqj;
    }
}
