package defpackage;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* renamed from: a7  reason: default package */
public class a7 {
    private List<r7> a = new ArrayList();

    /* access modifiers changed from: package-private */
    public void a(r7 r7Var) {
        this.a.add(r7Var);
    }

    public void b(Path path) {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            r7 r7Var = this.a.get(size);
            int i = dc.g;
            if (r7Var != null && !r7Var.j()) {
                dc.a(path, ((u7) r7Var.h()).m() / 100.0f, ((u7) r7Var.e()).m() / 100.0f, ((u7) r7Var.g()).m() / 360.0f);
            }
        }
    }
}
