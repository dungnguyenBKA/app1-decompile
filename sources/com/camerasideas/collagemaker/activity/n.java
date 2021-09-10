package com.camerasideas.collagemaker.activity;

public final /* synthetic */ class n implements Runnable {
    public final /* synthetic */ ImageCutoutActivity b;

    public /* synthetic */ n(ImageCutoutActivity imageCutoutActivity) {
        this.b = imageCutoutActivity;
    }

    public final void run() {
        this.b.mCutoutView.invalidate();
    }
}
