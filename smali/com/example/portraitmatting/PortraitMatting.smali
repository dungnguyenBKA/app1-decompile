.class public Lcom/example/portraitmatting/PortraitMatting;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .locals 3

    const-string v0, "seg.pen"

    .line 1
    invoke-static {p0, v0}, Lcom/example/portraitmatting/PortraitMatting;->c(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "matting.pen"

    .line 2
    invoke-static {p0, v1}, Lcom/example/portraitmatting/PortraitMatting;->c(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 3
    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/example/portraitmatting/PortraitMatting;->initialize(Landroid/content/Context;[B[B)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "portraitmatting"

    .line 4
    invoke-static {p0, v2}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0, v1}, Lcom/example/portraitmatting/PortraitMatting;->initialize(Landroid/content/Context;[B[B)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "portraitmatting"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2
    :catchall_0
    invoke-static {p0, v0}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 7
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 1
    invoke-static {p0, p1}, Lcom/example/portraitmatting/PortraitMatting;->release(J)V

    :cond_0
    return-void
.end method

.method public static e(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/example/portraitmatting/PortraitMatting;->run(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static native initialize(Landroid/content/Context;[B[B)J
.end method

.method private static native release(J)V
.end method

.method private static native run(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
.end method
