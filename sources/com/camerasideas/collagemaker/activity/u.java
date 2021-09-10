package com.camerasideas.collagemaker.activity;

import android.graphics.Bitmap;

public final /* synthetic */ class u implements Runnable {
    public final /* synthetic */ ImageCutoutActivity b;
    public final /* synthetic */ Bitmap c;

    public /* synthetic */ u(ImageCutoutActivity imageCutoutActivity, Bitmap bitmap) {
        this.b = imageCutoutActivity;
        this.c = bitmap;
    }

    public final void run() {
        ImageCutoutActivity imageCutoutActivity = this.b;
        Bitmap bitmap = this.c;
        uq.t(imageCutoutActivity.mBtnChangeAlpha, true);
        if (imageCutoutActivity.mCutoutView != null && wq.o(bitmap)) {
            imageCutoutActivity.mCutoutView.h0(bitmap);
            imageCutoutActivity.mCutoutView.invalidate();
        }
        imageCutoutActivity.c();
    }
}
