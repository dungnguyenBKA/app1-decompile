package defpackage;

import android.database.Cursor;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;

/* renamed from: h4  reason: default package */
public interface h4 extends Closeable {
    void A();

    Cursor D(String str);

    void G();

    Cursor M(k4 k4Var);

    boolean R();

    void b();

    List<Pair<String, String>> e();

    void execSQL(String str);

    String getPath();

    boolean isOpen();

    l4 l(String str);
}
