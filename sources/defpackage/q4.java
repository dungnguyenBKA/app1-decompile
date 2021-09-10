package defpackage;

import android.database.sqlite.SQLiteStatement;

/* renamed from: q4  reason: default package */
class q4 extends p4 implements l4 {
    private final SQLiteStatement c;

    q4(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.c = sQLiteStatement;
    }

    @Override // defpackage.l4
    public long d0() {
        return this.c.executeInsert();
    }

    @Override // defpackage.l4
    public int k() {
        return this.c.executeUpdateDelete();
    }
}
