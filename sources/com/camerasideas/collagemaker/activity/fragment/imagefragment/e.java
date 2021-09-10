package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import java.util.Objects;

public final /* synthetic */ class e implements je0 {
    public final /* synthetic */ ImageCutoutBgFragment a;

    public /* synthetic */ e(ImageCutoutBgFragment imageCutoutBgFragment) {
        this.a = imageCutoutBgFragment;
    }

    @Override // defpackage.je0
    public final void a(Object obj) {
        ImageCutoutBgFragment imageCutoutBgFragment = this.a;
        Objects.requireNonNull(imageCutoutBgFragment);
        em.h("ImageCutoutBgFragment", "processSelectBgUri: exception: " + ((Throwable) obj));
        imageCutoutBgFragment.o1();
    }
}
