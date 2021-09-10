package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.facebook.ads.AdError;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

public final class zzdvc {
    private static final HashMap<String, Class<?>> zzhux = new HashMap<>();
    private final Context context;
    private final zzdvb zzhuj;
    private final zzdsx zzhuy;
    private zzduq zzhuz;
    private final Object zzhva = new Object();
    private final zzdsy zzvs;

    public zzdvc(Context context2, zzdvb zzdvb, zzdsy zzdsy, zzdsx zzdsx) {
        this.context = context2;
        this.zzhuj = zzdvb;
        this.zzvs = zzdsy;
        this.zzhuy = zzdsx;
    }

    private final synchronized Class<?> zza(zzdup zzdup) {
        if (zzdup.zzayk() != null) {
            String zzdg = zzdup.zzayk().zzdg();
            HashMap<String, Class<?>> hashMap = zzhux;
            Class<?> cls = hashMap.get(zzdg);
            if (cls != null) {
                return cls;
            }
            try {
                if (this.zzhuy.zzb(zzdup.zzayl())) {
                    try {
                        File zzaym = zzdup.zzaym();
                        if (!zzaym.exists()) {
                            zzaym.mkdirs();
                        }
                        Class loadClass = new DexClassLoader(zzdup.zzayl().getAbsolutePath(), zzaym.getAbsolutePath(), null, this.context.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                        hashMap.put(zzdg, loadClass);
                        return loadClass;
                    } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                        throw new zzduz((int) AdError.REMOTE_ADS_SERVICE_ERROR, e);
                    }
                } else {
                    throw new zzduz(2026, "VM did not pass signature verification");
                }
            } catch (GeneralSecurityException e2) {
                throw new zzduz(2026, e2);
            }
        } else {
            throw new zzduz(4010, "mc");
        }
    }

    public final zzdte zzayv() {
        zzduq zzduq;
        synchronized (this.zzhva) {
            zzduq = this.zzhuz;
        }
        return zzduq;
    }

    public final zzdup zzayw() {
        synchronized (this.zzhva) {
            zzduq zzduq = this.zzhuz;
            if (zzduq == null) {
                return null;
            }
            return zzduq.zzayo();
        }
    }

    public final void zzb(zzdup zzdup) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            zzduq zzduq = new zzduq(zza(zza(zzdup), zzdup), zzdup, this.zzhuj, this.zzvs);
            if (zzduq.zzayp()) {
                int zzayq = zzduq.zzayq();
                if (zzayq == 0) {
                    synchronized (this.zzhva) {
                        zzduq zzduq2 = this.zzhuz;
                        if (zzduq2 != null) {
                            try {
                                zzduq2.close();
                            } catch (zzduz e) {
                                this.zzvs.zza(e.zzayu(), -1, e);
                            }
                        }
                        this.zzhuz = zzduq;
                    }
                    this.zzvs.zzh(3000, System.currentTimeMillis() - currentTimeMillis);
                    return;
                }
                StringBuilder sb = new StringBuilder(15);
                sb.append("ci: ");
                sb.append(zzayq);
                throw new zzduz(4001, sb.toString());
            }
            throw new zzduz(4000, "init failed");
        } catch (zzduz e2) {
            this.zzvs.zza(e2.zzayu(), System.currentTimeMillis() - currentTimeMillis, e2);
        } catch (Exception e3) {
            this.zzvs.zza(4010, System.currentTimeMillis() - currentTimeMillis, e3);
        }
    }

    private final Object zza(Class<?> cls, zzdup zzdup) {
        try {
            return cls.getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.context, "msa-r", zzdup.zzayn(), null, new Bundle(), 2);
        } catch (Exception e) {
            throw new zzduz((int) AdError.INTERNAL_ERROR_2004, e);
        }
    }
}
