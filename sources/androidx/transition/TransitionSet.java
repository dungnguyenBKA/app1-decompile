package androidx.transition;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Iterator;

public class TransitionSet extends Transition {
    private boolean A = true;
    int B;
    boolean C = false;
    private int D = 0;
    private ArrayList<Transition> z = new ArrayList<>();

    class a extends s {
        final /* synthetic */ Transition a;

        a(TransitionSet transitionSet, Transition transition) {
            this.a = transition;
        }

        @Override // androidx.transition.Transition.d
        public void c(Transition transition) {
            this.a.H();
            transition.E(this);
        }
    }

    static class b extends s {
        TransitionSet a;

        b(TransitionSet transitionSet) {
            this.a = transitionSet;
        }

        @Override // androidx.transition.s, androidx.transition.Transition.d
        public void a(Transition transition) {
            TransitionSet transitionSet = this.a;
            if (!transitionSet.C) {
                transitionSet.O();
                this.a.C = true;
            }
        }

        @Override // androidx.transition.Transition.d
        public void c(Transition transition) {
            TransitionSet transitionSet = this.a;
            int i = transitionSet.B - 1;
            transitionSet.B = i;
            if (i == 0) {
                transitionSet.C = false;
                transitionSet.m();
            }
            transition.E(this);
        }
    }

    public TransitionSet() {
    }

    @Override // androidx.transition.Transition
    public void C(View view) {
        super.C(view);
        int size = this.z.size();
        for (int i = 0; i < size; i++) {
            this.z.get(i).C(view);
        }
    }

    @Override // androidx.transition.Transition
    public Transition E(Transition.d dVar) {
        super.E(dVar);
        return this;
    }

    @Override // androidx.transition.Transition
    public Transition F(View view) {
        for (int i = 0; i < this.z.size(); i++) {
            this.z.get(i).F(view);
        }
        this.g.remove(view);
        return this;
    }

    @Override // androidx.transition.Transition
    public void G(View view) {
        super.G(view);
        int size = this.z.size();
        for (int i = 0; i < size; i++) {
            this.z.get(i).G(view);
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    public void H() {
        if (this.z.isEmpty()) {
            O();
            m();
            return;
        }
        b bVar = new b(this);
        Iterator<Transition> it = this.z.iterator();
        while (it.hasNext()) {
            it.next().a(bVar);
        }
        this.B = this.z.size();
        if (!this.A) {
            for (int i = 1; i < this.z.size(); i++) {
                this.z.get(i - 1).a(new a(this, this.z.get(i)));
            }
            Transition transition = this.z.get(0);
            if (transition != null) {
                transition.H();
                return;
            }
            return;
        }
        Iterator<Transition> it2 = this.z.iterator();
        while (it2.hasNext()) {
            it2.next().H();
        }
    }

    @Override // androidx.transition.Transition
    public /* bridge */ /* synthetic */ Transition I(long j) {
        T(j);
        return this;
    }

    @Override // androidx.transition.Transition
    public void J(Transition.c cVar) {
        super.J(cVar);
        this.D |= 8;
        int size = this.z.size();
        for (int i = 0; i < size; i++) {
            this.z.get(i).J(cVar);
        }
    }

    @Override // androidx.transition.Transition
    public void L(PathMotion pathMotion) {
        super.L(pathMotion);
        this.D |= 4;
        if (this.z != null) {
            for (int i = 0; i < this.z.size(); i++) {
                this.z.get(i).L(pathMotion);
            }
        }
    }

    @Override // androidx.transition.Transition
    public void M(u uVar) {
        this.t = uVar;
        this.D |= 2;
        int size = this.z.size();
        for (int i = 0; i < size; i++) {
            this.z.get(i).M(uVar);
        }
    }

    @Override // androidx.transition.Transition
    public Transition N(long j) {
        super.N(j);
        return this;
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    public String P(String str) {
        String P = super.P(str);
        for (int i = 0; i < this.z.size(); i++) {
            StringBuilder r = ic.r(P, "\n");
            r.append(this.z.get(i).P(ic.i(str, "  ")));
            P = r.toString();
        }
        return P;
    }

    public TransitionSet Q(Transition transition) {
        this.z.add(transition);
        transition.j = this;
        long j = this.d;
        if (j >= 0) {
            transition.I(j);
        }
        if ((this.D & 1) != 0) {
            transition.K(q());
        }
        if ((this.D & 2) != 0) {
            transition.M(this.t);
        }
        if ((this.D & 4) != 0) {
            transition.L(s());
        }
        if ((this.D & 8) != 0) {
            transition.J(p());
        }
        return this;
    }

    public Transition R(int i) {
        if (i < 0 || i >= this.z.size()) {
            return null;
        }
        return this.z.get(i);
    }

    public int S() {
        return this.z.size();
    }

    public TransitionSet T(long j) {
        ArrayList<Transition> arrayList;
        this.d = j;
        if (j >= 0 && (arrayList = this.z) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.z.get(i).I(j);
            }
        }
        return this;
    }

    /* renamed from: U */
    public TransitionSet K(TimeInterpolator timeInterpolator) {
        this.D |= 1;
        ArrayList<Transition> arrayList = this.z;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.z.get(i).K(timeInterpolator);
            }
        }
        super.K(timeInterpolator);
        return this;
    }

    public TransitionSet V(int i) {
        if (i == 0) {
            this.A = true;
        } else if (i == 1) {
            this.A = false;
        } else {
            throw new AndroidRuntimeException(ic.f("Invalid parameter for TransitionSet ordering: ", i));
        }
        return this;
    }

    @Override // androidx.transition.Transition
    public Transition a(Transition.d dVar) {
        super.a(dVar);
        return this;
    }

    @Override // androidx.transition.Transition
    public Transition b(View view) {
        for (int i = 0; i < this.z.size(); i++) {
            this.z.get(i).b(view);
        }
        this.g.add(view);
        return this;
    }

    @Override // androidx.transition.Transition
    public void d(w wVar) {
        if (A(wVar.b)) {
            Iterator<Transition> it = this.z.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.A(wVar.b)) {
                    next.d(wVar);
                    wVar.c.add(next);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    public void f(w wVar) {
        super.f(wVar);
        int size = this.z.size();
        for (int i = 0; i < size; i++) {
            this.z.get(i).f(wVar);
        }
    }

    @Override // androidx.transition.Transition
    public void g(w wVar) {
        if (A(wVar.b)) {
            Iterator<Transition> it = this.z.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.A(wVar.b)) {
                    next.g(wVar);
                    wVar.c.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: j */
    public Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.z = new ArrayList<>();
        int size = this.z.size();
        for (int i = 0; i < size; i++) {
            Transition j = this.z.get(i).clone();
            transitionSet.z.add(j);
            j.j = transitionSet;
        }
        return transitionSet;
    }

    /* access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    public void l(ViewGroup viewGroup, x xVar, x xVar2, ArrayList<w> arrayList, ArrayList<w> arrayList2) {
        long u = u();
        int size = this.z.size();
        for (int i = 0; i < size; i++) {
            Transition transition = this.z.get(i);
            if (u > 0 && (this.A || i == 0)) {
                long u2 = transition.u();
                if (u2 > 0) {
                    transition.N(u2 + u);
                } else {
                    transition.N(u);
                }
            }
            transition.l(viewGroup, xVar, xVar2, arrayList, arrayList2);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.g);
        V(c1.i(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        obtainStyledAttributes.recycle();
    }
}
