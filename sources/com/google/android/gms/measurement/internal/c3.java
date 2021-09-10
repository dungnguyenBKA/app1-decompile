package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;

public final class c3 extends y3 {
    private final b3 c;
    private boolean d;

    c3(j4 j4Var) {
        super(j4Var);
        Context b = this.a.b();
        this.a.x();
        this.c = new b3(this, b);
    }

    /* JADX WARNING: Removed duplicated region for block: B:46:0x00cb A[SYNTHETIC, Splitter:B:46:0x00cb] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00e8  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00f9  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x00fe  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0118  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x011d  */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x012e  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0121 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0121 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x0121 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean w(int r17, byte[] r18) {
        /*
        // Method dump skipped, instructions count: 328
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.c3.w(int, byte[]):boolean");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.y3
    public final boolean l() {
        return false;
    }

    public final void n() {
        int delete;
        g();
        try {
            SQLiteDatabase u = u();
            if (u != null && (delete = u.delete("messages", null, null)) > 0) {
                this.a.c().v().b("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            this.a.c().n().b("Error resetting local analytics data. error", e);
        }
    }

    public final boolean o(zzas zzas) {
        Parcel obtain = Parcel.obtain();
        r.a(zzas, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return w(0, marshall);
        }
        this.a.c().o().a("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean p(zzkg zzkg) {
        Parcel obtain = Parcel.obtain();
        e9.a(zzkg, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return w(1, marshall);
        }
        this.a.c().o().a("User property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean q(zzaa zzaa) {
        byte[] K = this.a.E().K(zzaa);
        if (K.length <= 131072) {
            return w(2, K);
        }
        this.a.c().o().a("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:56|57|58) */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:69|70|71) */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:45|46|47|186) */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00c0, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:?, code lost:
        r22.a.c().n().a("Failed to load event from local database");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00d5, code lost:
        r12.recycle();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00d8, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00f2, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:?, code lost:
        r22.a.c().n().a("Failed to load user property from local database");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0103, code lost:
        r12.recycle();
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x010d, code lost:
        r12.recycle();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0110, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x012a, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:?, code lost:
        r22.a.c().n().a("Failed to load conditional user property from local database");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x013b, code lost:
        r12.recycle();
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x0146, code lost:
        r12.recycle();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x0149, code lost:
        throw r0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:45:0x00c2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:56:0x00f4 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:69:0x012c */
    /* JADX WARNING: Removed duplicated region for block: B:116:0x01d6 A[SYNTHETIC, Splitter:B:116:0x01d6] */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x01fb A[SYNTHETIC, Splitter:B:144:0x01fb] */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0215  */
    /* JADX WARNING: Removed duplicated region for block: B:156:0x0225  */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0242  */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x0250  */
    /* JADX WARNING: Removed duplicated region for block: B:171:0x0255  */
    /* JADX WARNING: Removed duplicated region for block: B:177:0x01d9 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:178:0x0248 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:179:0x0248 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:181:0x0248 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> r(int r23) {
        /*
        // Method dump skipped, instructions count: 618
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.c3.r(int):java.util.List");
    }

    public final boolean s() {
        return w(3, new byte[0]);
    }

    public final boolean t() {
        g();
        if (!this.d && v()) {
            int i = 5;
            for (int i2 = 0; i2 < 5; i2++) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase u = u();
                    if (u == null) {
                        this.d = true;
                        return false;
                    }
                    u.beginTransaction();
                    u.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    u.setTransactionSuccessful();
                    u.endTransaction();
                    u.close();
                    return true;
                } catch (SQLiteFullException e) {
                    this.a.c().n().b("Error deleting app launch break from local database", e);
                    this.d = true;
                    if (0 == 0) {
                    }
                    sQLiteDatabase.close();
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep((long) i);
                    i += 20;
                    if (0 == 0) {
                    }
                    sQLiteDatabase.close();
                } catch (SQLiteException e2) {
                    if (0 != 0) {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    }
                    this.a.c().n().b("Error deleting app launch break from local database", e2);
                    this.d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            }
            this.a.c().q().a("Error deleting app launch break from local database in reasonable time");
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public final SQLiteDatabase u() {
        if (this.d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.d = true;
        return null;
    }

    /* access modifiers changed from: package-private */
    public final boolean v() {
        Context b = this.a.b();
        this.a.x();
        return b.getDatabasePath("google_app_measurement_local.db").exists();
    }
}
