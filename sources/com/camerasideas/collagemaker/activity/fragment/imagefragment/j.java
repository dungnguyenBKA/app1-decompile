package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.net.Uri;
import com.camerasideas.collagemaker.filter.ISCropFilter;

public final /* synthetic */ class j implements vd0 {
    public final /* synthetic */ ImageCutoutBgFragment a;
    public final /* synthetic */ Uri b;
    public final /* synthetic */ ISCropFilter c;

    public /* synthetic */ j(ImageCutoutBgFragment imageCutoutBgFragment, Uri uri, ISCropFilter iSCropFilter) {
        this.a = imageCutoutBgFragment;
        this.b = uri;
        this.c = iSCropFilter;
    }

    @Override // defpackage.vd0
    public final void a(ud0 ud0) {
        this.a.f2(this.b, this.c, ud0);
    }
}
