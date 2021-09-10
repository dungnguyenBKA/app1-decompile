package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.camerasideas.collagemaker.activity.widget.FontTextView;
import photoeditor.cutout.backgrounderaser.R;

public class TextFontStylePanel_ViewBinding implements Unbinder {
    private TextFontStylePanel b;
    private View c;
    private View d;
    private View e;
    private View f;
    private View g;

    class a extends p6 {
        final /* synthetic */ TextFontStylePanel c;

        a(TextFontStylePanel_ViewBinding textFontStylePanel_ViewBinding, TextFontStylePanel textFontStylePanel) {
            this.c = textFontStylePanel;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ TextFontStylePanel c;

        b(TextFontStylePanel_ViewBinding textFontStylePanel_ViewBinding, TextFontStylePanel textFontStylePanel) {
            this.c = textFontStylePanel;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class c extends p6 {
        final /* synthetic */ TextFontStylePanel c;

        c(TextFontStylePanel_ViewBinding textFontStylePanel_ViewBinding, TextFontStylePanel textFontStylePanel) {
            this.c = textFontStylePanel;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class d extends p6 {
        final /* synthetic */ TextFontStylePanel c;

        d(TextFontStylePanel_ViewBinding textFontStylePanel_ViewBinding, TextFontStylePanel textFontStylePanel) {
            this.c = textFontStylePanel;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class e extends p6 {
        final /* synthetic */ TextFontStylePanel c;

        e(TextFontStylePanel_ViewBinding textFontStylePanel_ViewBinding, TextFontStylePanel textFontStylePanel) {
            this.c = textFontStylePanel;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public TextFontStylePanel_ViewBinding(TextFontStylePanel textFontStylePanel, View view) {
        this.b = textFontStylePanel;
        textFontStylePanel.mPresetRecyclerView = (RecyclerView) q6.a(q6.b(view, R.id.my, "field 'mPresetRecyclerView'"), R.id.my, "field 'mPresetRecyclerView'", RecyclerView.class);
        View b2 = q6.b(view, R.id.en, "field 'mBtnTextColor' and method 'onClick'");
        textFontStylePanel.mBtnTextColor = (FontTextView) q6.a(b2, R.id.en, "field 'mBtnTextColor'", FontTextView.class);
        this.c = b2;
        b2.setOnClickListener(new a(this, textFontStylePanel));
        View b3 = q6.b(view, R.id.e7, "field 'mBtnOutlineColor' and method 'onClick'");
        textFontStylePanel.mBtnOutlineColor = (FontTextView) q6.a(b3, R.id.e7, "field 'mBtnOutlineColor'", FontTextView.class);
        this.d = b3;
        b3.setOnClickListener(new b(this, textFontStylePanel));
        View b4 = q6.b(view, R.id.de, "field 'mBtnBackgroundColor' and method 'onClick'");
        textFontStylePanel.mBtnBackgroundColor = (FontTextView) q6.a(b4, R.id.de, "field 'mBtnBackgroundColor'", FontTextView.class);
        this.e = b4;
        b4.setOnClickListener(new c(this, textFontStylePanel));
        View b5 = q6.b(view, R.id.ee, "field 'mBtnShadowColor' and method 'onClick'");
        textFontStylePanel.mBtnShadowColor = (FontTextView) q6.a(b5, R.id.ee, "field 'mBtnShadowColor'", FontTextView.class);
        this.f = b5;
        b5.setOnClickListener(new d(this, textFontStylePanel));
        View b6 = q6.b(view, R.id.d6, "field 'mBtnAlign' and method 'onClick'");
        textFontStylePanel.mBtnAlign = (FontTextView) q6.a(b6, R.id.d6, "field 'mBtnAlign'", FontTextView.class);
        this.g = b6;
        b6.setOnClickListener(new e(this, textFontStylePanel));
    }

    @Override // butterknife.Unbinder
    public void a() {
        TextFontStylePanel textFontStylePanel = this.b;
        if (textFontStylePanel != null) {
            this.b = null;
            textFontStylePanel.mPresetRecyclerView = null;
            textFontStylePanel.mBtnTextColor = null;
            textFontStylePanel.mBtnOutlineColor = null;
            textFontStylePanel.mBtnBackgroundColor = null;
            textFontStylePanel.mBtnShadowColor = null;
            textFontStylePanel.mBtnAlign = null;
            this.c.setOnClickListener(null);
            this.c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            this.f.setOnClickListener(null);
            this.f = null;
            this.g.setOnClickListener(null);
            this.g = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
