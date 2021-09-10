package androidx.room;

import android.content.Context;
import androidx.room.g;
import defpackage.i4;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

public class a {
    public final i4.c a;
    public final Context b;
    public final String c;
    public final g.d d;
    public final List<g.b> e;
    public final boolean f;
    public final g.c g;
    public final Executor h;
    public final Executor i;
    public final boolean j;
    public final boolean k;

    public a(Context context, String str, i4.c cVar, g.d dVar, List<g.b> list, boolean z, g.c cVar2, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set) {
        this.a = cVar;
        this.b = context;
        this.c = str;
        this.d = dVar;
        this.e = list;
        this.f = z;
        this.g = cVar2;
        this.h = executor;
        this.i = executor2;
        this.j = z3;
        this.k = z4;
    }

    public boolean a(int i2, int i3) {
        if ((!(i2 > i3) || !this.k) && this.j) {
            return true;
        }
        return false;
    }
}
