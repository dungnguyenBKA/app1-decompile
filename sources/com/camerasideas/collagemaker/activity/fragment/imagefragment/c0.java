package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import java.util.concurrent.Callable;

public final /* synthetic */ class c0 implements Callable {
    public final /* synthetic */ ImageCutoutShapeFragment b;

    public /* synthetic */ c0(ImageCutoutShapeFragment imageCutoutShapeFragment) {
        this.b = imageCutoutShapeFragment;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return Boolean.valueOf(this.b.b0.m0(2));
    }
}
