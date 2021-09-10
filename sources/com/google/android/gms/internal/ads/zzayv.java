package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import javax.annotation.concurrent.GuardedBy;

public final class zzayv {
    private final Object lock = new Object();
    private long zzeda = -1;
    private long zzedb = -1;
    @GuardedBy("lock")
    private int zzedc = -1;
    int zzedd = -1;
    private long zzede = 0;
    private final String zzedf;
    private final zzf zzedg;
    @GuardedBy("lock")
    private int zzedh = 0;
    @GuardedBy("lock")
    private int zzedi = 0;

    public zzayv(String str, zzf zzf) {
        this.zzedf = str;
        this.zzedg = zzf;
    }

    private static boolean zzai(Context context) {
        Context zzx = zzaul.zzx(context);
        int identifier = zzx.getResources().getIdentifier("Theme.Translucent", "style", "android");
        if (identifier == 0) {
            zzazk.zzew("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == zzx.getPackageManager().getActivityInfo(new ComponentName(zzx.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                return true;
            }
            zzazk.zzew("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            zzazk.zzex("Fail to fetch AdActivity theme");
            zzazk.zzew("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }

    public final void zza(zzvl zzvl, long j) {
        Bundle bundle;
        synchronized (this.lock) {
            long zzyo = this.zzedg.zzyo();
            long a = zzr.zzky().a();
            if (this.zzedb == -1) {
                if (a - zzyo > ((Long) zzwr.zzqr().zzd(zzabp.zzcpm)).longValue()) {
                    this.zzedd = -1;
                } else {
                    this.zzedd = this.zzedg.zzyp();
                }
                this.zzedb = j;
                this.zzeda = j;
            } else {
                this.zzeda = j;
            }
            if (zzvl == null || (bundle = zzvl.extras) == null || bundle.getInt("gw", 2) != 1) {
                this.zzedc++;
                int i = this.zzedd + 1;
                this.zzedd = i;
                if (i == 0) {
                    this.zzede = 0;
                    this.zzedg.zzfa(a);
                } else {
                    this.zzede = a - this.zzedg.zzyq();
                }
            }
        }
    }

    public final Bundle zzn(Context context, String str) {
        Bundle bundle;
        synchronized (this.lock) {
            bundle = new Bundle();
            bundle.putString("session_id", this.zzedg.zzyu() ? "" : this.zzedf);
            bundle.putLong("basets", this.zzedb);
            bundle.putLong("currts", this.zzeda);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.zzedc);
            bundle.putInt("preqs_in_session", this.zzedd);
            bundle.putLong("time_in_session", this.zzede);
            bundle.putInt("pclick", this.zzedh);
            bundle.putInt("pimp", this.zzedi);
            bundle.putBoolean("support_transparent_background", zzai(context));
        }
        return bundle;
    }

    public final void zzxi() {
        synchronized (this.lock) {
            this.zzedi++;
        }
    }

    public final void zzxj() {
        synchronized (this.lock) {
            this.zzedh++;
        }
    }
}
