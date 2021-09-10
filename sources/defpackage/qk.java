package defpackage;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import defpackage.sk;

/* renamed from: qk  reason: default package */
public class qk implements sk<Drawable> {
    private final int a;
    private final boolean b;

    public qk(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, sk$a] */
    @Override // defpackage.sk
    public boolean a(Drawable drawable, sk.a aVar) {
        Drawable drawable2 = drawable;
        kk kkVar = (kk) aVar;
        Drawable j = kkVar.j();
        if (j == null) {
            j = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{j, drawable2});
        transitionDrawable.setCrossFadeEnabled(this.b);
        transitionDrawable.startTransition(this.a);
        kkVar.k(transitionDrawable);
        return true;
    }
}
