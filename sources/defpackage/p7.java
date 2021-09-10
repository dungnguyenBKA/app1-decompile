package defpackage;

import android.graphics.Path;
import com.airbnb.lottie.g;
import defpackage.s7;
import defpackage.x9;
import java.util.List;

/* renamed from: p7  reason: default package */
public class p7 implements l7, s7.b {
    private final Path a = new Path();
    private final boolean b;
    private final g c;
    private final s7<?, Path> d;
    private boolean e;
    private a7 f = new a7();

    public p7(g gVar, z9 z9Var, v9 v9Var) {
        this.b = v9Var.c();
        this.c = gVar;
        s7<s9, Path> a2 = v9Var.b().a();
        this.d = a2;
        z9Var.i(a2);
        a2.a(this);
    }

    @Override // defpackage.s7.b
    public void a() {
        this.e = false;
        this.c.invalidateSelf();
    }

    @Override // defpackage.b7
    public void b(List<b7> list, List<b7> list2) {
        for (int i = 0; i < list.size(); i++) {
            b7 b7Var = list.get(i);
            if (b7Var instanceof r7) {
                r7 r7Var = (r7) b7Var;
                if (r7Var.i() == x9.a.SIMULTANEOUSLY) {
                    this.f.a(r7Var);
                    r7Var.c(this);
                }
            }
        }
    }

    @Override // defpackage.l7
    public Path getPath() {
        if (this.e) {
            return this.a;
        }
        this.a.reset();
        if (this.b) {
            this.e = true;
            return this.a;
        }
        this.a.set(this.d.g());
        this.a.setFillType(Path.FillType.EVEN_ODD);
        this.f.b(this.a);
        this.e = true;
        return this.a;
    }
}
