package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

public class e extends a0 {
    private static TimeInterpolator s;
    private ArrayList<RecyclerView.b0> h = new ArrayList<>();
    private ArrayList<RecyclerView.b0> i = new ArrayList<>();
    private ArrayList<C0018e> j = new ArrayList<>();
    private ArrayList<d> k = new ArrayList<>();
    ArrayList<ArrayList<RecyclerView.b0>> l = new ArrayList<>();
    ArrayList<ArrayList<C0018e>> m = new ArrayList<>();
    ArrayList<ArrayList<d>> n = new ArrayList<>();
    ArrayList<RecyclerView.b0> o = new ArrayList<>();
    ArrayList<RecyclerView.b0> p = new ArrayList<>();
    ArrayList<RecyclerView.b0> q = new ArrayList<>();
    ArrayList<RecyclerView.b0> r = new ArrayList<>();

    class a implements Runnable {
        final /* synthetic */ ArrayList b;

        a(ArrayList arrayList) {
            this.b = arrayList;
        }

        public void run() {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                C0018e eVar = (C0018e) it.next();
                e eVar2 = e.this;
                RecyclerView.b0 b0Var = eVar.a;
                int i = eVar.b;
                int i2 = eVar.c;
                int i3 = eVar.d;
                int i4 = eVar.e;
                Objects.requireNonNull(eVar2);
                View view = b0Var.itemView;
                int i5 = i3 - i;
                int i6 = i4 - i2;
                if (i5 != 0) {
                    view.animate().translationX(0.0f);
                }
                if (i6 != 0) {
                    view.animate().translationY(0.0f);
                }
                ViewPropertyAnimator animate = view.animate();
                eVar2.p.add(b0Var);
                animate.setDuration(eVar2.j()).setListener(new h(eVar2, b0Var, i5, view, i6, animate)).start();
            }
            this.b.clear();
            e.this.m.remove(this.b);
        }
    }

    class b implements Runnable {
        final /* synthetic */ ArrayList b;

        b(ArrayList arrayList) {
            this.b = arrayList;
        }

        public void run() {
            View view;
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                d dVar = (d) it.next();
                e eVar = e.this;
                Objects.requireNonNull(eVar);
                RecyclerView.b0 b0Var = dVar.a;
                View view2 = null;
                if (b0Var == null) {
                    view = null;
                } else {
                    view = b0Var.itemView;
                }
                RecyclerView.b0 b0Var2 = dVar.b;
                if (b0Var2 != null) {
                    view2 = b0Var2.itemView;
                }
                if (view != null) {
                    ViewPropertyAnimator duration = view.animate().setDuration(eVar.i());
                    eVar.r.add(dVar.a);
                    duration.translationX((float) (dVar.e - dVar.c));
                    duration.translationY((float) (dVar.f - dVar.d));
                    duration.alpha(0.0f).setListener(new i(eVar, dVar, duration, view)).start();
                }
                if (view2 != null) {
                    ViewPropertyAnimator animate = view2.animate();
                    eVar.r.add(dVar.b);
                    animate.translationX(0.0f).translationY(0.0f).setDuration(eVar.i()).alpha(1.0f).setListener(new j(eVar, dVar, animate, view2)).start();
                }
            }
            this.b.clear();
            e.this.n.remove(this.b);
        }
    }

    class c implements Runnable {
        final /* synthetic */ ArrayList b;

        c(ArrayList arrayList) {
            this.b = arrayList;
        }

        public void run() {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                RecyclerView.b0 b0Var = (RecyclerView.b0) it.next();
                e eVar = e.this;
                Objects.requireNonNull(eVar);
                View view = b0Var.itemView;
                ViewPropertyAnimator animate = view.animate();
                eVar.o.add(b0Var);
                animate.alpha(1.0f).setDuration(eVar.h()).setListener(new g(eVar, b0Var, view, animate)).start();
            }
            this.b.clear();
            e.this.l.remove(this.b);
        }
    }

    /* access modifiers changed from: private */
    public static class d {
        public RecyclerView.b0 a;
        public RecyclerView.b0 b;
        public int c;
        public int d;
        public int e;
        public int f;

        d(RecyclerView.b0 b0Var, RecyclerView.b0 b0Var2, int i, int i2, int i3, int i4) {
            this.a = b0Var;
            this.b = b0Var2;
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
        }

        public String toString() {
            StringBuilder q = ic.q("ChangeInfo{oldHolder=");
            q.append(this.a);
            q.append(", newHolder=");
            q.append(this.b);
            q.append(", fromX=");
            q.append(this.c);
            q.append(", fromY=");
            q.append(this.d);
            q.append(", toX=");
            q.append(this.e);
            q.append(", toY=");
            q.append(this.f);
            q.append('}');
            return q.toString();
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.e$e  reason: collision with other inner class name */
    public static class C0018e {
        public RecyclerView.b0 a;
        public int b;
        public int c;
        public int d;
        public int e;

        C0018e(RecyclerView.b0 b0Var, int i, int i2, int i3, int i4) {
            this.a = b0Var;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }
    }

    private void w(List<d> list, RecyclerView.b0 b0Var) {
        int size = list.size();
        while (true) {
            size--;
            if (size >= 0) {
                d dVar = list.get(size);
                if (x(dVar, b0Var) && dVar.a == null && dVar.b == null) {
                    list.remove(dVar);
                }
            } else {
                return;
            }
        }
    }

    private boolean x(d dVar, RecyclerView.b0 b0Var) {
        if (dVar.b == b0Var) {
            dVar.b = null;
        } else if (dVar.a != b0Var) {
            return false;
        } else {
            dVar.a = null;
        }
        b0Var.itemView.setAlpha(1.0f);
        b0Var.itemView.setTranslationX(0.0f);
        b0Var.itemView.setTranslationY(0.0f);
        d(b0Var);
        return true;
    }

    private void y(RecyclerView.b0 b0Var) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        b0Var.itemView.animate().setInterpolator(s);
        f(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean c(RecyclerView.b0 b0Var, List<Object> list) {
        return !list.isEmpty() || super.c(b0Var, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void f(RecyclerView.b0 b0Var) {
        View view = b0Var.itemView;
        view.animate().cancel();
        int size = this.j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else if (this.j.get(size).a == b0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                d(b0Var);
                this.j.remove(size);
            }
        }
        w(this.k, b0Var);
        if (this.h.remove(b0Var)) {
            view.setAlpha(1.0f);
            d(b0Var);
        }
        if (this.i.remove(b0Var)) {
            view.setAlpha(1.0f);
            d(b0Var);
        }
        int size2 = this.n.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            ArrayList<d> arrayList = this.n.get(size2);
            w(arrayList, b0Var);
            if (arrayList.isEmpty()) {
                this.n.remove(size2);
            }
        }
        int size3 = this.m.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            ArrayList<C0018e> arrayList2 = this.m.get(size3);
            int size4 = arrayList2.size();
            while (true) {
                size4--;
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).a == b0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    d(b0Var);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.m.remove(size3);
                    }
                }
            }
        }
        int size5 = this.l.size();
        while (true) {
            size5--;
            if (size5 >= 0) {
                ArrayList<RecyclerView.b0> arrayList3 = this.l.get(size5);
                if (arrayList3.remove(b0Var)) {
                    view.setAlpha(1.0f);
                    d(b0Var);
                    if (arrayList3.isEmpty()) {
                        this.l.remove(size5);
                    }
                }
            } else {
                this.q.remove(b0Var);
                this.o.remove(b0Var);
                this.r.remove(b0Var);
                this.p.remove(b0Var);
                v();
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void g() {
        int size = this.j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C0018e eVar = this.j.get(size);
            View view = eVar.a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            d(eVar.a);
            this.j.remove(size);
        }
        int size2 = this.h.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            d(this.h.get(size2));
            this.h.remove(size2);
        }
        int size3 = this.i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.b0 b0Var = this.i.get(size3);
            b0Var.itemView.setAlpha(1.0f);
            d(b0Var);
            this.i.remove(size3);
        }
        int size4 = this.k.size();
        while (true) {
            size4--;
            if (size4 < 0) {
                break;
            }
            d dVar = this.k.get(size4);
            RecyclerView.b0 b0Var2 = dVar.a;
            if (b0Var2 != null) {
                x(dVar, b0Var2);
            }
            RecyclerView.b0 b0Var3 = dVar.b;
            if (b0Var3 != null) {
                x(dVar, b0Var3);
            }
        }
        this.k.clear();
        if (l()) {
            int size5 = this.m.size();
            while (true) {
                size5--;
                if (size5 < 0) {
                    break;
                }
                ArrayList<C0018e> arrayList = this.m.get(size5);
                int size6 = arrayList.size();
                while (true) {
                    size6--;
                    if (size6 >= 0) {
                        C0018e eVar2 = arrayList.get(size6);
                        View view2 = eVar2.a.itemView;
                        view2.setTranslationY(0.0f);
                        view2.setTranslationX(0.0f);
                        d(eVar2.a);
                        arrayList.remove(size6);
                        if (arrayList.isEmpty()) {
                            this.m.remove(arrayList);
                        }
                    }
                }
            }
            int size7 = this.l.size();
            while (true) {
                size7--;
                if (size7 < 0) {
                    break;
                }
                ArrayList<RecyclerView.b0> arrayList2 = this.l.get(size7);
                int size8 = arrayList2.size();
                while (true) {
                    size8--;
                    if (size8 >= 0) {
                        RecyclerView.b0 b0Var4 = arrayList2.get(size8);
                        b0Var4.itemView.setAlpha(1.0f);
                        d(b0Var4);
                        arrayList2.remove(size8);
                        if (arrayList2.isEmpty()) {
                            this.l.remove(arrayList2);
                        }
                    }
                }
            }
            int size9 = this.n.size();
            while (true) {
                size9--;
                if (size9 >= 0) {
                    ArrayList<d> arrayList3 = this.n.get(size9);
                    int size10 = arrayList3.size();
                    while (true) {
                        size10--;
                        if (size10 >= 0) {
                            d dVar2 = arrayList3.get(size10);
                            RecyclerView.b0 b0Var5 = dVar2.a;
                            if (b0Var5 != null) {
                                x(dVar2, b0Var5);
                            }
                            RecyclerView.b0 b0Var6 = dVar2.b;
                            if (b0Var6 != null) {
                                x(dVar2, b0Var6);
                            }
                            if (arrayList3.isEmpty()) {
                                this.n.remove(arrayList3);
                            }
                        }
                    }
                } else {
                    u(this.q);
                    u(this.p);
                    u(this.o);
                    u(this.r);
                    e();
                    return;
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean l() {
        return !this.i.isEmpty() || !this.k.isEmpty() || !this.j.isEmpty() || !this.h.isEmpty() || !this.p.isEmpty() || !this.q.isEmpty() || !this.o.isEmpty() || !this.r.isEmpty() || !this.m.isEmpty() || !this.l.isEmpty() || !this.n.isEmpty();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void n() {
        boolean z = !this.h.isEmpty();
        boolean z2 = !this.j.isEmpty();
        boolean z3 = !this.k.isEmpty();
        boolean z4 = !this.i.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.b0> it = this.h.iterator();
            while (it.hasNext()) {
                RecyclerView.b0 next = it.next();
                View view = next.itemView;
                ViewPropertyAnimator animate = view.animate();
                this.q.add(next);
                animate.setDuration(k()).alpha(0.0f).setListener(new f(this, next, animate, view)).start();
            }
            this.h.clear();
            if (z2) {
                ArrayList<C0018e> arrayList = new ArrayList<>();
                arrayList.addAll(this.j);
                this.m.add(arrayList);
                this.j.clear();
                a aVar = new a(arrayList);
                if (z) {
                    View view2 = arrayList.get(0).a.itemView;
                    long k2 = k();
                    int i2 = c3.g;
                    view2.postOnAnimationDelayed(aVar, k2);
                } else {
                    aVar.run();
                }
            }
            if (z3) {
                ArrayList<d> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.k);
                this.n.add(arrayList2);
                this.k.clear();
                b bVar = new b(arrayList2);
                if (z) {
                    View view3 = arrayList2.get(0).a.itemView;
                    long k3 = k();
                    int i3 = c3.g;
                    view3.postOnAnimationDelayed(bVar, k3);
                } else {
                    bVar.run();
                }
            }
            if (z4) {
                ArrayList<RecyclerView.b0> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.i);
                this.l.add(arrayList3);
                this.i.clear();
                c cVar = new c(arrayList3);
                if (z || z2 || z3) {
                    long j2 = 0;
                    long k4 = z ? k() : 0;
                    long j3 = z2 ? j() : 0;
                    if (z3) {
                        j2 = i();
                    }
                    View view4 = arrayList3.get(0).itemView;
                    int i4 = c3.g;
                    view4.postOnAnimationDelayed(cVar, Math.max(j3, j2) + k4);
                    return;
                }
                cVar.run();
            }
        }
    }

    @Override // androidx.recyclerview.widget.a0
    public boolean p(RecyclerView.b0 b0Var) {
        y(b0Var);
        b0Var.itemView.setAlpha(0.0f);
        this.i.add(b0Var);
        return true;
    }

    @Override // androidx.recyclerview.widget.a0
    public boolean q(RecyclerView.b0 b0Var, RecyclerView.b0 b0Var2, int i2, int i3, int i4, int i5) {
        if (b0Var == b0Var2) {
            return r(b0Var, i2, i3, i4, i5);
        }
        float translationX = b0Var.itemView.getTranslationX();
        float translationY = b0Var.itemView.getTranslationY();
        float alpha = b0Var.itemView.getAlpha();
        y(b0Var);
        b0Var.itemView.setTranslationX(translationX);
        b0Var.itemView.setTranslationY(translationY);
        b0Var.itemView.setAlpha(alpha);
        y(b0Var2);
        b0Var2.itemView.setTranslationX((float) (-((int) (((float) (i4 - i2)) - translationX))));
        b0Var2.itemView.setTranslationY((float) (-((int) (((float) (i5 - i3)) - translationY))));
        b0Var2.itemView.setAlpha(0.0f);
        this.k.add(new d(b0Var, b0Var2, i2, i3, i4, i5));
        return true;
    }

    @Override // androidx.recyclerview.widget.a0
    public boolean r(RecyclerView.b0 b0Var, int i2, int i3, int i4, int i5) {
        View view = b0Var.itemView;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i3 + ((int) b0Var.itemView.getTranslationY());
        y(b0Var);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            d(b0Var);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX((float) (-i6));
        }
        if (i7 != 0) {
            view.setTranslationY((float) (-i7));
        }
        this.j.add(new C0018e(b0Var, translationX, translationY, i4, i5));
        return true;
    }

    @Override // androidx.recyclerview.widget.a0
    public boolean s(RecyclerView.b0 b0Var) {
        y(b0Var);
        this.h.add(b0Var);
        return true;
    }

    /* access modifiers changed from: package-private */
    public void u(List<RecyclerView.b0> list) {
        int size = list.size();
        while (true) {
            size--;
            if (size >= 0) {
                list.get(size).itemView.animate().cancel();
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void v() {
        if (!l()) {
            e();
        }
    }
}
