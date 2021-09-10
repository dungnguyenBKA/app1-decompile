package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import butterknife.BindView;
import photoeditor.cutout.backgrounderaser.R;

public class AllowStorageAccessFragment extends sm implements View.OnClickListener {
    private a i0;
    @BindView
    ImageView mBtnClose;
    @BindView
    View mBtnOK;

    public interface a {
        void a();

        void onDismiss();
    }

    @Override // androidx.fragment.app.Fragment, defpackage.sm
    public void D0(View view, Bundle bundle) {
        this.mBtnOK.setOnClickListener(this);
        this.mBtnClose.setOnClickListener(this);
        this.mBtnClose.setColorFilter(Color.parseColor("#e2e2e2"));
    }

    public void onClick(View view) {
        a aVar;
        u1();
        if (view == this.mBtnOK && (aVar = this.i0) != null) {
            aVar.a();
        }
    }

    @Override // androidx.fragment.app.b
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        a aVar = this.i0;
        if (aVar != null) {
            aVar.onDismiss();
        }
    }

    @Override // defpackage.sm
    public String v1() {
        return null;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sm
    public int w1() {
        return R.layout.ag;
    }

    public void y1(a aVar) {
        this.i0 = aVar;
    }
}
