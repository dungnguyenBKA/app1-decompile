package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.w;
import androidx.transition.Transition;
import java.util.ArrayList;

@SuppressLint({"RestrictedApi"})
public class e extends w {

    class a extends Transition.c {
        final /* synthetic */ Rect a;

        a(e eVar, Rect rect) {
            this.a = rect;
        }

        @Override // androidx.transition.Transition.c
        public Rect a(Transition transition) {
            return this.a;
        }
    }

    class b implements Transition.d {
        final /* synthetic */ View a;
        final /* synthetic */ ArrayList b;

        b(e eVar, View view, ArrayList arrayList) {
            this.a = view;
            this.b = arrayList;
        }

        @Override // androidx.transition.Transition.d
        public void a(Transition transition) {
        }

        @Override // androidx.transition.Transition.d
        public void b(Transition transition) {
        }

        @Override // androidx.transition.Transition.d
        public void c(Transition transition) {
            transition.E(this);
            this.a.setVisibility(8);
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.b.get(i)).setVisibility(0);
            }
        }

        @Override // androidx.transition.Transition.d
        public void d(Transition transition) {
        }

        @Override // androidx.transition.Transition.d
        public void e(Transition transition) {
        }
    }

    class c extends s {
        final /* synthetic */ Object a;
        final /* synthetic */ ArrayList b;
        final /* synthetic */ Object c;
        final /* synthetic */ ArrayList d;
        final /* synthetic */ Object e;
        final /* synthetic */ ArrayList f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.a = obj;
            this.b = arrayList;
            this.c = obj2;
            this.d = arrayList2;
            this.e = obj3;
            this.f = arrayList3;
        }

        @Override // androidx.transition.s, androidx.transition.Transition.d
        public void a(Transition transition) {
            Object obj = this.a;
            if (obj != null) {
                e.this.n(obj, this.b, null);
            }
            Object obj2 = this.c;
            if (obj2 != null) {
                e.this.n(obj2, this.d, null);
            }
            Object obj3 = this.e;
            if (obj3 != null) {
                e.this.n(obj3, this.f, null);
            }
        }

        @Override // androidx.transition.Transition.d
        public void c(Transition transition) {
            transition.E(this);
        }
    }

    class d extends Transition.c {
        final /* synthetic */ Rect a;

        d(e eVar, Rect rect) {
            this.a = rect;
        }

        @Override // androidx.transition.Transition.c
        public Rect a(Transition transition) {
            Rect rect = this.a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.a;
        }
    }

    private static boolean v(Transition transition) {
        return !w.k(transition.f) || !w.k(transition.v()) || !w.k(transition.w());
    }

    @Override // androidx.fragment.app.w
    public void a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).b(view);
        }
    }

    @Override // androidx.fragment.app.w
    public void b(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition != null) {
            int i = 0;
            if (transition instanceof TransitionSet) {
                TransitionSet transitionSet = (TransitionSet) transition;
                int S = transitionSet.S();
                while (i < S) {
                    b(transitionSet.R(i), arrayList);
                    i++;
                }
            } else if (!v(transition) && w.k(transition.g)) {
                int size = arrayList.size();
                while (i < size) {
                    transition.b(arrayList.get(i));
                    i++;
                }
            }
        }
    }

    @Override // androidx.fragment.app.w
    public void c(ViewGroup viewGroup, Object obj) {
        t.a(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.w
    public boolean e(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.w
    public Object g(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.w
    public Object l(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.Q((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.Q((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.Q((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.w
    public void m(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).F(view);
        }
    }

    @Override // androidx.fragment.app.w
    public void n(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        int i;
        Transition transition = (Transition) obj;
        int i2 = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int S = transitionSet.S();
            while (i2 < S) {
                n(transitionSet.R(i2), arrayList, arrayList2);
                i2++;
            }
        } else if (!v(transition)) {
            ArrayList<View> arrayList3 = transition.g;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                if (arrayList2 == null) {
                    i = 0;
                } else {
                    i = arrayList2.size();
                }
                while (i2 < i) {
                    transition.b(arrayList2.get(i2));
                    i2++;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    transition.F(arrayList.get(size));
                }
            }
        }
    }

    @Override // androidx.fragment.app.w
    public void o(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).a(new b(this, view, arrayList));
    }

    @Override // androidx.fragment.app.w
    public void p(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).a(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.w
    public void q(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).J(new d(this, rect));
        }
    }

    @Override // androidx.fragment.app.w
    public void r(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            j(view, rect);
            ((Transition) obj).J(new a(this, rect));
        }
    }

    @Override // androidx.fragment.app.w
    public void s(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        ArrayList<View> arrayList2 = transitionSet.g;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            w.d(arrayList2, arrayList.get(i));
        }
        arrayList2.add(view);
        arrayList.add(view);
        b(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.w
    public void t(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.g.clear();
            transitionSet.g.addAll(arrayList2);
            n(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.w
    public Object u(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.Q((Transition) obj);
        return transitionSet;
    }
}
