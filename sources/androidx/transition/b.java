package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Matrix;
import android.view.View;
import androidx.transition.ChangeTransform;
import photoeditor.cutout.backgrounderaser.R;

class b extends AnimatorListenerAdapter {
    private boolean a;
    private Matrix b = new Matrix();
    final /* synthetic */ boolean c;
    final /* synthetic */ Matrix d;
    final /* synthetic */ View e;
    final /* synthetic */ ChangeTransform.e f;
    final /* synthetic */ ChangeTransform.d g;
    final /* synthetic */ ChangeTransform h;

    b(ChangeTransform changeTransform, boolean z, Matrix matrix, View view, ChangeTransform.e eVar, ChangeTransform.d dVar) {
        this.h = changeTransform;
        this.c = z;
        this.d = matrix;
        this.e = view;
        this.f = eVar;
        this.g = dVar;
    }

    public void onAnimationCancel(Animator animator) {
        this.a = true;
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.a) {
            if (!this.c || !this.h.z) {
                this.e.setTag(R.id.sq, null);
                this.e.setTag(R.id.ml, null);
            } else {
                this.b.set(this.d);
                this.e.setTag(R.id.sq, this.b);
                this.f.a(this.e);
            }
        }
        b0.d(this.e, null);
        this.f.a(this.e);
    }

    public void onAnimationPause(Animator animator) {
        this.b.set(this.g.a());
        this.e.setTag(R.id.sq, this.b);
        this.f.a(this.e);
    }

    public void onAnimationResume(Animator animator) {
        ChangeTransform.R(this.e);
    }
}
