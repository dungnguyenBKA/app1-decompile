package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.view.View;
import android.widget.ImageView;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class AllowStorageAccessFragment_ViewBinding implements Unbinder {
    private AllowStorageAccessFragment b;

    public AllowStorageAccessFragment_ViewBinding(AllowStorageAccessFragment allowStorageAccessFragment, View view) {
        this.b = allowStorageAccessFragment;
        allowStorageAccessFragment.mBtnOK = q6.b(view, R.id.d_, "field 'mBtnOK'");
        allowStorageAccessFragment.mBtnClose = (ImageView) q6.a(q6.b(view, R.id.dl, "field 'mBtnClose'"), R.id.dl, "field 'mBtnClose'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        AllowStorageAccessFragment allowStorageAccessFragment = this.b;
        if (allowStorageAccessFragment != null) {
            this.b = null;
            allowStorageAccessFragment.mBtnOK = null;
            allowStorageAccessFragment.mBtnClose = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
