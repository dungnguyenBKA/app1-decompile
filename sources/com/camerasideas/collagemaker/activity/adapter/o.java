package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class o extends rr<tn, BaseViewHolder> {
    private Context m;

    public o(List<tn> list, Context context) {
        super(list);
        this.m = context;
        K(0, R.layout.ch);
        K(1, R.layout.cb);
        K(2, R.layout.ci);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sr
    public void z(BaseViewHolder baseViewHolder, Object obj) {
        tn tnVar = (tn) obj;
        if (baseViewHolder.getItemViewType() == 2) {
            ((ImageView) baseViewHolder.getView(R.id.js)).setImageResource(tnVar.c());
            uq.t(baseViewHolder.getView(R.id.n2), tnVar.d());
        } else if (baseViewHolder.getItemViewType() == 0) {
            ((RecyclerView.LayoutParams) baseViewHolder.itemView.getLayoutParams()).setMarginStart(this.m.getResources().getDimensionPixelOffset(R.dimen.o3));
        }
    }
}
