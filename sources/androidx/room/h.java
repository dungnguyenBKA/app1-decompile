package androidx.room;

import android.database.Cursor;
import defpackage.i4;
import java.util.List;

public class h extends i4.a {
    private a b;
    private final a c;

    public static abstract class a {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        /* access modifiers changed from: protected */
        public abstract void a(h4 h4Var);

        /* access modifiers changed from: protected */
        public abstract void b(h4 h4Var);

        /* access modifiers changed from: protected */
        public abstract void c(h4 h4Var);

        /* access modifiers changed from: protected */
        public abstract void d(h4 h4Var);

        /* access modifiers changed from: protected */
        public abstract void e(h4 h4Var);

        /* access modifiers changed from: protected */
        public abstract void f(h4 h4Var);

        /* access modifiers changed from: protected */
        public abstract void g(h4 h4Var);
    }

    public h(a aVar, a aVar2, String str, String str2) {
        super(aVar2.a);
        this.b = aVar;
        this.c = aVar2;
    }

    private void f(h4 h4Var) {
        h4Var.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        h4Var.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + "c84d23ade98552f1cec71088c1f0794c" + "')");
    }

    @Override // defpackage.i4.a
    public void c(h4 h4Var) {
        f(h4Var);
        this.c.a(h4Var);
        this.c.c(h4Var);
    }

    /* JADX INFO: finally extract failed */
    @Override // defpackage.i4.a
    public void d(h4 h4Var) {
        String str;
        Cursor D = h4Var.D("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z = D.moveToFirst() && D.getInt(0) != 0;
            D.close();
            if (z) {
                Cursor M = h4Var.M(new g4("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
                try {
                    str = M.moveToFirst() ? M.getString(0) : null;
                } finally {
                    M.close();
                }
            } else {
                str = null;
            }
            if ("c84d23ade98552f1cec71088c1f0794c".equals(str) || "1db8206f0da6aa81bbdd2d99a82d9e14".equals(str)) {
                this.c.d(h4Var);
                this.b = null;
                return;
            }
            throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
        } catch (Throwable th) {
            D.close();
            throw th;
        }
    }

    @Override // defpackage.i4.a
    public void e(h4 h4Var, int i, int i2) {
        boolean z;
        List<d4> b2;
        a aVar = this.b;
        if (aVar == null || (b2 = aVar.d.b(i, i2)) == null) {
            z = false;
        } else {
            this.c.f(h4Var);
            for (d4 d4Var : b2) {
                d4Var.a(h4Var);
            }
            this.c.g(h4Var);
            this.c.e(h4Var);
            f(h4Var);
            z = true;
        }
        if (!z) {
            a aVar2 = this.b;
            if (aVar2 == null || aVar2.a(i, i2)) {
                throw new IllegalStateException("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
            }
            this.c.b(h4Var);
            this.c.a(h4Var);
        }
    }
}
