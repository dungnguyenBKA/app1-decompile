package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.b;
import androidx.browser.customtabs.d;
import androidx.browser.customtabs.e;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzacp implements zzeqp {
    private e zzdbp;
    private b zzdbq;
    private d zzdbr;
    private zzaco zzdbs;

    public static boolean zzj(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (!(queryIntentActivities == null || resolveActivity == null)) {
            for (int i = 0; i < queryIntentActivities.size(); i++) {
                if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                    return resolveActivity.activityInfo.packageName.equals(zzeqn.zzcl(context));
                }
            }
        }
        return false;
    }

    public final void zza(zzaco zzaco) {
        this.zzdbs = zzaco;
    }

    public final void zzc(Activity activity) {
        d dVar = this.zzdbr;
        if (dVar != null) {
            activity.unbindService(dVar);
            this.zzdbq = null;
            this.zzdbp = null;
            this.zzdbr = null;
        }
    }

    public final void zzd(Activity activity) {
        String zzcl;
        if (this.zzdbq == null && (zzcl = zzeqn.zzcl(activity)) != null) {
            zzeqq zzeqq = new zzeqq(this);
            this.zzdbr = zzeqq;
            Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
            if (!TextUtils.isEmpty(zzcl)) {
                intent.setPackage(zzcl);
            }
            activity.bindService(intent, zzeqq, 33);
        }
    }

    public final e zzsv() {
        b bVar = this.zzdbq;
        if (bVar == null) {
            this.zzdbp = null;
        } else if (this.zzdbp == null) {
            this.zzdbp = bVar.a(null);
        }
        return this.zzdbp;
    }

    @Override // com.google.android.gms.internal.ads.zzeqp
    public final void zzsw() {
        this.zzdbq = null;
        this.zzdbp = null;
        zzaco zzaco = this.zzdbs;
        if (zzaco != null) {
            zzaco.zzsu();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeqp
    public final void zza(b bVar) {
        this.zzdbq = bVar;
        bVar.b(0);
        zzaco zzaco = this.zzdbs;
        if (zzaco != null) {
            zzaco.zzst();
        }
    }
}
