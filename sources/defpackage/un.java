package defpackage;

import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: un  reason: default package */
public class un implements tr {
    private String a;
    private int b;
    private int c;
    private ShapeDrawable d;

    public un() {
    }

    @Override // defpackage.tr
    public int a() {
        return this.c;
    }

    public String b() {
        return this.a;
    }

    public ShapeDrawable c() {
        return this.d;
    }

    public int d() {
        return this.b;
    }

    public void e(int i) {
        this.c = i;
    }

    public void f(int i) {
        this.b = i;
    }

    public un(String str, int i) {
        this.a = str;
        this.c = i;
        float dimensionPixelSize = (float) CollageMakerApplication.b().getResources().getDimensionPixelSize(R.dimen.om);
        float[] fArr = {dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize};
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, fArr));
        this.d = shapeDrawable;
        shapeDrawable.getPaint().setColor(Color.parseColor(str));
        this.d.getPaint().setAntiAlias(true);
        this.d.getPaint().setStyle(Paint.Style.FILL);
    }
}
