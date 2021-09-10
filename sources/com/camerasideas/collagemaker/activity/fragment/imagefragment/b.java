package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.dm;

public final /* synthetic */ class b implements dm.d {
    public final /* synthetic */ ImageCutoutBgFragment b;
    public final /* synthetic */ int c;

    public /* synthetic */ b(ImageCutoutBgFragment imageCutoutBgFragment, int i) {
        this.b = imageCutoutBgFragment;
        this.c = i;
    }

    @Override // defpackage.dm.d
    public final void l(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i, View view) {
        this.b.a2(this.c, recyclerView, b0Var, i, view);
    }
}
