package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class TextFontPanel_ViewBinding implements Unbinder {
    private TextFontPanel b;

    public TextFontPanel_ViewBinding(TextFontPanel textFontPanel, View view) {
        this.b = textFontPanel;
        textFontPanel.mRecyclerView = (RecyclerView) q6.a(q6.b(view, R.id.hf, "field 'mRecyclerView'"), R.id.hf, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        TextFontPanel textFontPanel = this.b;
        if (textFontPanel != null) {
            this.b = null;
            textFontPanel.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
