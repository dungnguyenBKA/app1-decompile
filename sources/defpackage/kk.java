package defpackage;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import defpackage.sk;

/* renamed from: kk  reason: default package */
public abstract class kk<Z> extends ok<ImageView, Z> implements sk.a {
    private Animatable d;

    public kk(ImageView imageView) {
        super(imageView);
    }

    private void m(Z z) {
        l(z);
        if (z instanceof Animatable) {
            Z z2 = z;
            this.d = z2;
            z2.start();
            return;
        }
        this.d = null;
    }

    @Override // defpackage.nk
    public void b(Z z, sk<? super Z> skVar) {
        if (skVar == null || !skVar.a(z, this)) {
            m(z);
        } else if (z instanceof Animatable) {
            Z z2 = z;
            this.d = z2;
            z2.start();
        } else {
            this.d = null;
        }
    }

    @Override // defpackage.fk, defpackage.nk
    public void d(Drawable drawable) {
        m(null);
        ((ImageView) this.b).setImageDrawable(drawable);
    }

    @Override // defpackage.ok, defpackage.nk
    public void e(Drawable drawable) {
        m(null);
        ((ImageView) this.b).setImageDrawable(drawable);
    }

    @Override // defpackage.ok, defpackage.nk
    public void g(Drawable drawable) {
        super.g(drawable);
        Animatable animatable = this.d;
        if (animatable != null) {
            animatable.stop();
        }
        m(null);
        ((ImageView) this.b).setImageDrawable(drawable);
    }

    public Drawable j() {
        return ((ImageView) this.b).getDrawable();
    }

    public void k(Drawable drawable) {
        ((ImageView) this.b).setImageDrawable(drawable);
    }

    /* access modifiers changed from: protected */
    public abstract void l(Z z);

    @Override // defpackage.gj, defpackage.fk
    public void onStart() {
        Animatable animatable = this.d;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // defpackage.gj, defpackage.fk
    public void onStop() {
        Animatable animatable = this.d;
        if (animatable != null) {
            animatable.stop();
        }
    }
}
