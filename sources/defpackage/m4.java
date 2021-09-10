package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.util.Pair;
import java.util.List;

/* renamed from: m4  reason: default package */
class m4 implements h4 {
    private static final String[] c = new String[0];
    private final SQLiteDatabase b;

    /* access modifiers changed from: package-private */
    /* renamed from: m4$a */
    public class a implements SQLiteDatabase.CursorFactory {
        final /* synthetic */ k4 a;

        a(m4 m4Var, k4 k4Var) {
            this.a = k4Var;
        }

        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.a.o(new p4(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    m4(SQLiteDatabase sQLiteDatabase) {
        this.b = sQLiteDatabase;
    }

    @Override // defpackage.h4
    public void A() {
        this.b.setTransactionSuccessful();
    }

    @Override // defpackage.h4
    public Cursor D(String str) {
        return M(new g4(str));
    }

    @Override // defpackage.h4
    public void G() {
        this.b.endTransaction();
    }

    @Override // defpackage.h4
    public Cursor M(k4 k4Var) {
        return this.b.rawQueryWithFactory(new a(this, k4Var), k4Var.j(), c, null);
    }

    @Override // defpackage.h4
    public boolean R() {
        return this.b.inTransaction();
    }

    @Override // defpackage.h4
    public void b() {
        this.b.beginTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.close();
    }

    @Override // defpackage.h4
    public List<Pair<String, String>> e() {
        return this.b.getAttachedDbs();
    }

    @Override // defpackage.h4
    public void execSQL(String str) {
        this.b.execSQL(str);
    }

    @Override // defpackage.h4
    public String getPath() {
        return this.b.getPath();
    }

    @Override // defpackage.h4
    public boolean isOpen() {
        return this.b.isOpen();
    }

    /* access modifiers changed from: package-private */
    public boolean j(SQLiteDatabase sQLiteDatabase) {
        return this.b == sQLiteDatabase;
    }

    @Override // defpackage.h4
    public l4 l(String str) {
        return new q4(this.b.compileStatement(str));
    }
}
