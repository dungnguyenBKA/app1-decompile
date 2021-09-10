package com.camerasideas.collagemaker.activity;

public final /* synthetic */ class r implements ie0 {
    public final /* synthetic */ ImageCutoutActivity a;

    public /* synthetic */ r(ImageCutoutActivity imageCutoutActivity) {
        this.a = imageCutoutActivity;
    }

    @Override // defpackage.ie0
    public final void run() {
        ImageCutoutActivity imageCutoutActivity = this.a;
        imageCutoutActivity.c();
        if (imageCutoutActivity.mCutoutView != null) {
            imageCutoutActivity.m();
            ml.h(new m(imageCutoutActivity, imageCutoutActivity.mCutoutView.H()));
        }
    }
}
