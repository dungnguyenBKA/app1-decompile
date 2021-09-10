package defpackage;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.room.h;
import defpackage.i4;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: n4  reason: default package */
public class n4 implements i4 {
    private final a a;

    /* renamed from: n4$a */
    static class a extends SQLiteOpenHelper {
        final m4[] b;
        final i4.a c;
        private boolean d;

        /* renamed from: n4$a$a  reason: collision with other inner class name */
        class C0115a implements DatabaseErrorHandler {
            final /* synthetic */ i4.a a;
            final /* synthetic */ m4[] b;

            C0115a(i4.a aVar, m4[] m4VarArr) {
                this.a = aVar;
                this.b = m4VarArr;
            }

            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                this.a.b(a.o(this.b, sQLiteDatabase));
            }
        }

        a(Context context, String str, m4[] m4VarArr, i4.a aVar) {
            super(context, str, null, aVar.a, new C0115a(aVar, m4VarArr));
            this.c = aVar;
            this.b = m4VarArr;
        }

        static m4 o(m4[] m4VarArr, SQLiteDatabase sQLiteDatabase) {
            m4 m4Var = m4VarArr[0];
            if (m4Var == null || !m4Var.j(sQLiteDatabase)) {
                m4VarArr[0] = new m4(sQLiteDatabase);
            }
            return m4VarArr[0];
        }

        /* access modifiers changed from: package-private */
        public synchronized h4 L() {
            this.d = false;
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (this.d) {
                close();
                return L();
            }
            return j(writableDatabase);
        }

        @Override // java.lang.AutoCloseable
        public synchronized void close() {
            super.close();
            this.b[0] = null;
        }

        /* access modifiers changed from: package-private */
        public m4 j(SQLiteDatabase sQLiteDatabase) {
            return o(this.b, sQLiteDatabase);
        }

        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            i4.a aVar = this.c;
            o(this.b, sQLiteDatabase);
            Objects.requireNonNull((h) aVar);
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.c.c(o(this.b, sQLiteDatabase));
        }

        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.d = true;
            ((h) this.c).e(o(this.b, sQLiteDatabase), i, i2);
        }

        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.d) {
                this.c.d(o(this.b, sQLiteDatabase));
            }
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.d = true;
            this.c.e(o(this.b, sQLiteDatabase), i, i2);
        }
    }

    n4(Context context, String str, i4.a aVar) {
        this.a = new a(context, str, new m4[1], aVar);
    }

    @Override // defpackage.i4
    public void a(boolean z) {
        this.a.setWriteAheadLoggingEnabled(z);
    }

    @Override // defpackage.i4
    public h4 b() {
        return this.a.L();
    }
}
