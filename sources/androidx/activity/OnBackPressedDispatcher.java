package androidx.activity;

import androidx.lifecycle.f;
import androidx.lifecycle.g;
import androidx.lifecycle.i;
import java.util.ArrayDeque;
import java.util.Iterator;

public final class OnBackPressedDispatcher {
    private final Runnable a;
    final ArrayDeque<b> b = new ArrayDeque<>();

    private class LifecycleOnBackPressedCancellable implements g, a {
        private final f a;
        private final b b;
        private a c;

        LifecycleOnBackPressedCancellable(f fVar, b bVar) {
            this.a = fVar;
            this.b = bVar;
            fVar.a(this);
        }

        @Override // androidx.lifecycle.g
        public void c(i iVar, f.a aVar) {
            if (aVar == f.a.ON_START) {
                OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                b bVar = this.b;
                onBackPressedDispatcher.b.add(bVar);
                a aVar2 = new a(bVar);
                bVar.a(aVar2);
                this.c = aVar2;
            } else if (aVar == f.a.ON_STOP) {
                a aVar3 = this.c;
                if (aVar3 != null) {
                    aVar3.cancel();
                }
            } else if (aVar == f.a.ON_DESTROY) {
                cancel();
            }
        }

        @Override // androidx.activity.a
        public void cancel() {
            this.a.c(this);
            this.b.e(this);
            a aVar = this.c;
            if (aVar != null) {
                aVar.cancel();
                this.c = null;
            }
        }
    }

    private class a implements a {
        private final b a;

        a(b bVar) {
            this.a = bVar;
        }

        @Override // androidx.activity.a
        public void cancel() {
            OnBackPressedDispatcher.this.b.remove(this.a);
            this.a.e(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.a = runnable;
    }

    public void a(i iVar, b bVar) {
        f lifecycle = iVar.getLifecycle();
        if (lifecycle.b() != f.b.DESTROYED) {
            bVar.a(new LifecycleOnBackPressedCancellable(lifecycle, bVar));
        }
    }

    public void b() {
        Iterator<b> descendingIterator = this.b.descendingIterator();
        while (descendingIterator.hasNext()) {
            b next = descendingIterator.next();
            if (next.c()) {
                next.b();
                return;
            }
        }
        Runnable runnable = this.a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
