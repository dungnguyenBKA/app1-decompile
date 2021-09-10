package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import com.bumptech.glide.c;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;

public final /* synthetic */ class g implements je0 {
    public static final /* synthetic */ g a = new g();

    private /* synthetic */ g() {
    }

    @Override // defpackage.je0
    public final void a(Object obj) {
        int i = ImageCutoutBgFragment.L0;
        if (!((Boolean) obj).booleanValue()) {
            em.h("ImageCutoutBgFragment", "processSelectBgUri: fail");
            System.gc();
            c.c(CollageMakerApplication.b()).b();
        }
    }
}
