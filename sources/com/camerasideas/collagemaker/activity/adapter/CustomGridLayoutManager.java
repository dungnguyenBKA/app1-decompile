package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public class CustomGridLayoutManager extends GridLayoutManager {
    public CustomGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public void H0(RecyclerView.u uVar, RecyclerView.y yVar) {
        try {
            super.H0(uVar, yVar);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public boolean k1() {
        return false;
    }
}
