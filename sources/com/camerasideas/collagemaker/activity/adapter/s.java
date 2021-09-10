package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.b;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class s extends rr<q, BaseViewHolder> {
    private Context m;

    public s(Context context, List<q> list) {
        super(list);
        this.m = context;
        K(2, R.layout.ec);
        K(1, R.layout.ea);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sr
    public void z(BaseViewHolder baseViewHolder, Object obj) {
        q qVar = (q) obj;
        if (baseViewHolder.getItemViewType() == 0) {
            ((TextView) baseViewHolder.getView(R.id.pr)).setText(qVar.f());
        } else if (baseViewHolder.getItemViewType() == 1) {
            uq.t(baseViewHolder.getView(R.id.jd), true ^ TextUtils.isEmpty(qVar.b()));
            ((ImageView) baseViewHolder.getView(R.id.ju)).setImageResource(qVar.c());
            ((TextView) baseViewHolder.getView(R.id.jg)).setText(qVar.f());
            ((TextView) baseViewHolder.getView(R.id.jd)).setText(qVar.b());
            if (qVar.e() == 13) {
                baseViewHolder.getView(R.id.ps).setBackgroundResource(R.color.h4);
            } else {
                baseViewHolder.getView(R.id.ps).setBackgroundResource(R.drawable.d1);
            }
        } else if (baseViewHolder.getItemViewType() != 2) {
        } else {
            if (b.d0(this.m)) {
                uq.t(baseViewHolder.getView(R.id.je), false);
                uq.t(baseViewHolder.getView(R.id.pt), true);
                return;
            }
            uq.t(baseViewHolder.getView(R.id.je), true);
            uq.t(baseViewHolder.getView(R.id.pt), false);
        }
    }
}
