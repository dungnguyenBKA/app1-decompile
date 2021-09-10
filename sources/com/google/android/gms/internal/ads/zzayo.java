package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.util.zzi;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzayo {
    private Context context;
    private final Object lock = new Object();
    private zzazn zzbpn;
    private final zzayy zzebw;
    private final zzi zzece;
    private zzabs zzecf;
    private Boolean zzecg;
    private final AtomicInteger zzech;
    private final zzayt zzeci;
    private final Object zzecj;
    private zzdzw<ArrayList<String>> zzeck;
    private boolean zzzl;

    public zzayo() {
        zzi zzi = new zzi();
        this.zzece = zzi;
        this.zzebw = new zzayy(zzwr.zzqs(), zzi);
        this.zzzl = false;
        this.zzecf = null;
        this.zzecg = null;
        this.zzech = new AtomicInteger(0);
        this.zzeci = new zzayt(null);
        this.zzecj = new Object();
    }

    @TargetApi(VungleException.NO_SPACE_TO_INIT)
    private static ArrayList<String> zzah(Context context2) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            PackageInfo e = yv.a(context2).e(context2.getApplicationInfo().packageName, 4096);
            if (e.requestedPermissions != null && e.requestedPermissionsFlags != null) {
                int i = 0;
                while (true) {
                    String[] strArr = e.requestedPermissions;
                    if (i >= strArr.length) {
                        break;
                    }
                    if ((e.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(strArr[i]);
                    }
                    i++;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }

    public final Context getApplicationContext() {
        return this.context;
    }

    public final Resources getResources() {
        if (this.zzbpn.zzeia) {
            return this.context.getResources();
        }
        try {
            zzazj.zzbt(this.context).getResources();
            return null;
        } catch (zzazl e) {
            zzazk.zzd("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final void zza(Boolean bool) {
        synchronized (this.lock) {
            this.zzecg = bool;
        }
    }

    public final void zzb(Throwable th, String str) {
        zzass.zzc(this.context, this.zzbpn).zza(th, str, zzadr.zzdew.get().floatValue());
    }

    @TargetApi(VungleException.ASSET_DOWNLOAD_RECOVERABLE)
    public final void zzd(Context context2, zzazn zzazn) {
        zzabs zzabs;
        synchronized (this.lock) {
            if (!this.zzzl) {
                this.context = context2.getApplicationContext();
                this.zzbpn = zzazn;
                zzr.zzku().zza(this.zzebw);
                this.zzece.initialize(this.context);
                zzass.zzc(this.context, this.zzbpn);
                zzr.zzla();
                if (!zzadf.zzddi.get().booleanValue()) {
                    zzd.zzeb("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    zzabs = null;
                } else {
                    zzabs = new zzabs();
                }
                this.zzecf = zzabs;
                if (zzabs != null) {
                    zzazw.zza(new zzayq(this).zzye(), "AppState.registerCsiReporter");
                }
                this.zzzl = true;
                zzxt();
            }
        }
        zzr.zzkr().zzq(context2, zzazn.zzbrp);
    }

    public final zzabs zzxm() {
        zzabs zzabs;
        synchronized (this.lock) {
            zzabs = this.zzecf;
        }
        return zzabs;
    }

    public final Boolean zzxn() {
        Boolean bool;
        synchronized (this.lock) {
            bool = this.zzecg;
        }
        return bool;
    }

    public final void zzxo() {
        this.zzeci.zzxo();
    }

    public final void zzxp() {
        this.zzech.incrementAndGet();
    }

    public final void zzxq() {
        this.zzech.decrementAndGet();
    }

    public final int zzxr() {
        return this.zzech.get();
    }

    public final zzf zzxs() {
        zzi zzi;
        synchronized (this.lock) {
            zzi = this.zzece;
        }
        return zzi;
    }

    public final zzdzw<ArrayList<String>> zzxt() {
        if (this.context != null) {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcse)).booleanValue()) {
                synchronized (this.zzecj) {
                    zzdzw<ArrayList<String>> zzdzw = this.zzeck;
                    if (zzdzw != null) {
                        return zzdzw;
                    }
                    zzdzw<ArrayList<String>> zze = zzazp.zzeic.zze(new zzayr(this));
                    this.zzeck = zze;
                    return zze;
                }
            }
        }
        return zzdzk.zzag(new ArrayList());
    }

    public final zzayy zzxu() {
        return this.zzebw;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ ArrayList zzxv() {
        return zzah(zzaul.zzx(this.context));
    }

    public final void zza(Throwable th, String str) {
        zzass.zzc(this.context, this.zzbpn).zza(th, str);
    }
}
