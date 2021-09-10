package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public final class zzen implements zzer {
    public static final String[] zza = {"key", "value"};
    private static final Map<Uri, zzen> zzb = new x();
    private final ContentResolver zzc;
    private final Uri zzd;
    private final ContentObserver zze;
    private final Object zzf = new Object();
    private volatile Map<String, String> zzg;
    private final List<zzeo> zzh = new ArrayList();

    private zzen(ContentResolver contentResolver, Uri uri) {
        zzem zzem = new zzem(this, null);
        this.zze = zzem;
        Objects.requireNonNull(contentResolver);
        Objects.requireNonNull(uri);
        this.zzc = contentResolver;
        this.zzd = uri;
        contentResolver.registerContentObserver(uri, false, zzem);
    }

    public static zzen zza(ContentResolver contentResolver, Uri uri) {
        zzen zzen;
        synchronized (zzen.class) {
            Map<Uri, zzen> map = zzb;
            zzen = map.get(uri);
            if (zzen == null) {
                try {
                    zzen zzen2 = new zzen(contentResolver, uri);
                    try {
                        map.put(uri, zzen2);
                    } catch (SecurityException unused) {
                    }
                    zzen = zzen2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return zzen;
    }

    static synchronized void zzd() {
        synchronized (zzen.class) {
            for (zzen zzen : zzb.values()) {
                zzen.zzc.unregisterContentObserver(zzen.zze);
            }
            zzb.clear();
        }
    }

    /* JADX INFO: finally extract failed */
    public final Map<String, String> zzb() {
        Map<String, String> map;
        Map<String, String> map2 = this.zzg;
        if (map2 == null) {
            synchronized (this.zzf) {
                map2 = this.zzg;
                if (map2 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        map = (Map) zzep.zza(new zzel(this));
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    } catch (SQLiteException | IllegalStateException | SecurityException unused) {
                        Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        map = null;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        throw th;
                    }
                    this.zzg = map;
                    map2 = map;
                }
            }
        }
        if (map2 != null) {
            return map2;
        }
        return Collections.emptyMap();
    }

    public final void zzc() {
        synchronized (this.zzf) {
            this.zzg = null;
            zzfg.zzc();
        }
        synchronized (this) {
            for (zzeo zzeo : this.zzh) {
                zzeo.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzer
    public final /* bridge */ /* synthetic */ Object zze(String str) {
        return zzb().get(str);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Map zzf() {
        Cursor query = this.zzc.query(this.zzd, zza, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map xVar = count <= 256 ? new x(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                xVar.put(query.getString(0), query.getString(1));
            }
            query.close();
            return xVar;
        } finally {
            query.close();
        }
    }
}
