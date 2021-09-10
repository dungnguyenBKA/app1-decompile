package com.camerasideas.collagemaker.activity.adapter;

import android.view.View;
import com.camerasideas.collagemaker.activity.ImageSelectorActivity;
import com.camerasideas.collagemaker.activity.adapter.l;

public final /* synthetic */ class b implements View.OnClickListener {
    public final /* synthetic */ l.b b;

    public /* synthetic */ b(l.b bVar) {
        this.b = bVar;
    }

    public final void onClick(View view) {
        l.b bVar = this.b;
        if (bVar.c != null) {
            int adapterPosition = bVar.getAdapterPosition();
            ((ImageSelectorActivity) bVar.c).s(bVar.d, adapterPosition);
        }
    }
}
