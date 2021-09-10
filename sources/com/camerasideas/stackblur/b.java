package com.camerasideas.stackblur;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

public class b implements a {
    private final Context a;
    private final RenderScript b;

    public b(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        RenderScript create = RenderScript.create(applicationContext);
        this.b = create;
        create.setMessageHandler(new RenderScript.RSMessageHandler());
    }

    @Override // com.camerasideas.stackblur.a
    public Bitmap a(Bitmap bitmap, float f) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Allocation createFromBitmap = Allocation.createFromBitmap(this.b, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 2);
        Allocation createFromBitmap2 = Allocation.createFromBitmap(this.b, createBitmap);
        ScriptIntrinsicBlur create = ScriptIntrinsicBlur.create(this.b, createFromBitmap.getElement());
        create.setRadius(f);
        create.setInput(createFromBitmap);
        create.forEach(createFromBitmap2);
        createFromBitmap2.copyTo(createBitmap);
        this.b.destroy();
        bitmap.recycle();
        return createBitmap;
    }
}
