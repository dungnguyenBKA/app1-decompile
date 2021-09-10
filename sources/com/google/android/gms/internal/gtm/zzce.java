package com.google.android.gms.internal.gtm;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.analytics.q;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.util.h;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.apache.http.protocol.HTTP;

/* access modifiers changed from: package-private */
public final class zzce extends zzbs implements Closeable {
    private static final String zza = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");
    private static final String zzb = String.format("SELECT MAX(%s) FROM %s WHERE 1;", "hit_time", "hits2");
    private final zzcd zzc;
    private final zzfo zzd = new zzfo(zzC());
    private final zzfo zze = new zzfo(zzC());

    zzce(zzbv zzbv) {
        super(zzbv);
        this.zzc = new zzcd(this, zzbv.zza(), zzae());
    }

    private final long zzad(String str, String[] strArr, long j) {
        Cursor cursor = null;
        try {
            Cursor rawQuery = zzf().rawQuery(str, strArr);
            if (rawQuery.moveToFirst()) {
                long j2 = rawQuery.getLong(0);
                rawQuery.close();
                return j2;
            }
            rawQuery.close();
            return 0;
        } catch (SQLiteException e) {
            zzL("Database error", str, e);
            throw e;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final String zzae() {
        zzw();
        zzw();
        return "google_analytics_v4.db";
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.zzc.close();
        } catch (SQLiteException e) {
            zzK("Sql error closing database", e);
        } catch (IllegalStateException e2) {
            zzK("Error closing database", e2);
        }
    }

    public final void zzZ(List<Long> list) {
        Objects.requireNonNull(list, "null reference");
        q.h();
        zzW();
        if (!list.isEmpty()) {
            StringBuilder sb = new StringBuilder("hit_id");
            sb.append(" in (");
            for (int i = 0; i < list.size(); i++) {
                Long l = list.get(i);
                if (l == null || l.longValue() == 0) {
                    throw new SQLiteException("Invalid hit id");
                }
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(l);
            }
            sb.append(")");
            String sb2 = sb.toString();
            try {
                SQLiteDatabase zzf = zzf();
                zzP("Deleting dispatched hits. count", Integer.valueOf(list.size()));
                int delete = zzf.delete("hits2", sb2, null);
                if (delete != list.size()) {
                    zzU("Deleted fewer hits then expected", Integer.valueOf(list.size()), Integer.valueOf(delete), sb2);
                }
            } catch (SQLiteException e) {
                zzK("Error deleting hits", e);
                throw e;
            }
        }
    }

    public final int zza() {
        q.h();
        zzW();
        if (!this.zzd.zzc(86400000)) {
            return 0;
        }
        this.zzd.zzb();
        zzO("Deleting stale hits (if any)");
        int delete = zzf().delete("hits2", "hit_time < ?", new String[]{Long.toString(zzC().a() - 2592000000L)});
        zzP("Deleted stale hits, count", Integer.valueOf(delete));
        return delete;
    }

    public final void zzaa() {
        zzW();
        zzf().endTransaction();
    }

    public final void zzab() {
        zzW();
        zzf().setTransactionSuccessful();
    }

    /* access modifiers changed from: package-private */
    public final boolean zzac() {
        return zzb() == 0;
    }

    public final long zzb() {
        q.h();
        zzW();
        Cursor cursor = null;
        try {
            Cursor rawQuery = zzf().rawQuery("SELECT COUNT(*) FROM hits2", null);
            if (rawQuery.moveToFirst()) {
                long j = rawQuery.getLong(0);
                rawQuery.close();
                return j;
            }
            throw new SQLiteException("Database returned empty set");
        } catch (SQLiteException e) {
            zzL("Database error", "SELECT COUNT(*) FROM hits2", e);
            throw e;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final long zzc() {
        q.h();
        zzW();
        return zzad(zzb, null, 0);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzbs
    public final void zzd() {
    }

    public final long zze(long j, String str, String str2) {
        n.e(str);
        n.e(str2);
        zzW();
        q.h();
        return zzad("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[]{"0", str, str2}, 0);
    }

    /* access modifiers changed from: package-private */
    public final SQLiteDatabase zzf() {
        try {
            return this.zzc.getWritableDatabase();
        } catch (SQLiteException e) {
            zzS("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x00a1  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.internal.gtm.zzex> zzj(long r17) {
        /*
        // Method dump skipped, instructions count: 167
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzce.zzj(long):java.util.List");
    }

    /* access modifiers changed from: package-private */
    public final Map<String, String> zzk(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            if (!str.startsWith("?")) {
                str = str.length() != 0 ? "?".concat(str) : new String("?");
            }
            return h.a(new URI(str), HTTP.UTF_8);
        } catch (URISyntaxException e) {
            zzK("Error parsing hit parameters", e);
            return new HashMap(0);
        }
    }

    /* access modifiers changed from: package-private */
    public final Map<String, String> zzl(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                str2 = "?".concat(valueOf);
            } else {
                str2 = new String("?");
            }
            return h.a(new URI(str2), HTTP.UTF_8);
        } catch (URISyntaxException e) {
            zzK("Error parsing property parameters", e);
            return new HashMap(0);
        }
    }

    public final void zzm() {
        zzW();
        zzf().beginTransaction();
    }

    public final void zzn(long j) {
        q.h();
        zzW();
        ArrayList arrayList = new ArrayList(1);
        Long valueOf = Long.valueOf(j);
        arrayList.add(valueOf);
        zzP("Deleting hit, id", valueOf);
        zzZ(arrayList);
    }
}
