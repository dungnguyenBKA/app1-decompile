package com.camerasideas.collagemaker.activity.widget;

import com.camerasideas.collagemaker.activity.widget.n;
import java.util.Objects;

public final /* synthetic */ class b implements n.e {
    public final /* synthetic */ CustomTabLayout a;

    public /* synthetic */ b(CustomTabLayout customTabLayout) {
        this.a = customTabLayout;
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.e
    public final void a(n nVar) {
        CustomTabLayout customTabLayout = this.a;
        Objects.requireNonNull(customTabLayout);
        customTabLayout.scrollTo(nVar.e(), 0);
    }
}
