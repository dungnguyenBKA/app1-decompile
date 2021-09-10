package com.camerasideas.collagemaker.activity;

import java.util.Objects;

public final /* synthetic */ class v implements je0 {
    public final /* synthetic */ ImageCutoutActivity a;

    public /* synthetic */ v(ImageCutoutActivity imageCutoutActivity) {
        this.a = imageCutoutActivity;
    }

    @Override // defpackage.je0
    public final void a(Object obj) {
        ImageCutoutActivity imageCutoutActivity = this.a;
        Objects.requireNonNull(imageCutoutActivity);
        em.h("ImageCutoutActivity", "setOrgImageUri: exception: " + ((Throwable) obj));
        imageCutoutActivity.c();
    }
}
