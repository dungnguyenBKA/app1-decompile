package com.camerasideas.collagemaker.photoproc.crop;

import android.animation.ValueAnimator;

public final /* synthetic */ class a implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ CropEditorView a;

    public /* synthetic */ a(CropEditorView cropEditorView) {
        this.a = cropEditorView;
    }

    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.F(valueAnimator);
    }
}
