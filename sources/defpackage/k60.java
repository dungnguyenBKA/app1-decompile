package defpackage;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: k60  reason: default package */
public final class k60 {
    private r70 a = r70.d;
    private y60 b = y60.DEFAULT;
    private d60 c = c60.IDENTITY;
    private final Map<Type, l60<?>> d = new HashMap();
    private final List<a70> e = new ArrayList();
    private final List<a70> f = new ArrayList();
    private int g = 2;
    private int h = 2;
    private boolean i = true;

    public j60 a() {
        ArrayList arrayList = new ArrayList(this.f.size() + this.e.size() + 3);
        arrayList.addAll(this.e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        int i2 = this.g;
        int i3 = this.h;
        if (!(i2 == 2 || i3 == 2)) {
            z50 z50 = new z50(Date.class, i2, i3);
            z50 z502 = new z50(Timestamp.class, i2, i3);
            z50 z503 = new z50(java.sql.Date.class, i2, i3);
            arrayList.add(s80.a(Date.class, z50));
            arrayList.add(s80.a(Timestamp.class, z502));
            arrayList.add(s80.a(java.sql.Date.class, z503));
        }
        return new j60(this.a, this.c, this.d, false, false, false, this.i, false, false, false, this.b, null, this.g, this.h, this.e, this.f, arrayList);
    }
}
