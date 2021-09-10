.class public Lrl;
.super Lsl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static p(Ljava/io/FileDescriptor;IILql;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-lez p1, :cond_5

    if-gtz p2, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 5
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v3, p2, :cond_2

    if-le v4, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    goto :goto_3

    .line 6
    :cond_2
    :goto_0
    div-int/lit8 v5, v3, 0x2

    .line 7
    div-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    .line 8
    :goto_1
    div-int v8, v5, v7

    if-le v8, p2, :cond_3

    div-int v8, v6, v7

    if-le v8, p1, :cond_3

    mul-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_3
    mul-int v4, v4, v3

    .line 9
    div-int/2addr v4, v7

    int-to-long v3, v4

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    :goto_2
    cmp-long v5, v3, p1

    if-lez v5, :cond_4

    mul-int/lit8 v7, v7, 0x2

    const-wide/16 v5, 0x2

    .line 10
    div-long/2addr v3, v5

    goto :goto_2

    .line 11
    :cond_4
    :goto_3
    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_5

    .line 12
    :cond_5
    :goto_4
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_5
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 14
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 15
    invoke-virtual {p3, v1}, Lql;->i(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 16
    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 17
    :cond_6
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
