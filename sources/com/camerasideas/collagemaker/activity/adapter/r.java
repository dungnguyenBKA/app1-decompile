package com.camerasideas.collagemaker.activity.adapter;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;

public class r extends RecyclerView.n {
    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void f(Rect rect, View view, RecyclerView recyclerView, RecyclerView.y yVar) {
        ((RecyclerView.LayoutParams) view.getLayoutParams()).a();
        rect.set(0, 0, 0, 0);
        if (((RecyclerView.LayoutParams) view.getLayoutParams()).a() == 0) {
            rect.left = c2.b(CollageMakerApplication.b(), 4.0f);
        }
        rect.top = c2.b(CollageMakerApplication.b(), 15.0f);
    }
}
