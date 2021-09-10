.class public Lwq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:F = 0.5f


# direct methods
.method public static a(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-lez p0, :cond_4

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    if-gt p3, p1, :cond_1

    if-le p2, p0, :cond_2

    .line 1
    :cond_1
    div-int/lit8 p3, p3, 0x2

    .line 2
    div-int/lit8 p2, p2, 0x2

    .line 3
    :goto_0
    div-int v1, p3, v0

    if-gt v1, p1, :cond_3

    div-int v1, p2, v0

    if-le v1, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method

.method public static b(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-lez p0, :cond_4

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    if-gt p3, p1, :cond_1

    if-le p2, p0, :cond_2

    .line 1
    :cond_1
    :goto_0
    div-int v1, p3, v0

    if-gt v1, p1, :cond_3

    div-int v1, p2, v0

    if-le v1, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method

.method public static c(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_2

    .line 3
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 5
    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    if-eqz v2, :cond_2

    if-eqz v0, :cond_3

    .line 7
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 8
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 9
    :try_start_2
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-object v2
.end method

.method public static e(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    if-eqz p0, :cond_2

    .line 1
    rem-int/lit8 v0, p1, 0x5a

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    rem-int/lit16 v0, p1, 0xb4

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 7
    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p1, p1

    .line 9
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p1, v0

    div-float/2addr p1, v4

    int-to-float v0, v1

    div-float/2addr v0, v4

    .line 10
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11
    :try_start_0
    invoke-static {p0, v2}, Lwq;->g(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createBitmap with dress error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageUtils"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 4
    aget v1, p1, v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x3

    aget p1, p1, v2

    float-to-double v5, p1

    .line 5
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    add-float/2addr v1, p1

    float-to-double v1, v1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    .line 9
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    div-float/2addr p1, p2

    .line 11
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 p1, 0x1

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 12
    :try_start_0
    invoke-static {p0, v0}, Lwq;->g(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 13
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    mul-int/lit8 p1, p1, 0x2

    int-to-float p3, p1

    div-float/2addr p2, p3

    .line 14
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    if-eq p1, p0, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p1

    :catch_2
    move-exception p3

    .line 17
    invoke-virtual {p3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    mul-int/lit8 p1, p1, 0x2

    int-to-float p3, p1

    div-float/2addr p2, p3

    .line 18
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0
.end method

.method public static g(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v0, 0x0

    add-int/lit8 v4, v1, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-nez v4, :cond_0

    .line 6
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    const/4 v6, 0x0

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    const/4 v1, 0x3

    if-ge v5, v1, :cond_6

    .line 9
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 10
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 11
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 12
    invoke-static {v6, v7, v4}, Lwq;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 13
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    iget v5, v0, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    invoke-virtual {v4, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 17
    invoke-virtual {v4, p0, v2, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19
    :cond_3
    :goto_1
    invoke-static {v0, v1, v4}, Lwq;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    .line 20
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Lwq;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_4
    if-nez p1, :cond_5

    return-object p0

    .line 21
    :cond_5
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    invoke-virtual {v0, p0, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object v6, p1

    :cond_6
    :goto_2
    if-eqz v6, :cond_7

    if-eq v6, p0, :cond_7

    return-object v6

    :cond_7
    return-object p0
.end method

.method public static h(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "ImageUtils"

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 3
    rem-int/lit16 p3, p3, 0xb4

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :cond_0
    int-to-float p3, v1

    mul-float p3, p3, p1

    .line 6
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    int-to-float v3, v2

    mul-float v3, v3, p1

    .line 7
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    float-to-int p3, p3

    .line 8
    div-int/lit8 p3, p3, 0x2

    float-to-int p1, p1

    div-int/lit8 p1, p1, 0x2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, v3}, Lwq;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 p3, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p4, :cond_2

    cmpl-float v5, p2, v3

    if-nez v5, :cond_2

    :try_start_0
    const-string p1, "copy bitmap use ARGB_8888"

    .line 9
    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string p1, "copy bitmap occur OOM: use ARGB_565"

    .line 12
    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string p1, "copy bitmap use ARGB_565 also occur OOM"

    .line 15
    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 17
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 18
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v6, v3, v3, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 20
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 21
    invoke-virtual {v5, p0, v3, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 22
    invoke-static {p1, p2}, Lwq;->t(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p4, :cond_3

    if-eq p0, p1, :cond_3

    .line 24
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-object p1
.end method

.method public static i(Landroid/graphics/Bitmap;FIZ)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {p0}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget v0, Lwq;->a:F

    invoke-static {p0, v0, p1, p2, p3}, Lwq;->h(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    sget v0, Lwq;->a:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sput v0, Lwq;->a:F

    .line 4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 5
    :try_start_1
    sget v0, Lwq;->a:F

    invoke-static {p0, v0, p1, p2, p3}, Lwq;->h(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    return-object v1
.end method

.method public static j(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    if-lez p2, :cond_3

    if-gtz p3, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v3, p2

    mul-int/lit8 p1, p1, 0x14

    int-to-float p1, p1

    div-float p1, v3, p1

    int-to-float v4, p3

    mul-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    div-float v2, v4, v2

    cmpl-float v5, p1, v2

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    .line 6
    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 8
    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 9
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 12
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 13
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 15
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p0, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 16
    new-instance v5, Landroid/graphics/Rect;

    div-float/2addr v3, p1

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    div-float/2addr v4, p1

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int p1, v6

    const/4 v4, 0x0

    invoke-direct {v5, v4, v4, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 18
    invoke-virtual {v0, v5, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p2

    goto :goto_1

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 21
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static k(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 5
    rem-int v2, p2, p1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    div-int v2, p2, p1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    div-int v2, p2, p1

    .line 6
    :goto_0
    rem-int v4, p3, v1

    if-eqz v4, :cond_2

    div-int v4, p3, v1

    add-int/2addr v4, v3

    goto :goto_1

    :cond_2
    div-int v4, p3, v1

    .line 7
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 8
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getDensity()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 10
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 11
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 13
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v2, :cond_3

    mul-int v8, v7, p1

    int-to-float v8, v8

    mul-int v9, v6, v1

    int-to-float v9, v9

    .line 14
    invoke-virtual {p3, p0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 17
    invoke-static {}, Ljava/lang/System;->gc()V

    return-object v0
.end method

.method public static l([BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :try_start_0
    array-length v3, p0

    invoke-static {p0, v2, v3, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return-object v0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v2

    .line 3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 5
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 p2, p2, -0x1

    :cond_1
    if-nez v1, :cond_2

    if-gez p2, :cond_0

    :cond_2
    return-object v1
.end method

.method public static m(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0

    :catchall_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "ImageUtils"

    const-string v2, "get image exit degree occur exception"

    .line 4
    invoke-static {v1, v2, p0}, Lem;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static o(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static p(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "ImageUtils"

    const/16 v1, 0x300

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-static {p0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :catch_5
    move-exception p1

    move-object p0, v2

    .line 7
    :goto_1
    :try_start_3
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/e;->d:Ljava/lang/ThreadLocal;

    const/16 v1, 0x303

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    invoke-static {p1}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_0

    .line 10
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_2

    :catch_6
    move-exception p0

    .line 11
    invoke-static {p0}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v2

    :catch_7
    move-exception p1

    move-object p0, v2

    .line 13
    :goto_3
    :try_start_5
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/e;->d:Ljava/lang/ThreadLocal;

    const/16 v1, 0x302

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 14
    invoke-static {p1}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_1

    .line 16
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_4

    :catch_8
    move-exception p0

    .line 17
    invoke-static {p0}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_4
    return-object v2

    :catch_9
    move-exception p1

    move-object p0, v2

    .line 19
    :goto_5
    :try_start_7
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/e;->d:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 20
    invoke-static {p1}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p0, :cond_2

    .line 22
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_6

    :catch_a
    move-exception p0

    .line 23
    invoke-static {p0}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_6
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, p0

    goto :goto_9

    :catch_b
    move-exception p1

    move-object p0, v2

    .line 25
    :goto_7
    :try_start_9
    invoke-static {p1}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/e;->d:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz p0, :cond_3

    .line 28
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    goto :goto_8

    :catch_c
    move-exception p0

    .line 29
    invoke-static {p0}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_8
    return-object v2

    :goto_9
    if-eqz v2, :cond_4

    .line 31
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    goto :goto_a

    :catch_d
    move-exception p0

    .line 32
    invoke-static {p0}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    :cond_4
    :goto_a
    throw p1
.end method

.method public static q(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lwq;->p(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return-object v0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    return-object v0

    :catch_2
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0

    :catch_3
    move-exception v2

    .line 5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 6
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 7
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 p3, p3, -0x1

    :cond_1
    if-nez v1, :cond_2

    if-gez p3, :cond_0

    :cond_2
    return-object v1
.end method

.method public static r(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p0, p3, v0}, Lwq;->p(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 5
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ltz v2, :cond_3

    if-gez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 7
    invoke-static {p1, p1, v2, v1}, Lwq;->a(IIII)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p1, 0x2

    .line 9
    invoke-static {p0, p3, v0, p1}, Lwq;->q(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p0, p3}, Lcm;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 11
    invoke-static {p0, p3}, Lrq;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 12
    :cond_2
    invoke-static {p2}, Lwq;->n(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_4

    .line 13
    invoke-static {p1, p0}, Lwq;->e(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return-object p1
.end method

.method public static s(Landroid/content/Context;IILandroid/net/Uri;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    iput-object p4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4
    invoke-static {p0, p3, v1}, Lwq;->p(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5
    iget p4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ltz v3, :cond_7

    if-gez p4, :cond_0

    goto :goto_2

    :cond_0
    const/16 v4, 0x1000

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    if-lt p4, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 7
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz v2, :cond_3

    .line 8
    invoke-static {p1, p1, v3, p4}, Lwq;->b(IIII)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {p1, p1, v3, p4}, Lwq;->a(IIII)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 10
    :goto_1
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p1, 0x2

    .line 11
    invoke-static {p0, p3, v1, p1}, Lwq;->q(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-static {p0, p3}, Lcm;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    .line 13
    invoke-static {p0, p3}, Lrq;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 14
    :cond_5
    invoke-static {p2}, Lwq;->n(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_6

    .line 15
    invoke-static {p1, p0}, Lwq;->e(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_2

    :cond_6
    move-object v0, p1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_7
    :goto_2
    return-object v0
.end method

.method public static t(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    new-instance v0, Lcom/camerasideas/stackblur/c;

    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/camerasideas/stackblur/c;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/camerasideas/stackblur/c;->a(F)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
