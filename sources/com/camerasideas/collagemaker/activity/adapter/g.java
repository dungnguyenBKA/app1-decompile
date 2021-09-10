package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import com.android.billingclient.api.j;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import photoeditor.cutout.backgrounderaser.R;

public class g extends sr<j, BaseViewHolder> {
    public g(Context context) {
        super(R.layout.c4, null);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.chad.library.adapter.base.viewholder.BaseViewHolder, java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // defpackage.sr
    public void z(BaseViewHolder baseViewHolder, j jVar) {
        baseViewHolder.setText(R.id.nd, jVar.c());
    }
}
