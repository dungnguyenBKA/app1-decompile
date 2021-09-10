.class Ljp/co/cyberagent/android/gpuimage/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Z

.field final synthetic d:Ljp/co/cyberagent/android/gpuimage/e;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/e;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/g;->d:Ljp/co/cyberagent/android/gpuimage/e;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/g;->b:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Ljp/co/cyberagent/android/gpuimage/g;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/g;->b:Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4
    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 7
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/g;->b:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 8
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/g;->d:Ljp/co/cyberagent/android/gpuimage/e;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/g;->d:Ljp/co/cyberagent/android/gpuimage/e;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/g;->d:Ljp/co/cyberagent/android/gpuimage/e;

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljp/co/cyberagent/android/gpuimage/e;->e(Ljp/co/cyberagent/android/gpuimage/e;I)I

    .line 13
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/g;->d:Ljp/co/cyberagent/android/gpuimage/e;

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljp/co/cyberagent/android/gpuimage/e;->f(Ljp/co/cyberagent/android/gpuimage/e;I)I

    .line 14
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/g;->d:Ljp/co/cyberagent/android/gpuimage/e;

    if-eqz v1, :cond_1

    move-object v4, v1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/g;->b:Landroid/graphics/Bitmap;

    .line 16
    :goto_1
    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/e;->b(Ljp/co/cyberagent/android/gpuimage/e;)I

    move-result v5

    iget-boolean v6, p0, Ljp/co/cyberagent/android/gpuimage/g;->c:Z

    new-array v7, v2, [I

    const/16 v8, 0xde1

    const/4 v9, -0x1

    if-ne v5, v9, :cond_2

    .line 17
    invoke-static {v2, v7, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 18
    aget v2, v7, v3

    invoke-static {v8, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2800

    const v5, 0x46180400    # 9729.0f

    .line 19
    invoke-static {v8, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2801

    .line 20
    invoke-static {v8, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v5, 0x47012f00    # 33071.0f

    .line 21
    invoke-static {v8, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    .line 22
    invoke-static {v8, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 23
    invoke-static {v8, v3, v4, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_2

    .line 24
    :cond_2
    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 25
    invoke-static {v8, v3, v3, v3, v4}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    aput v5, v7, v3

    :goto_2
    if-eqz v6, :cond_3

    .line 26
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 27
    :cond_3
    aget v2, v7, v3

    .line 28
    invoke-static {v0, v2}, Ljp/co/cyberagent/android/gpuimage/e;->c(Ljp/co/cyberagent/android/gpuimage/e;I)I

    if-eqz v1, :cond_4

    .line 29
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/g;->d:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljp/co/cyberagent/android/gpuimage/e;->e(Ljp/co/cyberagent/android/gpuimage/e;I)I

    .line 30
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/g;->d:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljp/co/cyberagent/android/gpuimage/e;->f(Ljp/co/cyberagent/android/gpuimage/e;I)I

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    :cond_4
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/g;->d:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/e;->g(Ljp/co/cyberagent/android/gpuimage/e;)V

    return-void
.end method
