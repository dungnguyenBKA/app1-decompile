package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzcin {
    private final zzcim zzgkk;
    private final AtomicReference<zzane> zzgkl = new AtomicReference<>();

    zzcin(zzcim zzcim) {
        this.zzgkk = zzcim;
    }

    private final zzane zzapu() {
        zzane zzane = this.zzgkl.get();
        if (zzane != null) {
            return zzane;
        }
        zzazk.zzex("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    private final zzanj zze(String str, JSONObject jSONObject) {
        zzane zzapu = zzapu();
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                if (zzapu.zzde(jSONObject.getString("class_name"))) {
                    return zzapu.zzdd("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
                }
                return zzapu.zzdd("com.google.ads.mediation.customevent.CustomEventAdapter");
            } catch (JSONException e) {
                zzazk.zzc("Invalid custom event.", e);
            }
        }
        return zzapu.zzdd(str);
    }

    public final boolean zzapt() {
        return this.zzgkl.get() != null;
    }

    public final void zzb(zzane zzane) {
        this.zzgkl.compareAndSet(null, zzane);
    }

    public final zzdog zzd(String str, JSONObject jSONObject) {
        zzanj zzanj;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                zzanj = new zzaoa(new AdMobAdapter());
            } else if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                zzanj = new zzaoa(new AdUrlAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                zzanj = new zzaoa(new zzaqa());
            } else {
                zzanj = zze(str, jSONObject);
            }
            zzdog zzdog = new zzdog(zzanj);
            this.zzgkk.zza(str, zzdog);
            return zzdog;
        } catch (Throwable th) {
            throw new zzdnt(th);
        }
    }

    public final zzapk zzdf(String str) {
        zzapk zzdf = zzapu().zzdf(str);
        this.zzgkk.zza(str, zzdf);
        return zzdf;
    }
}
