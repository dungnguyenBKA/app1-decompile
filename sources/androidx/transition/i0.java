package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class i0 extends s {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ View b;
    final /* synthetic */ View c;
    final /* synthetic */ Visibility d;

    i0(Visibility visibility, ViewGroup viewGroup, View view, View view2) {
        this.d = visibility;
        this.a = viewGroup;
        this.b = view;
        this.c = view2;
    }

    @Override // androidx.transition.s, androidx.transition.Transition.d
    public void b(Transition transition) {
        new z(this.a).b(this.b);
    }

    @Override // androidx.transition.Transition.d
    public void c(Transition transition) {
        this.c.setTag(R.id.op, null);
        new z(this.a).b(this.b);
        transition.E(this);
    }

    @Override // androidx.transition.s, androidx.transition.Transition.d
    public void e(Transition transition) {
        if (this.b.getParent() == null) {
            new z(this.a).a(this.b);
        } else {
            this.d.cancel();
        }
    }
}
