package com.camerasideas.collagemaker.activity;

public final /* synthetic */ class i implements Runnable {
    public final /* synthetic */ ImageCropActivity b;

    public /* synthetic */ i(ImageCropActivity imageCropActivity) {
        this.b = imageCropActivity;
    }

    public final void run() {
        ImageCropActivity imageCropActivity = this.b;
        if (imageCropActivity.mCropView == null) {
            imageCropActivity.finish();
            return;
        }
        while (imageCropActivity.mCropView.getWidth() <= 0) {
            try {
                Thread.sleep(50);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        imageCropActivity.n.post(new j(imageCropActivity));
    }
}
