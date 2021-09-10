package defpackage;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* renamed from: s9  reason: default package */
public class s9 {
    private final List<k8> a;
    private PointF b;
    private boolean c;

    public s9(PointF pointF, boolean z, List<k8> list) {
        this.b = pointF;
        this.c = z;
        this.a = new ArrayList(list);
    }

    public List<k8> a() {
        return this.a;
    }

    public PointF b() {
        return this.b;
    }

    public void c(s9 s9Var, s9 s9Var2, float f) {
        if (this.b == null) {
            this.b = new PointF();
        }
        this.c = s9Var.c || s9Var2.c;
        if (s9Var.a.size() != s9Var2.a.size()) {
            StringBuilder q = ic.q("Curves must have the same number of control points. Shape 1: ");
            q.append(s9Var.a.size());
            q.append("\tShape 2: ");
            q.append(s9Var2.a.size());
            zb.b(q.toString());
        }
        int min = Math.min(s9Var.a.size(), s9Var2.a.size());
        if (this.a.size() < min) {
            for (int size = this.a.size(); size < min; size++) {
                this.a.add(new k8());
            }
        } else if (this.a.size() > min) {
            for (int size2 = this.a.size() - 1; size2 >= min; size2--) {
                List<k8> list = this.a;
                list.remove(list.size() - 1);
            }
        }
        PointF pointF = s9Var.b;
        PointF pointF2 = s9Var2.b;
        float f2 = cc.f(pointF.x, pointF2.x, f);
        float f3 = cc.f(pointF.y, pointF2.y, f);
        if (this.b == null) {
            this.b = new PointF();
        }
        this.b.set(f2, f3);
        for (int size3 = this.a.size() - 1; size3 >= 0; size3--) {
            k8 k8Var = s9Var.a.get(size3);
            k8 k8Var2 = s9Var2.a.get(size3);
            PointF a2 = k8Var.a();
            PointF b2 = k8Var.b();
            PointF c2 = k8Var.c();
            PointF a3 = k8Var2.a();
            PointF b3 = k8Var2.b();
            PointF c3 = k8Var2.c();
            this.a.get(size3).d(cc.f(a2.x, a3.x, f), cc.f(a2.y, a3.y, f));
            this.a.get(size3).e(cc.f(b2.x, b3.x, f), cc.f(b2.y, b3.y, f));
            this.a.get(size3).f(cc.f(c2.x, c3.x, f), cc.f(c2.y, c3.y, f));
        }
    }

    public boolean d() {
        return this.c;
    }

    public String toString() {
        StringBuilder q = ic.q("ShapeData{numCurves=");
        q.append(this.a.size());
        q.append("closed=");
        q.append(this.c);
        q.append('}');
        return q.toString();
    }

    public s9() {
        this.a = new ArrayList();
    }
}
