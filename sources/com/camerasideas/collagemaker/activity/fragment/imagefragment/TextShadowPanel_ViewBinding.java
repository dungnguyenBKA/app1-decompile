package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView;
import photoeditor.cutout.backgrounderaser.R;

public class TextShadowPanel_ViewBinding implements Unbinder {
    private TextShadowPanel b;

    public TextShadowPanel_ViewBinding(TextShadowPanel textShadowPanel, View view) {
        this.b = textShadowPanel;
        textShadowPanel.mRecyclerView = (RecyclerView) q6.a(q6.b(view, R.id.rx, "field 'mRecyclerView'"), R.id.rx, "field 'mRecyclerView'", RecyclerView.class);
        textShadowPanel.mSeekBarShadowAlpha = (SeekBarWithTextView) q6.a(q6.b(view, R.id.pc, "field 'mSeekBarShadowAlpha'"), R.id.pc, "field 'mSeekBarShadowAlpha'", SeekBarWithTextView.class);
        textShadowPanel.mSeekBarShadowDegree = (SeekBarWithTextView) q6.a(q6.b(view, R.id.pf, "field 'mSeekBarShadowDegree'"), R.id.pf, "field 'mSeekBarShadowDegree'", SeekBarWithTextView.class);
        textShadowPanel.mSeekBarShadowX = (SeekBarWithTextView) q6.a(q6.b(view, R.id.pg, "field 'mSeekBarShadowX'"), R.id.pg, "field 'mSeekBarShadowX'", SeekBarWithTextView.class);
        textShadowPanel.mSeekBarShadowY = (SeekBarWithTextView) q6.a(q6.b(view, R.id.ph, "field 'mSeekBarShadowY'"), R.id.ph, "field 'mSeekBarShadowY'", SeekBarWithTextView.class);
        textShadowPanel.mIconTransparent = (ImageView) q6.a(q6.b(view, R.id.iu, "field 'mIconTransparent'"), R.id.iu, "field 'mIconTransparent'", ImageView.class);
        textShadowPanel.mIconShadowDegree = (ImageView) q6.a(q6.b(view, R.id.ir, "field 'mIconShadowDegree'"), R.id.ir, "field 'mIconShadowDegree'", ImageView.class);
        textShadowPanel.mIconShadowX = (ImageView) q6.a(q6.b(view, R.id.is, "field 'mIconShadowX'"), R.id.is, "field 'mIconShadowX'", ImageView.class);
        textShadowPanel.mIconShadowY = (ImageView) q6.a(q6.b(view, R.id.it, "field 'mIconShadowY'"), R.id.it, "field 'mIconShadowY'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        TextShadowPanel textShadowPanel = this.b;
        if (textShadowPanel != null) {
            this.b = null;
            textShadowPanel.mRecyclerView = null;
            textShadowPanel.mSeekBarShadowAlpha = null;
            textShadowPanel.mSeekBarShadowDegree = null;
            textShadowPanel.mSeekBarShadowX = null;
            textShadowPanel.mSeekBarShadowY = null;
            textShadowPanel.mIconTransparent = null;
            textShadowPanel.mIconShadowDegree = null;
            textShadowPanel.mIconShadowX = null;
            textShadowPanel.mIconShadowY = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
