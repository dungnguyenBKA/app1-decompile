package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import com.camerasideas.collagemaker.photoproc.graphicsitems.j;

public final /* synthetic */ class g0 implements Runnable {
    public final /* synthetic */ ImageTextFragment b;
    public final /* synthetic */ j c;

    public /* synthetic */ g0(ImageTextFragment imageTextFragment, j jVar) {
        this.b = imageTextFragment;
        this.c = jVar;
    }

    public final void run() {
        ImageTextFragment imageTextFragment = this.b;
        j jVar = this.c;
        imageTextFragment.mEditText.a(jVar.H());
        imageTextFragment.mEditText.G(jVar);
        imageTextFragment.mTextSizeBar.d((int) (((float) (imageTextFragment.mEditText.b().A() - 12)) * 1.5f));
    }
}
