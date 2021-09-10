package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import photoeditor.cutout.backgrounderaser.R;

public class t {
    private static Transition a = new AutoTransition();
    private static ThreadLocal<WeakReference<x<ViewGroup, ArrayList<Transition>>>> b = new ThreadLocal<>();
    static ArrayList<ViewGroup> c = new ArrayList<>();

    private static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
        Transition b;
        ViewGroup c;

        /* renamed from: androidx.transition.t$a$a  reason: collision with other inner class name */
        class C0021a extends s {
            final /* synthetic */ x a;

            C0021a(x xVar) {
                this.a = xVar;
            }

            @Override // androidx.transition.Transition.d
            public void c(Transition transition) {
                ((ArrayList) this.a.get(a.this.c)).remove(transition);
                transition.E(this);
            }
        }

        a(Transition transition, ViewGroup viewGroup) {
            this.b = transition;
            this.c = viewGroup;
        }

        public boolean onPreDraw() {
            this.c.getViewTreeObserver().removeOnPreDrawListener(this);
            this.c.removeOnAttachStateChangeListener(this);
            if (!t.c.remove(this.c)) {
                return true;
            }
            x<ViewGroup, ArrayList<Transition>> b2 = t.b();
            ArrayList<Transition> arrayList = b2.get(this.c);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                b2.put(this.c, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.b);
            this.b.a(new C0021a(b2));
            this.b.h(this.c, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).G(this.c);
                }
            }
            this.b.D(this.c);
            return true;
        }

        public void onViewAttachedToWindow(View view) {
        }

        public void onViewDetachedFromWindow(View view) {
            this.c.getViewTreeObserver().removeOnPreDrawListener(this);
            this.c.removeOnAttachStateChangeListener(this);
            t.c.remove(this.c);
            ArrayList<Transition> arrayList = t.b().get(this.c);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().G(this.c);
                }
            }
            this.b.i(true);
        }
    }

    public static void a(ViewGroup viewGroup, Transition transition) {
        if (!c.contains(viewGroup)) {
            int i = c3.g;
            if (viewGroup.isLaidOut()) {
                c.add(viewGroup);
                if (transition == null) {
                    transition = a;
                }
                Transition j = transition.clone();
                ArrayList<Transition> orDefault = b().getOrDefault(viewGroup, null);
                if (orDefault != null && orDefault.size() > 0) {
                    Iterator<Transition> it = orDefault.iterator();
                    while (it.hasNext()) {
                        it.next().C(viewGroup);
                    }
                }
                if (j != null) {
                    j.h(viewGroup, true);
                }
                if (((n) viewGroup.getTag(R.id.sm)) == null) {
                    viewGroup.setTag(R.id.sm, null);
                    if (j != null) {
                        a aVar = new a(j, viewGroup);
                        viewGroup.addOnAttachStateChangeListener(aVar);
                        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
                        return;
                    }
                    return;
                }
                throw null;
            }
        }
    }

    static x<ViewGroup, ArrayList<Transition>> b() {
        x<ViewGroup, ArrayList<Transition>> xVar;
        WeakReference<x<ViewGroup, ArrayList<Transition>>> weakReference = b.get();
        if (weakReference != null && (xVar = weakReference.get()) != null) {
            return xVar;
        }
        x<ViewGroup, ArrayList<Transition>> xVar2 = new x<>();
        b.set(new WeakReference<>(xVar2));
        return xVar2;
    }
}
