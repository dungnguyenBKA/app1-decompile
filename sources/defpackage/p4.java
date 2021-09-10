package defpackage;

import android.database.sqlite.SQLiteProgram;

/* renamed from: p4  reason: default package */
class p4 implements j4 {
    private final SQLiteProgram b;

    p4(SQLiteProgram sQLiteProgram) {
        this.b = sQLiteProgram;
    }

    @Override // defpackage.j4
    public void B(int i, byte[] bArr) {
        this.b.bindBlob(i, bArr);
    }

    @Override // defpackage.j4
    public void N(int i) {
        this.b.bindNull(i);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.close();
    }

    @Override // defpackage.j4
    public void g(int i, String str) {
        this.b.bindString(i, str);
    }

    @Override // defpackage.j4
    public void p(int i, double d) {
        this.b.bindDouble(i, d);
    }

    @Override // defpackage.j4
    public void z(int i, long j) {
        this.b.bindLong(i, j);
    }
}
