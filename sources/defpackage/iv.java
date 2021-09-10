package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;

/* access modifiers changed from: package-private */
/* renamed from: iv  reason: default package */
public final class iv extends SQLiteOpenHelper {
    private static final a d;
    private static final a e;
    private static final a f;
    private static final a g;
    private static final List<a> h;
    public static final /* synthetic */ int i = 0;
    private final int b;
    private boolean c = false;

    /* renamed from: iv$a */
    public interface a {
        void a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        a b2 = ev.b();
        d = b2;
        a b3 = fv.b();
        e = b3;
        a b4 = gv.b();
        f = b4;
        a b5 = hv.b();
        g = b5;
        h = Arrays.asList(b2, b3, b4, b5);
    }

    @Inject
    iv(Context context, @Named("SQLITE_DB_NAME") String str, @Named("SCHEMA_VERSION") int i2) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i2);
        this.b = i2;
    }

    private void j(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        List<a> list = h;
        if (i3 <= list.size()) {
            while (i2 < i3) {
                h.get(i2).a(sQLiteDatabase);
                i2++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i2 + " to " + i3 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.c = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        int i2 = this.b;
        if (!this.c) {
            onConfigure(sQLiteDatabase);
        }
        j(sQLiteDatabase, 0, i2);
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        if (!this.c) {
            onConfigure(sQLiteDatabase);
        }
        j(sQLiteDatabase, 0, i3);
    }

    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (!this.c) {
            onConfigure(sQLiteDatabase);
        }
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (!this.c) {
            onConfigure(sQLiteDatabase);
        }
        j(sQLiteDatabase, i2, i3);
    }
}
