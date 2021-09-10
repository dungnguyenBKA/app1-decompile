package defpackage;

import android.annotation.TargetApi;
import android.graphics.Path;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.List;

@TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
/* renamed from: k7  reason: default package */
public class k7 implements l7, i7 {
    private final Path a = new Path();
    private final Path b = new Path();
    private final Path c = new Path();
    private final List<l7> d = new ArrayList();
    private final o9 e;

    public k7(o9 o9Var) {
        this.e = o9Var;
    }

    @TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
    private void a(Path.Op op) {
        this.b.reset();
        this.a.reset();
        for (int size = this.d.size() - 1; size >= 1; size--) {
            l7 l7Var = this.d.get(size);
            if (l7Var instanceof c7) {
                c7 c7Var = (c7) l7Var;
                List<l7> e2 = c7Var.e();
                for (int size2 = e2.size() - 1; size2 >= 0; size2--) {
                    Path path = e2.get(size2).getPath();
                    path.transform(c7Var.h());
                    this.b.addPath(path);
                }
            } else {
                this.b.addPath(l7Var.getPath());
            }
        }
        l7 l7Var2 = this.d.get(0);
        if (l7Var2 instanceof c7) {
            c7 c7Var2 = (c7) l7Var2;
            List<l7> e3 = c7Var2.e();
            for (int i = 0; i < e3.size(); i++) {
                Path path2 = e3.get(i).getPath();
                path2.transform(c7Var2.h());
                this.a.addPath(path2);
            }
        } else {
            this.a.set(l7Var2.getPath());
        }
        this.c.op(this.a, this.b, op);
    }

    @Override // defpackage.b7
    public void b(List<b7> list, List<b7> list2) {
        for (int i = 0; i < this.d.size(); i++) {
            this.d.get(i).b(list, list2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:2:0x0006  */
    @Override // defpackage.i7
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e(java.util.ListIterator<defpackage.b7> r3) {
        /*
            r2 = this;
        L_0x0000:
            boolean r0 = r3.hasPrevious()
            if (r0 == 0) goto L_0x000d
            java.lang.Object r0 = r3.previous()
            if (r0 == r2) goto L_0x000d
            goto L_0x0000
        L_0x000d:
            boolean r0 = r3.hasPrevious()
            if (r0 == 0) goto L_0x0028
            java.lang.Object r0 = r3.previous()
            b7 r0 = (defpackage.b7) r0
            boolean r1 = r0 instanceof defpackage.l7
            if (r1 == 0) goto L_0x000d
            java.util.List<l7> r1 = r2.d
            l7 r0 = (defpackage.l7) r0
            r1.add(r0)
            r3.remove()
            goto L_0x000d
        L_0x0028:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k7.e(java.util.ListIterator):void");
    }

    @Override // defpackage.l7
    public Path getPath() {
        this.c.reset();
        if (this.e.c()) {
            return this.c;
        }
        int ordinal = this.e.b().ordinal();
        if (ordinal == 0) {
            for (int i = 0; i < this.d.size(); i++) {
                this.c.addPath(this.d.get(i).getPath());
            }
        } else if (ordinal == 1) {
            a(Path.Op.UNION);
        } else if (ordinal == 2) {
            a(Path.Op.REVERSE_DIFFERENCE);
        } else if (ordinal == 3) {
            a(Path.Op.INTERSECT);
        } else if (ordinal == 4) {
            a(Path.Op.XOR);
        }
        return this.c;
    }
}
