package com.camerasideas.collagemaker.photoproc.graphicsitems;

import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.camerasideas.collagemaker.activity.fragment.imagefragment.ImageCutoutBgFragment;
import com.camerasideas.collagemaker.photoproc.editorview.CutoutEditorView;
import inshot.photoeditor.turbojpeg.TurboJpegEngine;
import java.io.File;
import java.io.OutputStream;
import java.security.InvalidParameterException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

public class g {
    private static g i;
    private Context a;
    private String b;
    private c c;
    private ExecutorService d;
    private Paint e = new Paint(3);
    private Paint f = new Paint(3);
    private CutoutEditorView g;
    private boolean h;

    public interface a {
    }

    public interface b {
    }

    /* access modifiers changed from: private */
    public class c extends a<Void, Void, Integer> {
        private b g;

        c(b bVar) {
            this.g = bVar;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        /* access modifiers changed from: protected */
        @Override // com.camerasideas.collagemaker.photoproc.graphicsitems.a
        public void f(Integer num) {
            b bVar;
            Integer num2 = num;
            if (!e() && (bVar = this.g) != null) {
                ((ImageCutoutBgFragment) bVar).j2(num2.intValue(), g.this.b, g.this.h);
            }
            this.g = null;
            g unused = g.i = null;
        }
    }

    private g(Context context) {
        this.a = context.getApplicationContext();
        this.d = a.c(1);
        this.f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
        this.e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
    }

    static int b(g gVar, String str) {
        Objects.requireNonNull(gVar);
        try {
            if (!Environment.getExternalStorageState().equals("mounted")) {
                em.h("CutoutSaveManager", "保存图片时发现SD卡未挂载");
                return 256;
            }
            dq.a(gVar.a);
            if (!(androidx.core.app.b.C(dq.e) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED >= 10)) {
                em.h("CutoutSaveManager", "保存图片时发现没有充分的磁盘空间");
                return 257;
            }
            int i2 = 5;
            while (true) {
                int[] iArr = ar.a;
                if (i2 < iArr.length) {
                    try {
                        if (gVar.f(iArr[i2], str) != 0) {
                            i2++;
                        } else {
                            em.h("CutoutSaveManager", "成功：保存图片");
                            return 0;
                        }
                    } catch (OutOfMemoryError unused) {
                        androidx.core.app.b.I0("CutoutSaveManager");
                    } catch (Exception e2) {
                        rq.m(e2);
                    } catch (Throwable th) {
                        rq.m(th);
                    }
                } else if (i2 == iArr.length) {
                    em.h("CutoutSaveManager", "失败：保存图片时降级到最小也发生OOM");
                    return 261;
                }
            }
            em.h("CutoutSaveManager", "失败：保存图片时发生其他异常");
            return 260;
        } catch (Exception e3) {
            e3.printStackTrace();
            rq.m(e3);
        }
    }

    public static g e(Context context) {
        if (i == null) {
            i = new g(context);
        }
        return i;
    }

    private int f(int i2, String str) {
        int i3;
        int i4;
        em.h("CutoutSaveManager", "SaveImageWithSize=" + i2);
        em.h("CutoutSaveManager", "保存图片-期望大小：" + i2);
        CutoutEditorView cutoutEditorView = this.g;
        Point G = cutoutEditorView != null ? cutoutEditorView.G(i2) : null;
        if (G != null) {
            StringBuilder q = ic.q("保存图片-结果大小：[宽，高]=[");
            q.append(G.x);
            q.append(", ");
            q.append(G.y);
            q.append("]");
            em.h("CutoutSaveManager", q.toString());
            c cVar = this.c;
            boolean z = true;
            if (cVar != null && cVar.e()) {
                return 0;
            }
            Bitmap createBitmap = Bitmap.createBitmap(G.x, G.y, Bitmap.Config.ARGB_8888);
            if (createBitmap != null) {
                try {
                    synchronized (g.class) {
                        c cVar2 = this.c;
                        if (cVar2 == null || !cVar2.e()) {
                            z = false;
                        }
                        if (z) {
                            i3 = 0;
                        } else {
                            CutoutEditorView cutoutEditorView2 = this.g;
                            if (cutoutEditorView2 == null) {
                                i4 = 263;
                            } else {
                                i4 = cutoutEditorView2.Y(createBitmap);
                            }
                            i3 = i4;
                        }
                    }
                    if (i3 != 0) {
                        try {
                            androidx.core.app.b.I0("CutoutSaveManager");
                            return i3;
                        } catch (OutOfMemoryError e2) {
                            throw e2;
                        }
                    } else {
                        try {
                            if (!(!TextUtils.isEmpty(str) ? TurboJpegEngine.b(this.a, createBitmap, str, rq.l(), this.h) : false)) {
                                return 260;
                            }
                            createBitmap.recycle();
                            return 0;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            rq.m(e3);
                            return 260;
                        }
                    }
                } catch (OutOfMemoryError e4) {
                    em.h("CutoutSaveManager", "doSave OutOfMemoryError");
                    throw e4;
                }
            } else {
                throw new OutOfMemoryError("createbitmap == null");
            }
        } else {
            throw new InvalidParameterException("ImageSize is null");
        }
    }

    public void g(a aVar, b bVar, boolean z) {
        this.h = z;
        String str = ".png";
        if (rq.l()) {
            Context context = this.a;
            ContentValues contentValues = new ContentValues();
            if (!z) {
                str = ".jpg";
            }
            contentValues.put("_display_name", bm.b("BackgroundEraser_", str));
            contentValues.put("mime_type", z ? "image/png" : "image/jpeg");
            contentValues.put("relative_path", "Pictures/Background Eraser");
            Uri insert = context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            if (insert != null) {
                try {
                    OutputStream openOutputStream = context.getContentResolver().openOutputStream(insert);
                    if (openOutputStream != null) {
                        openOutputStream.flush();
                        openOutputStream.close();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            this.b = insert.toString();
        } else {
            String str2 = com.camerasideas.collagemaker.appdata.b.b;
            File file = new File(str2);
            if (file.exists() && !file.isDirectory()) {
                file.delete();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            String j = ic.j(str2, "/", "BackgroundEraser_");
            if (!z) {
                str = ".jpg";
            }
            this.b = bm.b(j, str);
        }
        StringBuilder q = ic.q("mSavedImagePath:");
        q.append(this.b);
        em.h("CutoutSaveManager", q.toString());
        c cVar = new c(bVar);
        this.c = cVar;
        cVar.d(this.d, new Void[0]);
    }

    public void h(CutoutEditorView cutoutEditorView) {
        this.g = cutoutEditorView;
    }
}
