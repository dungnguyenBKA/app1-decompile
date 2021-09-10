package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.measurement.zzbt;
import com.google.android.gms.internal.measurement.zzbu;
import com.google.android.gms.internal.measurement.zzbv;
import com.google.android.gms.internal.measurement.zzbw;
import com.google.android.gms.internal.measurement.zzbx;
import com.google.android.gms.internal.measurement.zzby;
import com.google.android.gms.internal.measurement.zzce;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.internal.measurement.zzmg;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class i extends s8 {
    private static final String[] f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    private static final String[] g = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] h = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"};
    private static final String[] i = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] j = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] k = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] l = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] m = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final h d;
    private final p8 e = new p8(this.a.a());

    i(b9 b9Var) {
        super(b9Var);
        this.a.x();
        this.d = new h(this, this.a.b());
    }

    static final void G(ContentValues contentValues, String str, Object obj) {
        n.e("value");
        Objects.requireNonNull(obj, "null reference");
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put("value", (Double) obj);
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    private final long H(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            Cursor rawQuery = M().rawQuery(str, strArr);
            if (rawQuery.moveToFirst()) {
                long j2 = rawQuery.getLong(0);
                rawQuery.close();
                return j2;
            }
            throw new SQLiteException("Database returned empty set");
        } catch (SQLiteException e2) {
            this.a.c().n().c("Database error", str, e2);
            throw e2;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long I(String str, String[] strArr, long j2) {
        Cursor cursor = null;
        try {
            Cursor rawQuery = M().rawQuery(str, strArr);
            if (rawQuery.moveToFirst()) {
                long j3 = rawQuery.getLong(0);
                rawQuery.close();
                return j3;
            }
            rawQuery.close();
            return j2;
        } catch (SQLiteException e2) {
            this.a.c().n().c("Database error", str, e2);
            throw e2;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x0236  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x023e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void F(java.lang.String r22, long r23, long r25, com.google.android.gms.measurement.internal.a9 r27) {
        /*
        // Method dump skipped, instructions count: 580
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.F(java.lang.String, long, long, com.google.android.gms.measurement.internal.a9):void");
    }

    public final void J() {
        i();
        M().beginTransaction();
    }

    public final void K() {
        i();
        M().setTransactionSuccessful();
    }

    public final void L() {
        i();
        M().endTransaction();
    }

    /* access modifiers changed from: package-private */
    public final SQLiteDatabase M() {
        g();
        try {
            return this.d.getWritableDatabase();
        } catch (SQLiteException e2) {
            this.a.c().q().b("Error opening database", e2);
            throw e2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x0147  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0150  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.measurement.internal.o N(java.lang.String r28, java.lang.String r29) {
        /*
        // Method dump skipped, instructions count: 340
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.N(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.o");
    }

    public final void O(o oVar) {
        Objects.requireNonNull(oVar, "null reference");
        g();
        i();
        ContentValues contentValues = new ContentValues();
        contentValues.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, oVar.a);
        contentValues.put("name", oVar.b);
        contentValues.put("lifetime_count", Long.valueOf(oVar.c));
        contentValues.put("current_bundle_count", Long.valueOf(oVar.d));
        contentValues.put("last_fire_timestamp", Long.valueOf(oVar.f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(oVar.g));
        contentValues.put("last_bundled_day", oVar.h);
        contentValues.put("last_sampled_complex_event_id", oVar.i);
        contentValues.put("last_sampling_rate", oVar.j);
        contentValues.put("current_session_count", Long.valueOf(oVar.e));
        Boolean bool = oVar.k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (M().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                this.a.c().n().b("Failed to insert/update event aggregates (got -1). appId", i3.w(oVar.a));
            }
        } catch (SQLiteException e2) {
            this.a.c().n().c("Error storing event aggregates. appId", i3.w(oVar.a), e2);
        }
    }

    public final void P(String str, String str2) {
        n.e(str);
        n.e(str2);
        g();
        i();
        try {
            M().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            this.a.c().n().d("Error deleting user property. appId", i3.w(str), this.a.F().q(str2), e2);
        }
    }

    public final boolean Q(f9 f9Var) {
        g();
        i();
        if (R(f9Var.a, f9Var.c) == null) {
            if (h9.e0(f9Var.c)) {
                if (H("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{f9Var.a}) >= ((long) this.a.x().s(f9Var.a, v2.G, 25, 100))) {
                    return false;
                }
            } else if (!"_npa".equals(f9Var.c)) {
                long H = H("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{f9Var.a, f9Var.b});
                this.a.x();
                if (H >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, f9Var.a);
        contentValues.put("origin", f9Var.b);
        contentValues.put("name", f9Var.c);
        contentValues.put("set_timestamp", Long.valueOf(f9Var.d));
        G(contentValues, "value", f9Var.e);
        try {
            if (M().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                this.a.c().n().b("Failed to insert/update user property (got -1). appId", i3.w(f9Var.a));
            }
        } catch (SQLiteException e2) {
            this.a.c().n().c("Error storing user property. appId", i3.w(f9Var.a), e2);
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00a6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.measurement.internal.f9 R(java.lang.String r20, java.lang.String r21) {
        /*
        // Method dump skipped, instructions count: 170
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.R(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.f9");
    }

    public final List<f9> S(String str) {
        n.e(str);
        g();
        i();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            this.a.x();
            Cursor query = M().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
            if (query.moveToFirst()) {
                do {
                    String string = query.getString(0);
                    String string2 = query.getString(1);
                    if (string2 == null) {
                        string2 = "";
                    }
                    long j2 = query.getLong(2);
                    Object l2 = l(query, 3);
                    if (l2 == null) {
                        this.a.c().n().b("Read invalid user property value, ignoring it. appId", i3.w(str));
                    } else {
                        arrayList.add(new f9(str, string2, string, j2, l2));
                    }
                } while (query.moveToNext());
                query.close();
                return arrayList;
            }
            query.close();
            return arrayList;
        } catch (SQLiteException e2) {
            this.a.c().n().c("Error querying user properties. appId", i3.w(str), e2);
            List<f9> emptyList = Collections.emptyList();
            if (0 != 0) {
                cursor.close();
            }
            return emptyList;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x011d A[DONT_GENERATE] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.measurement.internal.f9> T(java.lang.String r17, java.lang.String r18, java.lang.String r19) {
        /*
        // Method dump skipped, instructions count: 297
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.T(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    public final boolean U(zzaa zzaa) {
        g();
        i();
        String str = zzaa.b;
        Objects.requireNonNull(str, "null reference");
        if (R(str, zzaa.d.c) == null) {
            long H = H("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            this.a.x();
            if (H >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, str);
        contentValues.put("origin", zzaa.c);
        contentValues.put("name", zzaa.d.c);
        Object o = zzaa.d.o();
        Objects.requireNonNull(o, "null reference");
        G(contentValues, "value", o);
        contentValues.put("active", Boolean.valueOf(zzaa.f));
        contentValues.put("trigger_event_name", zzaa.g);
        contentValues.put("trigger_timeout", Long.valueOf(zzaa.i));
        contentValues.put("timed_out_event", this.a.E().K(zzaa.h));
        contentValues.put("creation_timestamp", Long.valueOf(zzaa.e));
        contentValues.put("triggered_event", this.a.E().K(zzaa.j));
        contentValues.put("triggered_timestamp", Long.valueOf(zzaa.d.d));
        contentValues.put("time_to_live", Long.valueOf(zzaa.k));
        contentValues.put("expired_event", this.a.E().K(zzaa.l));
        try {
            if (M().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                this.a.c().n().b("Failed to insert/update conditional user property (got -1)", i3.w(str));
            }
        } catch (SQLiteException e2) {
            this.a.c().n().c("Error storing conditional user property", i3.w(str), e2);
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0118  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0120  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.measurement.internal.zzaa V(java.lang.String r31, java.lang.String r32) {
        /*
        // Method dump skipped, instructions count: 292
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.V(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzaa");
    }

    public final int W(String str, String str2) {
        n.e(str);
        n.e(str2);
        g();
        i();
        try {
            return M().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            this.a.c().n().d("Error deleting conditional property", i3.w(str), this.a.F().q(str2), e2);
            return 0;
        }
    }

    public final List<zzaa> X(String str, String str2, String str3) {
        n.e(str);
        g();
        i();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return Y(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public final List<zzaa> Y(String str, String[] strArr) {
        g();
        i();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            SQLiteDatabase M = M();
            String[] strArr2 = {AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, "origin", "name", "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"};
            this.a.x();
            Cursor query = M.query("conditional_properties", strArr2, str, strArr, null, null, "rowid", NativeContentAd.ASSET_HEADLINE);
            if (query.moveToFirst()) {
                while (true) {
                    int size = arrayList.size();
                    this.a.x();
                    if (size < 1000) {
                        String string = query.getString(0);
                        String string2 = query.getString(1);
                        String string3 = query.getString(2);
                        Object l2 = l(query, 3);
                        boolean z = query.getInt(4) != 0;
                        String string4 = query.getString(5);
                        long j2 = query.getLong(6);
                        d9 c0 = this.b.c0();
                        byte[] blob = query.getBlob(7);
                        Parcelable.Creator<zzas> creator = zzas.CREATOR;
                        arrayList.add(new zzaa(string, string2, new zzkg(string3, query.getLong(10), l2, string2), query.getLong(8), z, string4, (zzas) c0.z(blob, creator), j2, (zzas) this.b.c0().z(query.getBlob(9), creator), query.getLong(11), (zzas) this.b.c0().z(query.getBlob(12), creator)));
                        if (!query.moveToNext()) {
                            break;
                        }
                    } else {
                        g3 n = this.a.c().n();
                        this.a.x();
                        n.b("Read more than the max allowed conditional properties, ignoring extra", Integer.valueOf((int) AdError.NETWORK_ERROR_CODE));
                        break;
                    }
                }
                query.close();
                return arrayList;
            }
            query.close();
            return arrayList;
        } catch (SQLiteException e2) {
            this.a.c().n().b("Error querying conditional user property value", e2);
            List<zzaa> emptyList = Collections.emptyList();
            if (0 != 0) {
                cursor.close();
            }
            return emptyList;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:51:0x0203  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x020b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.measurement.internal.y4 Z(java.lang.String r34) {
        /*
        // Method dump skipped, instructions count: 527
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.Z(java.lang.String):com.google.android.gms.measurement.internal.y4");
    }

    public final void a0(y4 y4Var) {
        g();
        i();
        String N = y4Var.N();
        Objects.requireNonNull(N, "null reference");
        ContentValues contentValues = new ContentValues();
        contentValues.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, N);
        contentValues.put("app_instance_id", y4Var.O());
        contentValues.put("gmp_app_id", y4Var.Q());
        contentValues.put("resettable_device_id_hash", y4Var.W());
        contentValues.put("last_bundle_index", Long.valueOf(y4Var.i()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(y4Var.a0()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(y4Var.c0()));
        contentValues.put("app_version", y4Var.e0());
        contentValues.put("app_store", y4Var.i0());
        contentValues.put("gmp_version", Long.valueOf(y4Var.k0()));
        contentValues.put("dev_cert_hash", Long.valueOf(y4Var.b()));
        contentValues.put("measurement_enabled", Boolean.valueOf(y4Var.f()));
        contentValues.put("day", Long.valueOf(y4Var.o()));
        contentValues.put("daily_public_events_count", Long.valueOf(y4Var.q()));
        contentValues.put("daily_events_count", Long.valueOf(y4Var.s()));
        contentValues.put("daily_conversions_count", Long.valueOf(y4Var.u()));
        contentValues.put("config_fetched_time", Long.valueOf(y4Var.j()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(y4Var.l()));
        contentValues.put("app_version_int", Long.valueOf(y4Var.g0()));
        contentValues.put("firebase_instance_id", y4Var.Y());
        contentValues.put("daily_error_events_count", Long.valueOf(y4Var.y()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(y4Var.w()));
        contentValues.put("health_monitor_sample", y4Var.B());
        contentValues.put("android_id", Long.valueOf(y4Var.E()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(y4Var.G()));
        contentValues.put("admob_app_id", y4Var.S());
        contentValues.put("dynamite_version", Long.valueOf(y4Var.d()));
        List<String> K = y4Var.K();
        if (K != null) {
            if (K.size() == 0) {
                this.a.c().q().b("Safelisted events should not be an empty list. appId", N);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", K));
            }
        }
        zzmg.zzb();
        if (this.a.x().u(N, v2.i0)) {
            contentValues.put("ga_app_id", y4Var.U());
        }
        try {
            SQLiteDatabase M = M();
            if (((long) M.update("apps", contentValues, "app_id = ?", new String[]{N})) == 0 && M.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                this.a.c().n().b("Failed to insert/update app (got -1). appId", i3.w(N));
            }
        } catch (SQLiteException e2) {
            this.a.c().n().c("Error storing app. appId", i3.w(N), e2);
        }
    }

    public final g b0(long j2, String str, boolean z, boolean z2) {
        return c0(j2, str, 1, false, false, z, false, z2);
    }

    public final g c0(long j2, String str, long j3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        n.e(str);
        g();
        i();
        String[] strArr = {str};
        g gVar = new g();
        Cursor cursor = null;
        try {
            SQLiteDatabase M = M();
            Cursor query = M.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
            if (!query.moveToFirst()) {
                this.a.c().q().b("Not updating daily counts, app is not known. appId", i3.w(str));
                query.close();
                return gVar;
            }
            if (query.getLong(0) == j2) {
                gVar.b = query.getLong(1);
                gVar.a = query.getLong(2);
                gVar.c = query.getLong(3);
                gVar.d = query.getLong(4);
                gVar.e = query.getLong(5);
            }
            if (z) {
                gVar.b += j3;
            }
            if (z2) {
                gVar.a += j3;
            }
            if (z3) {
                gVar.c += j3;
            }
            if (z4) {
                gVar.d += j3;
            }
            if (z5) {
                gVar.e += j3;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("day", Long.valueOf(j2));
            contentValues.put("daily_public_events_count", Long.valueOf(gVar.a));
            contentValues.put("daily_events_count", Long.valueOf(gVar.b));
            contentValues.put("daily_conversions_count", Long.valueOf(gVar.c));
            contentValues.put("daily_error_events_count", Long.valueOf(gVar.d));
            contentValues.put("daily_realtime_events_count", Long.valueOf(gVar.e));
            M.update("apps", contentValues, "app_id=?", strArr);
            query.close();
            return gVar;
        } catch (SQLiteException e2) {
            this.a.c().n().c("Error updating daily counts. appId", i3.w(str), e2);
            if (0 != 0) {
                cursor.close();
            }
            return gVar;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0036  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0040  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String d0() {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.M()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch:{ SQLiteException -> 0x0022, all -> 0x0020 }
            boolean r2 = r0.moveToFirst()     // Catch:{ SQLiteException -> 0x001e }
            if (r2 == 0) goto L_0x001a
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch:{ SQLiteException -> 0x001e }
            r0.close()
            return r1
        L_0x001a:
            r0.close()
            return r1
        L_0x001e:
            r2 = move-exception
            goto L_0x0025
        L_0x0020:
            r0 = move-exception
            goto L_0x003e
        L_0x0022:
            r0 = move-exception
            r2 = r0
            r0 = r1
        L_0x0025:
            com.google.android.gms.measurement.internal.j4 r3 = r6.a     // Catch:{ all -> 0x003a }
            com.google.android.gms.measurement.internal.i3 r3 = r3.c()     // Catch:{ all -> 0x003a }
            com.google.android.gms.measurement.internal.g3 r3 = r3.n()     // Catch:{ all -> 0x003a }
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.b(r4, r2)     // Catch:{ all -> 0x003a }
            if (r0 == 0) goto L_0x0039
            r0.close()
        L_0x0039:
            return r1
        L_0x003a:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L_0x003e:
            if (r1 == 0) goto L_0x0043
            r1.close()
        L_0x0043:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.d0():java.lang.String");
    }

    public final boolean e0() {
        return H("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    /* access modifiers changed from: package-private */
    public final void f0() {
        g();
        i();
        if (v()) {
            long a = this.a.y().h.a();
            long b = this.a.a().b();
            long abs = Math.abs(b - a);
            this.a.x();
            if (abs > v2.y.b(null).longValue()) {
                this.a.y().h.b(b);
                g();
                i();
                if (v()) {
                    SQLiteDatabase M = M();
                    this.a.x();
                    int delete = M.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(this.a.a().a()), String.valueOf(e.h())});
                    if (delete > 0) {
                        this.a.c().v().b("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                    }
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void g0(List<Long> list) {
        g();
        i();
        Objects.requireNonNull(list, "null reference");
        if (list.size() == 0) {
            throw new IllegalArgumentException("Given Integer is zero");
        } else if (v()) {
            String join = TextUtils.join(",", list);
            String n = ic.n(new StringBuilder(String.valueOf(join).length() + 2), "(", join, ")");
            if (H(ic.n(new StringBuilder(String.valueOf(n).length() + 80), "SELECT COUNT(1) FROM queue WHERE rowid IN ", n, " AND retry_count =  2147483647 LIMIT 1"), null) > 0) {
                this.a.c().q().a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase M = M();
                StringBuilder sb = new StringBuilder(String.valueOf(n).length() + 127);
                sb.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb.append(n);
                sb.append(" AND (retry_count IS NULL OR retry_count < ");
                sb.append(Integer.MAX_VALUE);
                sb.append(")");
                M.execSQL(sb.toString());
            } catch (SQLiteException e2) {
                this.a.c().n().b("Error incrementing retry count. error", e2);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.s8
    public final boolean k() {
        return false;
    }

    /* access modifiers changed from: package-private */
    public final Object l(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        if (type == 0) {
            this.a.c().n().a("Loaded invalid null value from database");
            return null;
        } else if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        } else {
            if (type == 2) {
                return Double.valueOf(cursor.getDouble(i2));
            }
            if (type == 3) {
                return cursor.getString(i2);
            }
            if (type != 4) {
                this.a.c().n().b("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            this.a.c().n().a("Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    public final long m() {
        return I("select max(bundle_end_timestamp) from queue", null, 0);
    }

    /* access modifiers changed from: protected */
    public final long n(String str, String str2) {
        SQLiteException e2;
        n.e(str);
        n.e("first_open_count");
        g();
        i();
        SQLiteDatabase M = M();
        M.beginTransaction();
        long j2 = 0;
        try {
            long I = I("select first_open_count from app2 where app_id=?", new String[]{str}, -1);
            if (I == -1) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, str);
                contentValues.put("first_open_count", (Integer) 0);
                contentValues.put("previous_install_count", (Integer) 0);
                if (M.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                    this.a.c().n().c("Failed to insert column (got -1). appId", i3.w(str), "first_open_count");
                    M.endTransaction();
                    return -1;
                }
                I = 0;
            }
            try {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, str);
                contentValues2.put("first_open_count", Long.valueOf(1 + I));
                if (((long) M.update("app2", contentValues2, "app_id = ?", new String[]{str})) == 0) {
                    this.a.c().n().c("Failed to update column (got 0). appId", i3.w(str), "first_open_count");
                    M.endTransaction();
                    return -1;
                }
                M.setTransactionSuccessful();
                M.endTransaction();
                return I;
            } catch (SQLiteException e3) {
                e2 = e3;
                j2 = I;
                try {
                    this.a.c().n().d("Error inserting column. appId", i3.w(str), "first_open_count", e2);
                    return j2;
                } finally {
                    M.endTransaction();
                }
            }
        } catch (SQLiteException e4) {
            e2 = e4;
            this.a.c().n().d("Error inserting column. appId", i3.w(str), "first_open_count", e2);
            return j2;
        }
    }

    public final long o() {
        return I("select max(timestamp) from raw_events", null, 0);
    }

    public final boolean p() {
        return H("select count(1) > 0 from raw_events", null) != 0;
    }

    public final boolean q() {
        return H("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    public final long r(String str) {
        n.e(str);
        return I("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0);
    }

    public final boolean s(String str, Long l2, long j2, zzdb zzdb) {
        g();
        i();
        Objects.requireNonNull(zzdb, "null reference");
        n.e(str);
        byte[] zzbp = zzdb.zzbp();
        this.a.c().v().c("Saving complex main event, appId, data size", this.a.F().o(str), Integer.valueOf(zzbp.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, str);
        contentValues.put("event_id", l2);
        contentValues.put("children_to_process", Long.valueOf(j2));
        contentValues.put("main_event", zzbp);
        try {
            if (M().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            this.a.c().n().b("Failed to insert complex main event (got -1). appId", i3.w(str));
            return false;
        } catch (SQLiteException e2) {
            this.a.c().n().c("Error storing complex main event. appId", i3.w(str), e2);
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d1  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00d9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.os.Bundle t(java.lang.String r8) {
        /*
        // Method dump skipped, instructions count: 223
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.t(java.lang.String):android.os.Bundle");
    }

    /* access modifiers changed from: package-private */
    public final void u(String str, List<zzbu> list) {
        Throwable th;
        String str2;
        String str3;
        zzbt zzbt;
        boolean z;
        String str4 = "app_id=? and audience_id=?";
        String str5 = "null reference";
        int i2 = 0;
        while (i2 < list.size()) {
            zzbt zzbt2 = (zzbt) list.get(i2).zzbu();
            if (zzbt2.zzd() != 0) {
                zzbt = zzbt2;
                int i3 = 0;
                while (i3 < zzbt.zzd()) {
                    zzbv zzbv = (zzbv) zzbt.zze(i3).zzbu();
                    zzbv zzbv2 = (zzbv) zzbv.zzaq();
                    String d2 = j.d(zzbv.zza(), g5.a, g5.c);
                    if (d2 != null) {
                        zzbv2.zzb(d2);
                        z = true;
                    } else {
                        z = false;
                    }
                    boolean z2 = z;
                    int i4 = 0;
                    while (i4 < zzbv.zzc()) {
                        zzby zzd = zzbv.zzd(i4);
                        String d3 = j.d(zzd.zzh(), h5.a, h5.b);
                        if (d3 != null) {
                            zzbx zzbx = (zzbx) zzd.zzbu();
                            zzbx.zza(d3);
                            zzbv2.zze(i4, (zzby) zzbx.zzaA());
                            z2 = true;
                        }
                        i4++;
                        zzbv = zzbv;
                        str5 = str5;
                    }
                    if (z2) {
                        zzbt.zzf(i3, zzbv2);
                        list.set(i2, (zzbu) zzbt2.zzaA());
                        zzbt = zzbt2;
                    }
                    i3++;
                    str4 = str4;
                    str5 = str5;
                }
                str3 = str4;
                str2 = str5;
            } else {
                str3 = str4;
                str2 = str5;
                zzbt = zzbt2;
            }
            if (zzbt.zza() != 0) {
                for (int i5 = 0; i5 < zzbt.zza(); i5++) {
                    zzcf zzb = zzbt.zzb(i5);
                    String d4 = j.d(zzb.zzc(), i5.a, i5.b);
                    if (d4 != null) {
                        zzce zzce = (zzce) zzb.zzbu();
                        zzce.zza(d4);
                        zzbt.zzc(i5, zzce);
                        list.set(i2, (zzbu) zzbt2.zzaA());
                        zzbt = zzbt2;
                    }
                }
            }
            i2++;
            str4 = str3;
            str5 = str2;
        }
        String str6 = str4;
        String str7 = str5;
        i();
        g();
        n.e(str);
        SQLiteDatabase M = M();
        M.beginTransaction();
        try {
            i();
            g();
            n.e(str);
            SQLiteDatabase M2 = M();
            M2.delete("property_filters", "app_id=?", new String[]{str});
            M2.delete("event_filters", "app_id=?", new String[]{str});
            Iterator<zzbu> it = list.iterator();
            while (it.hasNext()) {
                zzbu next = it.next();
                i();
                g();
                n.e(str);
                Objects.requireNonNull(next, str7);
                if (!next.zza()) {
                    try {
                        this.a.c().q().b("Audience with no ID. appId", i3.w(str));
                    } catch (Throwable th2) {
                        th = th2;
                        M.endTransaction();
                        throw th;
                    }
                } else {
                    int zzb2 = next.zzb();
                    Iterator<zzbw> it2 = next.zzf().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (!it2.next().zza()) {
                                this.a.c().q().c("Event filter with no ID. Audience definition ignored. appId, audienceId", i3.w(str), Integer.valueOf(zzb2));
                                break;
                            }
                        } else {
                            for (zzcf zzcf : next.zzc()) {
                                if (!zzcf.zza()) {
                                    this.a.c().q().c("Property filter with no ID. Audience definition ignored. appId, audienceId", i3.w(str), Integer.valueOf(zzb2));
                                }
                            }
                            Iterator<zzbw> it3 = next.zzf().iterator();
                            while (true) {
                                boolean hasNext = it3.hasNext();
                                String str8 = AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID;
                                if (hasNext) {
                                    zzbw next2 = it3.next();
                                    i();
                                    g();
                                    n.e(str);
                                    Objects.requireNonNull(next2, str7);
                                    if (TextUtils.isEmpty(next2.zzc())) {
                                        this.a.c().q().d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", i3.w(str), Integer.valueOf(zzb2), String.valueOf(next2.zza() ? Integer.valueOf(next2.zzb()) : null));
                                    } else {
                                        byte[] zzbp = next2.zzbp();
                                        ContentValues contentValues = new ContentValues();
                                        contentValues.put(str8, str);
                                        contentValues.put("audience_id", Integer.valueOf(zzb2));
                                        contentValues.put("filter_id", next2.zza() ? Integer.valueOf(next2.zzb()) : null);
                                        contentValues.put("event_name", next2.zzc());
                                        contentValues.put("session_scoped", next2.zzk() ? Boolean.valueOf(next2.zzm()) : null);
                                        contentValues.put("data", zzbp);
                                        try {
                                            if (M().insertWithOnConflict("event_filters", null, contentValues, 5) == -1) {
                                                this.a.c().n().b("Failed to insert event filter (got -1). appId", i3.w(str));
                                            }
                                            it = it;
                                            it3 = it3;
                                        } catch (SQLiteException e2) {
                                            this.a.c().n().c("Error storing event filter. appId", i3.w(str), e2);
                                            i();
                                            g();
                                            n.e(str);
                                            SQLiteDatabase M3 = M();
                                            M3.delete("property_filters", str6, new String[]{str, String.valueOf(zzb2)});
                                            M3.delete("event_filters", str6, new String[]{str, String.valueOf(zzb2)});
                                            str6 = str6;
                                            str7 = str7;
                                            it = it;
                                        }
                                    }
                                } else {
                                    Iterator<zzcf> it4 = next.zzc().iterator();
                                    while (it4.hasNext()) {
                                        zzcf next3 = it4.next();
                                        i();
                                        g();
                                        n.e(str);
                                        Objects.requireNonNull(next3, str7);
                                        if (TextUtils.isEmpty(next3.zzc())) {
                                            this.a.c().q().d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", i3.w(str), Integer.valueOf(zzb2), String.valueOf(next3.zza() ? Integer.valueOf(next3.zzb()) : null));
                                        } else {
                                            byte[] zzbp2 = next3.zzbp();
                                            ContentValues contentValues2 = new ContentValues();
                                            contentValues2.put(str8, str);
                                            contentValues2.put("audience_id", Integer.valueOf(zzb2));
                                            contentValues2.put("filter_id", next3.zza() ? Integer.valueOf(next3.zzb()) : null);
                                            contentValues2.put("property_name", next3.zzc());
                                            contentValues2.put("session_scoped", next3.zzg() ? Boolean.valueOf(next3.zzh()) : null);
                                            contentValues2.put("data", zzbp2);
                                            try {
                                                if (M().insertWithOnConflict("property_filters", null, contentValues2, 5) == -1) {
                                                    this.a.c().n().b("Failed to insert property filter (got -1). appId", i3.w(str));
                                                } else {
                                                    it4 = it4;
                                                    str8 = str8;
                                                }
                                            } catch (SQLiteException e3) {
                                                this.a.c().n().c("Error storing property filter. appId", i3.w(str), e3);
                                            }
                                        }
                                    }
                                }
                            }
                            str7 = str7;
                            it = it;
                        }
                    }
                }
                str7 = str7;
            }
            ArrayList arrayList = new ArrayList();
            for (zzbu zzbu : list) {
                arrayList.add(zzbu.zza() ? Integer.valueOf(zzbu.zzb()) : null);
            }
            n.e(str);
            i();
            g();
            SQLiteDatabase M4 = M();
            try {
                long H = H("select count(1) from audience_filter_values where app_id=?", new String[]{str});
                int max = Math.max(0, Math.min((int) AdError.SERVER_ERROR_CODE, this.a.x().r(str, v2.F)));
                if (H > ((long) max)) {
                    ArrayList arrayList2 = new ArrayList();
                    int i6 = 0;
                    while (true) {
                        if (i6 >= arrayList.size()) {
                            String join = TextUtils.join(",", arrayList2);
                            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
                            sb.append("(");
                            sb.append(join);
                            sb.append(")");
                            String sb2 = sb.toString();
                            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 140);
                            sb3.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
                            sb3.append(sb2);
                            sb3.append(" order by rowid desc limit -1 offset ?)");
                            M4.delete("audience_filter_values", sb3.toString(), new String[]{str, Integer.toString(max)});
                            break;
                        }
                        Integer num = (Integer) arrayList.get(i6);
                        if (num == null) {
                            break;
                        }
                        arrayList2.add(Integer.toString(num.intValue()));
                        i6++;
                    }
                }
            } catch (SQLiteException e4) {
                this.a.c().n().c("Database error querying filters. appId", i3.w(str), e4);
            }
            M.setTransactionSuccessful();
            M.endTransaction();
        } catch (Throwable th3) {
            th = th3;
            M.endTransaction();
            throw th;
        }
    }

    /* access modifiers changed from: protected */
    public final boolean v() {
        Context b = this.a.b();
        this.a.x();
        return b.getDatabasePath("google_app_measurement.db").exists();
    }
}
