.class public Linshot/photoeditor/turbojpeg/TurboJpegEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;ILjava/lang/Object;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, p0, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 6
    invoke-static {v0, p1, p2, p3}, Linshot/photoeditor/turbojpeg/TurboJpegEngine;->c(Landroid/graphics/Bitmap;ILjava/lang/Object;Z)Z

    move-result p0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0, p1, p2, p3}, Linshot/photoeditor/turbojpeg/TurboJpegEngine;->c(Landroid/graphics/Bitmap;ILjava/lang/Object;Z)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)Z
    .locals 4

    const-string v0, "TurboJpegEngine"

    const-string v1, "saveBitMapStart"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eqz p3, :cond_3

    if-eqz p4, :cond_0

    .line 2
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p1, p3, p2, v2}, Linshot/photoeditor/turbojpeg/TurboJpegEngine;->d(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Landroid/net/Uri;I)Z

    move-result p0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p4, "r"

    invoke-virtual {p3, p2, p4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 5
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p4

    .line 6
    invoke-static {}, Lrd0;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1, v2, p4, v0}, Linshot/photoeditor/turbojpeg/TurboJpegEngine;->a(Landroid/graphics/Bitmap;ILjava/lang/Object;Z)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    .line 8
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, p4, p2, v2}, Linshot/photoeditor/turbojpeg/TurboJpegEngine;->d(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Landroid/net/Uri;I)Z

    move-result p0

    move v1, p0

    .line 9
    :cond_2
    :try_start_0
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    .line 11
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1, p0, p2, v2}, Linshot/photoeditor/turbojpeg/TurboJpegEngine;->e(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {}, Lrd0;->a()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 13
    invoke-static {p1, v2, p2, v0}, Linshot/photoeditor/turbojpeg/TurboJpegEngine;->a(Landroid/graphics/Bitmap;ILjava/lang/Object;Z)Z

    move-result v1

    :cond_5
    if-nez v1, :cond_6

    .line 14
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1, p0, p2, v2}, Linshot/photoeditor/turbojpeg/TurboJpegEngine;->e(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_1

    :cond_6
    :goto_0
    move p0, v1

    :goto_1
    return p0
.end method

.method private static c(Landroid/graphics/Bitmap;ILjava/lang/Object;Z)Z
    .locals 7

    .line 1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    check-cast p2, Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v1, p0

    move v4, p1

    move v6, p3

    .line 4
    invoke-static/range {v1 .. v6}, Linshot/photoeditor/turbojpeg/TurboJpegEngine;->compressBitmap(Landroid/graphics/Bitmap;III[BZ)Z

    move-result p0

    return p0

    .line 5
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    check-cast p2, Ljava/lang/Integer;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    move v4, p1

    move v6, p3

    .line 8
    invoke-static/range {v1 .. v6}, Linshot/photoeditor/turbojpeg/TurboJpegEngine;->compressBitmap2(Landroid/graphics/Bitmap;IIIIZ)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static native compressBitmap(Landroid/graphics/Bitmap;III[BZ)Z
.end method

.method private static native compressBitmap2(Landroid/graphics/Bitmap;IIIIZ)Z
.end method

.method public static d(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Landroid/net/Uri;I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    .line 2
    invoke-virtual {p1, p2, p4, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static e(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4
    :cond_1
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5
    invoke-virtual {p0, p1, p3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_3
    :goto_0
    return v0
.end method
