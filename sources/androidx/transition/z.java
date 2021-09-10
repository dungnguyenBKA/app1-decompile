package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* access modifiers changed from: package-private */
public class z {
    private final ViewGroupOverlay a;

    z(ViewGroup viewGroup) {
        this.a = viewGroup.getOverlay();
    }

    public void a(View view) {
        this.a.add(view);
    }

    public void b(View view) {
        this.a.remove(view);
    }
}
