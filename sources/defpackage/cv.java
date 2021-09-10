package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import defpackage.et;
import defpackage.lv;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
/* renamed from: cv  reason: default package */
public class cv implements eu, lv {
    private static final wr f = wr.b("proto");
    public static final /* synthetic */ int g = 0;
    private final iv b;
    private final mv c;
    private final mv d;
    private final fu e;

    /* access modifiers changed from: package-private */
    /* renamed from: cv$b */
    public interface b<T, U> {
        U apply(T t);
    }

    /* access modifiers changed from: private */
    /* renamed from: cv$c */
    public static class c {
        final String a;
        final String b;

        c(String str, String str2, a aVar) {
            this.a = str;
            this.b = str2;
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: cv$d */
    public interface d<T> {
        T a();
    }

    @Inject
    cv(mv mvVar, mv mvVar2, fu fuVar, iv ivVar) {
        this.b = ivVar;
        this.c = mvVar;
        this.d = mvVar2;
        this.e = fuVar;
    }

    private Long L(SQLiteDatabase sQLiteDatabase, it itVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(itVar.b(), String.valueOf(rv.a(itVar.d()))));
        if (itVar.c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(itVar.c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) m0(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), yu.a());
    }

    static /* synthetic */ Boolean V(cv cvVar, it itVar, SQLiteDatabase sQLiteDatabase) {
        Long L = cvVar.L(sQLiteDatabase, itVar);
        if (L == null) {
            return Boolean.FALSE;
        }
        return (Boolean) m0(cvVar.o().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{L.toString()}), vu.a());
    }

    static List b0(cv cvVar, it itVar, SQLiteDatabase sQLiteDatabase) {
        Objects.requireNonNull(cvVar);
        ArrayList arrayList = new ArrayList();
        Long L = cvVar.L(sQLiteDatabase, itVar);
        if (L != null) {
            m0(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{L.toString()}, null, null, null, String.valueOf(cvVar.e.c())), ou.a(cvVar, arrayList, itVar));
        }
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < arrayList.size(); i++) {
            sb.append(((ju) arrayList.get(i)).b());
            if (i < arrayList.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        m0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), qu.a(hashMap));
        ListIterator listIterator = arrayList.listIterator();
        while (listIterator.hasNext()) {
            ju juVar = (ju) listIterator.next();
            if (hashMap.containsKey(Long.valueOf(juVar.b()))) {
                et.a l = juVar.a().l();
                for (c cVar : (Set) hashMap.get(Long.valueOf(juVar.b()))) {
                    l.c(cVar.a, cVar.b);
                }
                listIterator.set(new du(juVar.b(), juVar.c(), l.d()));
            }
        }
        return arrayList;
    }

    static Object i0(cv cvVar, List list, it itVar, Cursor cursor) {
        wr wrVar;
        wr wrVar2;
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            boolean z = cursor.getInt(7) != 0;
            et.a a2 = et.a();
            a2.i(cursor.getString(1));
            a2.h(cursor.getLong(2));
            a2.j(cursor.getLong(3));
            if (z) {
                String string = cursor.getString(4);
                if (string == null) {
                    wrVar2 = f;
                } else {
                    wrVar2 = wr.b(string);
                }
                a2.g(new dt(wrVar2, cursor.getBlob(5)));
            } else {
                String string2 = cursor.getString(4);
                if (string2 == null) {
                    wrVar = f;
                } else {
                    wrVar = wr.b(string2);
                }
                a2.g(new dt(wrVar, (byte[]) m0(cvVar.o().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), pu.a())));
            }
            if (!cursor.isNull(6)) {
                a2.f(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(new du(j, itVar, a2.d()));
        }
        return null;
    }

    static Long j0(cv cvVar, it itVar, et etVar, SQLiteDatabase sQLiteDatabase) {
        long j;
        if (cvVar.o().compileStatement("PRAGMA page_size").simpleQueryForLong() * cvVar.o().compileStatement("PRAGMA page_count").simpleQueryForLong() >= cvVar.e.e()) {
            return -1L;
        }
        Long L = cvVar.L(sQLiteDatabase, itVar);
        if (L != null) {
            j = L.longValue();
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("backend_name", itVar.b());
            contentValues.put("priority", Integer.valueOf(rv.a(itVar.d())));
            contentValues.put("next_request_ms", (Integer) 0);
            if (itVar.c() != null) {
                contentValues.put("extras", Base64.encodeToString(itVar.c(), 0));
            }
            j = sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        int d2 = cvVar.e.d();
        byte[] a2 = etVar.e().a();
        boolean z = a2.length <= d2;
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("context_id", Long.valueOf(j));
        contentValues2.put("transport_name", etVar.j());
        contentValues2.put("timestamp_ms", Long.valueOf(etVar.f()));
        contentValues2.put("uptime_ms", Long.valueOf(etVar.k()));
        contentValues2.put("payload_encoding", etVar.e().b().a());
        contentValues2.put("code", etVar.d());
        contentValues2.put("num_attempts", (Integer) 0);
        contentValues2.put("inline", Boolean.valueOf(z));
        contentValues2.put("payload", z ? a2 : new byte[0]);
        long insert = sQLiteDatabase.insert("events", null, contentValues2);
        if (!z) {
            double length = (double) a2.length;
            double d3 = (double) d2;
            Double.isNaN(length);
            Double.isNaN(d3);
            int ceil = (int) Math.ceil(length / d3);
            for (int i = 1; i <= ceil; i++) {
                byte[] copyOfRange = Arrays.copyOfRange(a2, (i - 1) * d2, Math.min(i * d2, a2.length));
                ContentValues contentValues3 = new ContentValues();
                contentValues3.put("event_id", Long.valueOf(insert));
                contentValues3.put("sequence_num", Integer.valueOf(i));
                contentValues3.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues3);
            }
        }
        for (Map.Entry<String, String> entry : etVar.i().entrySet()) {
            ContentValues contentValues4 = new ContentValues();
            contentValues4.put("event_id", Long.valueOf(insert));
            contentValues4.put("name", entry.getKey());
            contentValues4.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues4);
        }
        return Long.valueOf(insert);
    }

    private <T> T k0(d<T> dVar, b<Throwable, T> bVar) {
        long a2 = this.d.a();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e2) {
                if (this.d.a() >= ((long) this.e.a()) + a2) {
                    return bVar.apply(e2);
                }
                SystemClock.sleep(50);
            }
        }
    }

    private static String l0(Iterable<ju> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<ju> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().b());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    static <T> T m0(Cursor cursor, b<Cursor, T> bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    /* access modifiers changed from: package-private */
    public <T> T S(b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase o = o();
        o.beginTransaction();
        try {
            T apply = bVar.apply(o);
            o.setTransactionSuccessful();
            return apply;
        } finally {
            o.endTransaction();
        }
    }

    @Override // defpackage.eu
    public ju T(it itVar, et etVar) {
        st.b("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", itVar.d(), etVar.j(), itVar.b());
        long longValue = ((Long) S(xu.a(this, itVar, etVar))).longValue();
        if (longValue < 1) {
            return null;
        }
        return new du(longValue, itVar, etVar);
    }

    @Override // defpackage.eu
    public long X(it itVar) {
        return ((Long) m0(o().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{itVar.b(), String.valueOf(rv.a(itVar.d()))}), av.a())).longValue();
    }

    @Override // defpackage.eu
    public boolean Z(it itVar) {
        return ((Boolean) S(bv.a(this, itVar))).booleanValue();
    }

    @Override // defpackage.eu
    public void a0(Iterable<ju> iterable) {
        if (iterable.iterator().hasNext()) {
            StringBuilder q = ic.q("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in ");
            q.append(l0(iterable));
            S(zu.a(q.toString()));
        }
    }

    @Override // defpackage.eu
    public int c() {
        return ((Integer) S(nu.a(this.c.a() - this.e.b()))).intValue();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.close();
    }

    @Override // defpackage.eu
    public void d(Iterable<ju> iterable) {
        if (iterable.iterator().hasNext()) {
            StringBuilder q = ic.q("DELETE FROM events WHERE _id in ");
            q.append(l0(iterable));
            o().compileStatement(q.toString()).execute();
        }
    }

    @Override // defpackage.lv
    public <T> T j(lv.a<T> aVar) {
        SQLiteDatabase o = o();
        k0(ru.b(o), su.a());
        try {
            T execute = aVar.execute();
            o.setTransactionSuccessful();
            return execute;
        } finally {
            o.endTransaction();
        }
    }

    @Override // defpackage.eu
    public Iterable<ju> n(it itVar) {
        return (Iterable) S(lu.a(this, itVar));
    }

    /* access modifiers changed from: package-private */
    public SQLiteDatabase o() {
        iv ivVar = this.b;
        ivVar.getClass();
        return (SQLiteDatabase) k0(tu.b(ivVar), wu.a());
    }

    @Override // defpackage.eu
    public void r(it itVar, long j) {
        S(ku.a(j, itVar));
    }

    @Override // defpackage.eu
    public Iterable<it> v() {
        return (Iterable) S(mu.a());
    }
}
