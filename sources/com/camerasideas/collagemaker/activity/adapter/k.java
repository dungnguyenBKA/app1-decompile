package com.camerasideas.collagemaker.activity.adapter;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;

public class k extends RecyclerView.n {
    private final int a;
    private int b;
    private int c;
    private boolean d = false;
    private boolean e = false;

    public k(int i) {
        boolean z = false;
        this.a = i;
        this.b = i;
        this.c = i;
        this.e = CollageMakerApplication.b().getResources().getConfiguration().getLayoutDirection() == 1 ? true : z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void f(Rect rect, View view, RecyclerView recyclerView, RecyclerView.y yVar) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int b2 = recyclerView.getAdapter().b();
        if (!this.d) {
            if (childAdapterPosition == 0) {
                if (this.e) {
                    rect.right = this.a;
                } else {
                    rect.left = this.a;
                }
            } else if (this.e) {
                rect.right = this.c;
            } else {
                rect.left = this.c;
            }
            if (childAdapterPosition != b2 - 1) {
                return;
            }
            if (this.e) {
                rect.left = this.b;
            } else {
                rect.right = this.b;
            }
        } else if (childAdapterPosition == 0) {
            if (this.e) {
                rect.right = this.a;
            } else {
                rect.left = this.a;
            }
        } else if (childAdapterPosition != b2 - 1) {
        } else {
            if (this.e) {
                rect.left = this.a;
            } else {
                rect.right = this.a;
            }
        }
    }

    public k(int i, boolean z) {
        boolean z2 = false;
        this.a = i;
        this.d = z;
        this.e = CollageMakerApplication.b().getResources().getConfiguration().getLayoutDirection() == 1 ? true : z2;
    }
}
