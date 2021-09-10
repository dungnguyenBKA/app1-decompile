package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView;
import photoeditor.cutout.backgrounderaser.R;

public class TextColorPanel_ViewBinding implements Unbinder {
    private TextColorPanel b;

    public TextColorPanel_ViewBinding(TextColorPanel textColorPanel, View view) {
        this.b = textColorPanel;
        textColorPanel.mRecyclerView = (RecyclerView) q6.a(q6.b(view, R.id.rx, "field 'mRecyclerView'"), R.id.rx, "field 'mRecyclerView'", RecyclerView.class);
        textColorPanel.mImageView = (AppCompatImageView) q6.a(q6.b(view, R.id.iu, "field 'mImageView'"), R.id.iu, "field 'mImageView'", AppCompatImageView.class);
        textColorPanel.mSeekBar = (SeekBarWithTextView) q6.a(q6.b(view, R.id.pd, "field 'mSeekBar'"), R.id.pd, "field 'mSeekBar'", SeekBarWithTextView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        TextColorPanel textColorPanel = this.b;
        if (textColorPanel != null) {
            this.b = null;
            textColorPanel.mRecyclerView = null;
            textColorPanel.mImageView = null;
            textColorPanel.mSeekBar = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
