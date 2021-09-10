package com.camerasideas.collagemaker.activity;

import androidx.core.app.b;
import inshot.collage.adconfig.h;
import inshot.collage.adconfig.i;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public final /* synthetic */ class j0 implements h.c {
    public final /* synthetic */ MainActivity a;

    public /* synthetic */ j0(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    @Override // inshot.collage.adconfig.h.c
    public final void a(i iVar) {
        MainActivity mainActivity = this.a;
        Objects.requireNonNull(mainActivity);
        if (iVar == i.HomePage && b.g(mainActivity)) {
            uq.t(mainActivity.findViewById(R.id.j6), false);
            h.g.n(mainActivity.mCardAdLayout, iVar);
        }
    }
}
