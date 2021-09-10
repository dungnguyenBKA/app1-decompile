package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class ConsumePurchasesFragment_ViewBinding implements Unbinder {
    private ConsumePurchasesFragment b;

    public ConsumePurchasesFragment_ViewBinding(ConsumePurchasesFragment consumePurchasesFragment, View view) {
        this.b = consumePurchasesFragment;
        consumePurchasesFragment.mRecyclerView = (RecyclerView) q6.a(q6.b(view, R.id.nz, "field 'mRecyclerView'"), R.id.nz, "field 'mRecyclerView'", RecyclerView.class);
        consumePurchasesFragment.mBackImageView = (AppCompatImageView) q6.a(q6.b(view, R.id.ck, "field 'mBackImageView'"), R.id.ck, "field 'mBackImageView'", AppCompatImageView.class);
        consumePurchasesFragment.mRestoreTextView = (AppCompatTextView) q6.a(q6.b(view, R.id.o8, "field 'mRestoreTextView'"), R.id.o8, "field 'mRestoreTextView'", AppCompatTextView.class);
        consumePurchasesFragment.mNoProductsTextView = (AppCompatTextView) q6.a(q6.b(view, R.id.m4, "field 'mNoProductsTextView'"), R.id.m4, "field 'mNoProductsTextView'", AppCompatTextView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        ConsumePurchasesFragment consumePurchasesFragment = this.b;
        if (consumePurchasesFragment != null) {
            this.b = null;
            consumePurchasesFragment.mRecyclerView = null;
            consumePurchasesFragment.mBackImageView = null;
            consumePurchasesFragment.mRestoreTextView = null;
            consumePurchasesFragment.mNoProductsTextView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
