package com.camerasideas.collagemaker.activity;

import com.bumptech.glide.c;

public final /* synthetic */ class q implements je0 {
    public static final /* synthetic */ q a = new q();

    private /* synthetic */ q() {
    }

    @Override // defpackage.je0
    public final void a(Object obj) {
        int i = ImageCutoutActivity.g;
        if (!((Boolean) obj).booleanValue()) {
            em.h("ImageCutoutActivity", "setOrgImageUri: fail");
            System.gc();
            c.c(CollageMakerApplication.b()).b();
        }
    }
}
