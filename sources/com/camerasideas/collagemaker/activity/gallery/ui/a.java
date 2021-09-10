package com.camerasideas.collagemaker.activity.gallery.ui;

import android.view.View;
import android.widget.AdapterView;

public final /* synthetic */ class a implements AdapterView.OnItemClickListener {
    public final /* synthetic */ MediaFoldersView b;

    public /* synthetic */ a(MediaFoldersView mediaFoldersView) {
        this.b = mediaFoldersView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.b.b(adapterView, view, i, j);
    }
}
