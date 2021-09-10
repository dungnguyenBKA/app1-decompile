package defpackage;

import java.util.List;

/* renamed from: v7  reason: default package */
public class v7 extends x7<j9> {
    private final j9 i;

    public v7(List<ec<j9>> list) {
        super(list);
        int i2 = 0;
        T t = list.get(0).b;
        i2 = t != null ? t.c() : i2;
        this.i = new j9(new float[i2], new int[i2]);
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.s7
    public Object h(ec ecVar, float f) {
        this.i.d(ecVar.b, ecVar.c, f);
        return this.i;
    }
}
