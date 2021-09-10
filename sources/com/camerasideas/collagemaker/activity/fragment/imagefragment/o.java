package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import java.util.concurrent.Callable;

public final /* synthetic */ class o implements Callable {
    public final /* synthetic */ ImageCutoutFragment b;

    public /* synthetic */ o(ImageCutoutFragment imageCutoutFragment) {
        this.b = imageCutoutFragment;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return Boolean.valueOf(this.b.I1(2));
    }
}
