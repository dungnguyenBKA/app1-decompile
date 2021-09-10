.class public Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$a;,
        Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$b;,
        Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;
    }
.end annotation


# static fields
.field private static i:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

.field private h:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->e:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->f:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->a:Landroid/content/Context;

    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->c(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->d:Ljava/util/concurrent/ExecutorService;

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->b:Ljava/lang/String;

    return-object p0
.end method

.method static b(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;Ljava/lang/String;)I
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CutoutSaveManager"

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "\u4fdd\u5b58\u56fe\u7247\u65f6\u53d1\u73b0SD\u5361\u672a\u6302\u8f7d"

    .line 3
    invoke-static {v0, p0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x100

    goto :goto_3

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->a:Landroid/content/Context;

    .line 5
    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)V

    .line 6
    sget-object v2, Ldq;->e:Ljava/lang/String;

    const-wide/16 v3, 0xa

    .line 7
    invoke-static {v2}, Landroidx/core/app/b;->C(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/32 v7, 0x100000

    .line 8
    div-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    const-string p0, "\u4fdd\u5b58\u56fe\u7247\u65f6\u53d1\u73b0\u6ca1\u6709\u5145\u5206\u7684\u78c1\u76d8\u7a7a\u95f4"

    .line 9
    invoke-static {v0, p0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x101

    goto :goto_3

    :cond_2
    const/4 v2, 0x5

    .line 10
    :goto_1
    sget-object v3, Lar;->a:[I

    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-ge v2, v4, :cond_4

    .line 11
    :try_start_1
    aget v3, v3, v2

    invoke-direct {p0, v3, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->f(ILjava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :try_start_2
    const-string p0, "\u6210\u529f\uff1a\u4fdd\u5b58\u56fe\u7247"

    .line 12
    invoke-static {v0, p0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v3

    .line 13
    invoke-static {v3}, Lrq;->m(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    move-exception v3

    .line 14
    invoke-static {v3}, Lrq;->m(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 15
    :catch_1
    invoke-static {v0}, Landroidx/core/app/b;->I0(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_4
    array-length p0, v3

    if-ne v2, p0, :cond_5

    const-string p0, "\u5931\u8d25\uff1a\u4fdd\u5b58\u56fe\u7247\u65f6\u964d\u7ea7\u5230\u6700\u5c0f\u4e5f\u53d1\u751fOOM"

    .line 17
    invoke-static {v0, p0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v1, 0x105

    goto :goto_3

    :catch_2
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-static {p0}, Lrq;->m(Ljava/lang/Throwable;)V

    :cond_5
    const-string p0, "\u5931\u8d25\uff1a\u4fdd\u5b58\u56fe\u7247\u65f6\u53d1\u751f\u5176\u4ed6\u5f02\u5e38"

    .line 20
    invoke-static {v0, p0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x104

    :goto_3
    return v1
.end method

.method static synthetic c(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->h:Z

    return p0
.end method

.method static synthetic d(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;)Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;
    .locals 0

    const/4 p0, 0x0

    .line 1
    sput-object p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->i:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->i:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->i:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    .line 3
    :cond_0
    sget-object p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->i:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    return-object p0
.end method

.method private f(ILjava/lang/String;)I
    .locals 5

    const-string v0, "CutoutSaveManager"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SaveImageWithSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CutoutSaveManager"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u5b58\u56fe\u7247-\u671f\u671b\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->g:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->G(I)Landroid/graphics/Point;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_a

    const-string v0, "CutoutSaveManager"

    const-string v1, "\u4fdd\u5b58\u56fe\u7247-\u7ed3\u679c\u5927\u5c0f\uff1a[\u5bbd\uff0c\u9ad8]=["

    .line 5
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 7
    :cond_2
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 8
    :try_start_0
    const-class v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 10
    monitor-exit v0

    const/4 v0, 0x0

    goto :goto_4

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->g:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-nez v1, :cond_5

    const/16 v1, 0x107

    goto :goto_3

    .line 12
    :cond_5
    invoke-virtual {v1, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->Y(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 13
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    :goto_4
    if-eqz v0, :cond_6

    :try_start_2
    const-string p1, "CutoutSaveManager"

    .line 14
    invoke-static {p1}, Landroidx/core/app/b;->I0(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    return v0

    :cond_6
    const/16 v0, 0x104

    .line 15
    :try_start_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 16
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->a:Landroid/content/Context;

    invoke-static {}, Lrq;->l()Z

    move-result v3

    iget-boolean v4, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->h:Z

    invoke-static {v1, p1, p2, v3, v4}, Linshot/photoeditor/turbojpeg/TurboJpegEngine;->b(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :cond_7
    const/4 p2, 0x0

    :goto_5
    if-nez p2, :cond_8

    return v0

    .line 17
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return v2

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-static {p1}, Lrq;->m(Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception p1

    .line 20
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    :try_start_6
    const-string p2, "CutoutSaveManager"

    const-string v0, "doSave OutOfMemoryError"

    .line 21
    invoke-static {p2, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    throw p1
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p1

    .line 23
    throw p1

    .line 24
    :cond_9
    new-instance p1, Ljava/lang/OutOfMemoryError;

    const-string p2, "createbitmap == null"

    invoke-direct {p1, p2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_a
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "ImageSize is null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public g(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$a;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$b;Z)V
    .locals 5

    .line 1
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->h:Z

    .line 2
    invoke-static {}, Lrq;->l()Z

    move-result p1

    const-string v0, ".png"

    const-string v1, ".jpg"

    const-string v2, "BackgroundEraser_"

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->a:Landroid/content/Context;

    .line 4
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    invoke-static {v2, v0}, Lbm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_display_name"

    .line 6
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string p3, "image/png"

    goto :goto_1

    :cond_1
    const-string p3, "image/jpeg"

    :goto_1
    const-string v0, "mime_type"

    .line 7
    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "relative_path"

    const-string v0, "Pictures/Background Eraser"

    .line 8
    invoke-virtual {v3, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 12
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_2
    :goto_2
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->b:Ljava/lang/String;

    goto :goto_4

    .line 15
    :cond_3
    sget-object p1, Lcom/camerasideas/collagemaker/appdata/b;->b:Ljava/lang/String;

    .line 16
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 19
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 20
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_5
    const-string v3, "/"

    .line 21
    invoke-static {p1, v3, v2}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    invoke-static {p1, v0}, Lbm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->b:Ljava/lang/String;

    :goto_4
    const-string p1, "mSavedImagePath:"

    .line 23
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "CutoutSaveManager"

    invoke-static {p3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;

    invoke-direct {p1, p0, p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;-><init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$b;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;

    .line 25
    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->d:Ljava/util/concurrent/ExecutorService;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->d(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;

    return-void
.end method

.method public h(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->g:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    return-void
.end method
