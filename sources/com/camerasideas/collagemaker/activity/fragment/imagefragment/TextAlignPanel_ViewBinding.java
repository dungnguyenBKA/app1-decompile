package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.view.View;
import android.widget.ImageView;
import butterknife.Unbinder;
import com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView;
import photoeditor.cutout.backgrounderaser.R;

public class TextAlignPanel_ViewBinding implements Unbinder {
    private TextAlignPanel b;
    private View c;
    private View d;
    private View e;
    private View f;
    private View g;
    private View h;

    class a extends p6 {
        final /* synthetic */ TextAlignPanel c;

        a(TextAlignPanel_ViewBinding textAlignPanel_ViewBinding, TextAlignPanel textAlignPanel) {
            this.c = textAlignPanel;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ TextAlignPanel c;

        b(TextAlignPanel_ViewBinding textAlignPanel_ViewBinding, TextAlignPanel textAlignPanel) {
            this.c = textAlignPanel;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class c extends p6 {
        final /* synthetic */ TextAlignPanel c;

        c(TextAlignPanel_ViewBinding textAlignPanel_ViewBinding, TextAlignPanel textAlignPanel) {
            this.c = textAlignPanel;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class d extends p6 {
        final /* synthetic */ TextAlignPanel c;

        d(TextAlignPanel_ViewBinding textAlignPanel_ViewBinding, TextAlignPanel textAlignPanel) {
            this.c = textAlignPanel;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class e extends p6 {
        final /* synthetic */ TextAlignPanel c;

        e(TextAlignPanel_ViewBinding textAlignPanel_ViewBinding, TextAlignPanel textAlignPanel) {
            this.c = textAlignPanel;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class f extends p6 {
        final /* synthetic */ TextAlignPanel c;

        f(TextAlignPanel_ViewBinding textAlignPanel_ViewBinding, TextAlignPanel textAlignPanel) {
            this.c = textAlignPanel;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public TextAlignPanel_ViewBinding(TextAlignPanel textAlignPanel, View view) {
        this.b = textAlignPanel;
        View b2 = q6.b(view, R.id.d7, "field 'mBtnAlignLeft' and method 'onClick'");
        textAlignPanel.mBtnAlignLeft = (ImageView) q6.a(b2, R.id.d7, "field 'mBtnAlignLeft'", ImageView.class);
        this.c = b2;
        b2.setOnClickListener(new a(this, textAlignPanel));
        View b3 = q6.b(view, R.id.d8, "field 'mBtnAlignMiddle' and method 'onClick'");
        textAlignPanel.mBtnAlignMiddle = (ImageView) q6.a(b3, R.id.d8, "field 'mBtnAlignMiddle'", ImageView.class);
        this.d = b3;
        b3.setOnClickListener(new b(this, textAlignPanel));
        View b4 = q6.b(view, R.id.d9, "field 'mBtnAlignRight' and method 'onClick'");
        textAlignPanel.mBtnAlignRight = (ImageView) q6.a(b4, R.id.d9, "field 'mBtnAlignRight'", ImageView.class);
        this.e = b4;
        b4.setOnClickListener(new c(this, textAlignPanel));
        View b5 = q6.b(view, R.id.em, "field 'mBtnTextBold' and method 'onClick'");
        textAlignPanel.mBtnTextBold = (ImageView) q6.a(b5, R.id.em, "field 'mBtnTextBold'", ImageView.class);
        this.f = b5;
        b5.setOnClickListener(new d(this, textAlignPanel));
        View b6 = q6.b(view, R.id.ep, "field 'mBtnTextItalic' and method 'onClick'");
        textAlignPanel.mBtnTextItalic = (ImageView) q6.a(b6, R.id.ep, "field 'mBtnTextItalic'", ImageView.class);
        this.g = b6;
        b6.setOnClickListener(new e(this, textAlignPanel));
        View b7 = q6.b(view, R.id.es, "field 'mBtnTextUnderline' and method 'onClick'");
        textAlignPanel.mBtnTextUnderline = (ImageView) q6.a(b7, R.id.es, "field 'mBtnTextUnderline'", ImageView.class);
        this.h = b7;
        b7.setOnClickListener(new f(this, textAlignPanel));
        textAlignPanel.mSeekBarLetterSpacing = (SeekBarWithTextView) q6.a(q6.b(view, R.id.pb, "field 'mSeekBarLetterSpacing'"), R.id.pb, "field 'mSeekBarLetterSpacing'", SeekBarWithTextView.class);
        textAlignPanel.mSeekBarLineSpacing = (SeekBarWithTextView) q6.a(q6.b(view, R.id.pe, "field 'mSeekBarLineSpacing'"), R.id.pe, "field 'mSeekBarLineSpacing'", SeekBarWithTextView.class);
        textAlignPanel.mImageLetterSpacing = (ImageView) q6.a(q6.b(view, R.id.in, "field 'mImageLetterSpacing'"), R.id.in, "field 'mImageLetterSpacing'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        TextAlignPanel textAlignPanel = this.b;
        if (textAlignPanel != null) {
            this.b = null;
            textAlignPanel.mBtnAlignLeft = null;
            textAlignPanel.mBtnAlignMiddle = null;
            textAlignPanel.mBtnAlignRight = null;
            textAlignPanel.mBtnTextBold = null;
            textAlignPanel.mBtnTextItalic = null;
            textAlignPanel.mBtnTextUnderline = null;
            textAlignPanel.mSeekBarLetterSpacing = null;
            textAlignPanel.mSeekBarLineSpacing = null;
            textAlignPanel.mImageLetterSpacing = null;
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
            this.h.setOnClickListener(null);
            this.h = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
