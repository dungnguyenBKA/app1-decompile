package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import java.util.Objects;

public final /* synthetic */ class y implements je0 {
    public final /* synthetic */ ImageCutoutFragment a;

    public /* synthetic */ y(ImageCutoutFragment imageCutoutFragment) {
        this.a = imageCutoutFragment;
    }

    @Override // defpackage.je0
    public final void a(Object obj) {
        ImageCutoutFragment imageCutoutFragment = this.a;
        Objects.requireNonNull(imageCutoutFragment);
        em.h("ImageCutoutFragment", "cutoutUndo: exception: " + ((Throwable) obj));
        imageCutoutFragment.o1();
    }
}
