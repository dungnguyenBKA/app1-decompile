package androidx.room;

import android.annotation.SuppressLint;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import org.apache.http.client.methods.HttpDelete;

public class e {
    private static final String[] k = {"UPDATE", HttpDelete.METHOD_NAME, "INSERT"};
    final x<String, Integer> a;
    final String[] b;
    private Map<String, Set<String>> c;
    final g d;
    AtomicBoolean e = new AtomicBoolean(false);
    private volatile boolean f = false;
    volatile l4 g;
    private b h;
    @SuppressLint({"RestrictedApi"})
    final w<c, d> i = new w<>();
    Runnable j = new a();

    class a implements Runnable {
        a() {
        }

        /* JADX INFO: finally extract failed */
        private Set<Integer> a() {
            z zVar = new z(0);
            Cursor n = e.this.d.n(new g4("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (n.moveToNext()) {
                try {
                    zVar.add(Integer.valueOf(n.getInt(0)));
                } catch (Throwable th) {
                    n.close();
                    throw th;
                }
            }
            n.close();
            if (!zVar.isEmpty()) {
                e.this.g.k();
            }
            return zVar;
        }

        public void run() {
            Lock h = e.this.d.h();
            Set<Integer> set = null;
            try {
                h.lock();
                if (!e.this.a()) {
                    h.unlock();
                } else if (!e.this.e.compareAndSet(true, false)) {
                    h.unlock();
                } else if (e.this.d.k()) {
                    h.unlock();
                } else {
                    g gVar = e.this.d;
                    if (gVar.f) {
                        h4 b2 = gVar.i().b();
                        b2.b();
                        try {
                            set = a();
                            b2.A();
                        } finally {
                            b2.G();
                        }
                    } else {
                        set = a();
                    }
                    h.unlock();
                    if (set != null && !((z) set).isEmpty()) {
                        synchronized (e.this.i) {
                            Iterator<Map.Entry<c, d>> it = e.this.i.iterator();
                            while (it.hasNext()) {
                                it.next().getValue().a(set);
                            }
                        }
                    }
                }
            } catch (SQLiteException | IllegalStateException e) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
            } catch (Throwable th) {
                h.unlock();
                throw th;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public static class b {
        final long[] a;
        final boolean[] b;
        final int[] c;
        boolean d;
        boolean e;

        b(int i) {
            long[] jArr = new long[i];
            this.a = jArr;
            boolean[] zArr = new boolean[i];
            this.b = zArr;
            this.c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        /* access modifiers changed from: package-private */
        public int[] a() {
            synchronized (this) {
                if (this.d) {
                    if (!this.e) {
                        int length = this.a.length;
                        int i = 0;
                        while (true) {
                            int i2 = 1;
                            if (i < length) {
                                boolean z = this.a[i] > 0;
                                boolean[] zArr = this.b;
                                if (z != zArr[i]) {
                                    int[] iArr = this.c;
                                    if (!z) {
                                        i2 = 2;
                                    }
                                    iArr[i] = i2;
                                } else {
                                    this.c[i] = 0;
                                }
                                zArr[i] = z;
                                i++;
                            } else {
                                this.e = true;
                                this.d = false;
                                return this.c;
                            }
                        }
                    }
                }
                return null;
            }
        }
    }

    public static abstract class c {
        public abstract void a(Set<String> set);
    }

    static class d {
        final int[] a;
        private final String[] b;
        final c c;
        private final Set<String> d;

        /* access modifiers changed from: package-private */
        public void a(Set<Integer> set) {
            int length = this.a.length;
            Set<String> set2 = null;
            for (int i = 0; i < length; i++) {
                if (((z) set).contains(Integer.valueOf(this.a[i]))) {
                    if (length == 1) {
                        set2 = this.d;
                    } else {
                        if (set2 == null) {
                            set2 = new z<>(length);
                        }
                        set2.add(this.b[i]);
                    }
                }
            }
            if (set2 != null) {
                this.c.a(set2);
            }
        }
    }

    public e(g gVar, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.d = gVar;
        this.h = new b(strArr.length);
        this.a = new x<>();
        this.c = map2;
        Collections.newSetFromMap(new IdentityHashMap());
        int length = strArr.length;
        this.b = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            String str = strArr[i2];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.a.put(lowerCase, Integer.valueOf(i2));
            String str2 = map.get(strArr[i2]);
            if (str2 != null) {
                this.b[i2] = str2.toLowerCase(locale);
            } else {
                this.b[i2] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            Locale locale2 = Locale.US;
            String lowerCase2 = entry.getValue().toLowerCase(locale2);
            if (this.a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                x<String, Integer> xVar = this.a;
                xVar.put(lowerCase3, xVar.get(lowerCase2));
            }
        }
    }

    private void c(h4 h4Var, int i2) {
        h4Var.execSQL("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i2 + ", 0)");
        String str = this.b[i2];
        StringBuilder sb = new StringBuilder();
        String[] strArr = k;
        for (String str2 : strArr) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            sb.append(str);
            sb.append("_");
            sb.append(str2);
            sb.append("`");
            sb.append(" AFTER ");
            sb.append(str2);
            sb.append(" ON `");
            sb.append(str);
            sb.append("` BEGIN UPDATE ");
            sb.append("room_table_modification_log");
            sb.append(" SET ");
            sb.append("invalidated");
            sb.append(" = 1");
            sb.append(" WHERE ");
            sb.append("table_id");
            sb.append(" = ");
            sb.append(i2);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            h4Var.execSQL(sb.toString());
        }
    }

    private void d(h4 h4Var, int i2) {
        String str = this.b[i2];
        StringBuilder sb = new StringBuilder();
        String[] strArr = k;
        for (String str2 : strArr) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            sb.append(str);
            sb.append("_");
            sb.append(str2);
            sb.append("`");
            h4Var.execSQL(sb.toString());
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        h4 h4Var = this.d.a;
        if (!(h4Var != null && h4Var.isOpen())) {
            return false;
        }
        if (!this.f) {
            this.d.i().b();
        }
        if (this.f) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    /* access modifiers changed from: package-private */
    public void b(h4 h4Var) {
        synchronized (this) {
            if (this.f) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            h4Var.execSQL("PRAGMA temp_store = MEMORY;");
            h4Var.execSQL("PRAGMA recursive_triggers='ON';");
            h4Var.execSQL("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            e(h4Var);
            this.g = h4Var.l("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            this.f = true;
        }
    }

    /* access modifiers changed from: package-private */
    public void e(h4 h4Var) {
        if (!h4Var.R()) {
            while (true) {
                try {
                    Lock h2 = this.d.h();
                    h2.lock();
                    try {
                        int[] a2 = this.h.a();
                        if (a2 == null) {
                            h2.unlock();
                            return;
                        }
                        int length = a2.length;
                        h4Var.b();
                        for (int i2 = 0; i2 < length; i2++) {
                            try {
                                int i3 = a2[i2];
                                if (i3 == 1) {
                                    c(h4Var, i2);
                                } else if (i3 == 2) {
                                    d(h4Var, i2);
                                }
                            } catch (Throwable th) {
                                h4Var.G();
                                throw th;
                            }
                        }
                        h4Var.A();
                        h4Var.G();
                        b bVar = this.h;
                        synchronized (bVar) {
                            bVar.e = false;
                        }
                    } finally {
                        h2.unlock();
                    }
                } catch (SQLiteException | IllegalStateException e2) {
                    Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e2);
                    return;
                }
            }
        }
    }
}
