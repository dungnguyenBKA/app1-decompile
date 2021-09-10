package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* renamed from: t0  reason: default package */
public class t0 {
    public List<r0> a;
    public boolean b = false;
    public final int[] c = {-1, -1};
    List<r0> d = new ArrayList();
    List<r0> e = new ArrayList();
    HashSet<r0> f = new HashSet<>();
    HashSet<r0> g = new HashSet<>();
    List<r0> h = new ArrayList();
    List<r0> i = new ArrayList();

    t0(List<r0> list) {
        this.a = list;
    }

    private void c(ArrayList<r0> arrayList, r0 r0Var) {
        r0 r0Var2;
        if (!r0Var.c0) {
            arrayList.add(r0Var);
            r0Var.c0 = true;
            if (!r0Var.B()) {
                if (r0Var instanceof v0) {
                    v0 v0Var = (v0) r0Var;
                    int i2 = v0Var.j0;
                    for (int i3 = 0; i3 < i2; i3++) {
                        c(arrayList, v0Var.i0[i3]);
                    }
                }
                int length = r0Var.A.length;
                for (int i4 = 0; i4 < length; i4++) {
                    q0 q0Var = r0Var.A[i4].d;
                    if (!(q0Var == null || (r0Var2 = q0Var.b) == r0Var.D)) {
                        c(arrayList, r0Var2);
                    }
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0044  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0083  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d(defpackage.r0 r7) {
        /*
        // Method dump skipped, instructions count: 214
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t0.d(r0):void");
    }

    /* access modifiers changed from: package-private */
    public void a(r0 r0Var, int i2) {
        if (i2 == 0) {
            this.f.add(r0Var);
        } else if (i2 == 1) {
            this.g.add(r0Var);
        }
    }

    /* access modifiers changed from: package-private */
    public List<r0> b() {
        if (!this.h.isEmpty()) {
            return this.h;
        }
        int size = this.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            r0 r0Var = this.a.get(i2);
            if (!r0Var.a0) {
                c((ArrayList) this.h, r0Var);
            }
        }
        this.i.clear();
        this.i.addAll(this.a);
        this.i.removeAll(this.h);
        return this.h;
    }

    /* access modifiers changed from: package-private */
    public void e() {
        int size = this.i.size();
        for (int i2 = 0; i2 < size; i2++) {
            d(this.i.get(i2));
        }
    }

    t0(List<r0> list, boolean z) {
        this.a = list;
        this.b = z;
    }
}
