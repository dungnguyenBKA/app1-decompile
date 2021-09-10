package defpackage;

import android.graphics.Path;
import java.util.List;

/* renamed from: d8  reason: default package */
public class d8 extends s7<s9, Path> {
    private final s9 i = new s9();
    private final Path j = new Path();

    public d8(List<ec<s9>> list) {
        super(list);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [ec, float] */
    @Override // defpackage.s7
    public Path h(ec<s9> ecVar, float f) {
        this.i.c(ecVar.b, ecVar.c, f);
        cc.e(this.i, this.j);
        return this.j;
    }
}
