package com.camerasideas.collagemaker.activity.widget;

import android.widget.SeekBar;
import com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView;

/* access modifiers changed from: package-private */
public class j implements SeekBar.OnSeekBarChangeListener {
    final /* synthetic */ SeekBarWithTextView a;

    j(SeekBarWithTextView seekBarWithTextView) {
        this.a = seekBarWithTextView;
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            this.a.m();
            if (this.a.n != null) {
                SeekBarWithTextView.a aVar = this.a.n;
                SeekBarWithTextView seekBarWithTextView = this.a;
                aVar.d(seekBarWithTextView, seekBarWithTextView.h(), z);
            }
            if (this.a.k) {
                this.a.n();
            }
        }
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        if (this.a.n != null) {
            this.a.n.p(this.a);
        }
        if (this.a.k) {
            SeekBarWithTextView.e(this.a);
        }
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.a.n != null) {
            this.a.n.t(this.a);
        }
        this.a.m();
        if (this.a.k) {
            SeekBarWithTextView.d(this.a);
        }
    }
}
