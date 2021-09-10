.class public Ltq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/BitmapFactory$Options;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 2
    iget-object v1, p0, Ltq;->a:Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Ltq;->a:Ljava/lang/ref/SoftReference;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v3, p0, Ltq;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltq;->a:Ljava/lang/ref/SoftReference;

    .line 5
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    iget-object v3, p0, Ltq;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 7
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v5

    .line 8
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v6, v5

    mul-int v6, v6, v4

    .line 9
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 10
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    .line 11
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_2

    :goto_0
    const/4 v4, 0x2

    goto :goto_1

    .line 13
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    :goto_1
    mul-int v6, v6, v4

    .line 14
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    if-gt v6, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Ltq;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0

    .line 16
    :cond_4
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 17
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    iput-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_6
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;IILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p1, p4}, Ljp/co/cyberagent/android/gpuimage/GPUImageNativeLibrary;->decrypt(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    .line 4
    invoke-static {p1, v1, p5}, Lwq;->l([BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    .line 5
    iget p4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ltz v2, :cond_3

    if-gez p4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 8
    invoke-static {p2, p2, v2, p4}, Lwq;->a(IIII)I

    move-result p2

    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 10
    invoke-direct {p0, v1}, Ltq;->a(Landroid/graphics/BitmapFactory$Options;)V

    .line 11
    invoke-static {p1, v1, p5}, Lwq;->l([BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p2, p0, Ltq;->a:Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    .line 14
    :cond_1
    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ltq;->a:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
