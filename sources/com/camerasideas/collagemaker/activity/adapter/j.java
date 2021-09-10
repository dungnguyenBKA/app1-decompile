package com.camerasideas.collagemaker.activity.adapter;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;

public class j extends RecyclerView.n {
    private final int a;
    private final int b;
    private boolean c = false;
    private boolean d = false;

    public j(int i, boolean z, int i2) {
        boolean z2 = false;
        this.a = i;
        this.c = z;
        this.b = i2;
        this.d = CollageMakerApplication.b().getResources().getConfiguration().getLayoutDirection() == 1 ? true : z2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void f(Rect rect, View view, RecyclerView recyclerView, RecyclerView.y yVar) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int b2 = recyclerView.getAdapter().b();
        if (!this.c) {
            boolean z = this.d;
            if (z) {
                rect.right = this.a;
            } else {
                rect.left = this.a;
            }
            if (childAdapterPosition != b2 - 1) {
                return;
            }
            if (z) {
                rect.left = this.a;
            } else {
                rect.right = this.a;
            }
        } else if (childAdapterPosition == 0) {
            if (this.d) {
                rect.right = this.b;
            } else {
                rect.left = this.b;
            }
        } else if (childAdapterPosition == b2 - 1) {
            if (this.d) {
                rect.left = this.b;
                rect.right = this.a;
                return;
            }
            rect.right = this.b;
            rect.left = this.a;
        } else if (this.d) {
            rect.right = this.a;
        } else {
            rect.left = this.a;
        }
    }
}
