package com.camerasideas.collagemaker.activity.widget.squareprogressbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import photoeditor.cutout.backgrounderaser.R;

public class SquareProgressBar extends RelativeLayout {
    private final SquareProgressView b;

    public SquareProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.e1, (ViewGroup) this, true);
        SquareProgressView squareProgressView = (SquareProgressView) findViewById(R.id.qt);
        this.b = squareProgressView;
        ImageView imageView = (ImageView) findViewById(R.id.ix);
        squareProgressView.bringToFront();
    }

    public SquareProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.e1, (ViewGroup) this, true);
        SquareProgressView squareProgressView = (SquareProgressView) findViewById(R.id.qt);
        this.b = squareProgressView;
        ImageView imageView = (ImageView) findViewById(R.id.ix);
        squareProgressView.bringToFront();
    }
}
