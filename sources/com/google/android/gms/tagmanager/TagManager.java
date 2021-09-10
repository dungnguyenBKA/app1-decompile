package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.RecentlyNonNull;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class TagManager {
    private static TagManager zza;
    private final Context zzc;
    private final DataLayer zzd;
    private final zzey zze;
    private final ConcurrentMap<String, zzaa> zzf = new ConcurrentHashMap();

    TagManager(Context context, zzfp zzfp, DataLayer dataLayer, zzey zzey) {
        Context applicationContext = context.getApplicationContext();
        this.zzc = applicationContext;
        this.zze = zzey;
        this.zzd = dataLayer;
        dataLayer.zzg(new zzfm(this));
        dataLayer.zzg(new zzg(applicationContext));
        Objects.requireNonNull(applicationContext, "null reference");
        applicationContext.registerComponentCallbacks(new zzfo(this));
        zzd.zzb(applicationContext);
    }

    @RecentlyNonNull
    public static TagManager getInstance(@RecentlyNonNull Context context) {
        TagManager tagManager;
        synchronized (TagManager.class) {
            if (zza == null) {
                zza = new TagManager(context, new zzfn(), new DataLayer(new zzbe(context)), zzff.zzg());
            }
            tagManager = zza;
        }
        return tagManager;
    }

    static void zzb(TagManager tagManager, String str) {
        Objects.requireNonNull(tagManager.zzf, "null reference");
        for (zzaa zzaa : tagManager.zzf.values()) {
            zzaa.zzd(str);
        }
    }

    public void dispatch() {
        synchronized (((zzff) this.zze)) {
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean zzd(Uri uri) {
        zzea zza2 = zzea.zza();
        if (!zza2.zzd(uri)) {
            return false;
        }
        String zzc2 = zza2.zzc();
        int zze2 = zza2.zze();
        int i = zze2 - 1;
        if (zze2 != 0) {
            if (i == 0) {
                zzaa zzaa = this.zzf.get(zzc2);
                if (zzaa != null) {
                    zzaa.zze(null);
                    zzaa.refresh();
                }
            } else if (i == 1 || i == 2) {
                for (String str : this.zzf.keySet()) {
                    zzaa zzaa2 = this.zzf.get(str);
                    if (str.equals(zzc2)) {
                        zzaa2.zze(zza2.zzb());
                        zzaa2.refresh();
                    } else {
                        zzaa2.zzb();
                        zzaa2.zze(null);
                        zzaa2.refresh();
                    }
                }
            }
            return true;
        }
        throw null;
    }
}
