.class public final synthetic Lcom/camerasideas/collagemaker/activity/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/m;->b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/m;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/m;->b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/m;->c:Landroid/graphics/Bitmap;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    invoke-static {v0}, Lcom/example/portraitmatting/PortraitMatting;->b(Landroid/content/Context;)V

    .line 5
    invoke-static {v0}, Lcom/example/portraitmatting/PortraitMatting;->a(Landroid/content/Context;)J

    move-result-wide v3

    .line 6
    invoke-static {v3, v4, v1, v2}, Lcom/example/portraitmatting/PortraitMatting;->e(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 7
    invoke-static {v3, v4}, Lcom/example/portraitmatting/PortraitMatting;->d(J)V

    .line 8
    invoke-static {v2}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    .line 10
    invoke-static {v2}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    invoke-static {v2, v4}, Lwq;->t(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    new-instance v3, Ljp/co/cyberagent/android/gpuimage/b;

    invoke-direct {v3, v0}, Ljp/co/cyberagent/android/gpuimage/b;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v4, Lof0;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lof0;-><init>(I)V

    .line 14
    invoke-virtual {v3, v4}, Ljp/co/cyberagent/android/gpuimage/b;->c(Ljp/co/cyberagent/android/gpuimage/c;)V

    .line 15
    invoke-virtual {v3, v2}, Ljp/co/cyberagent/android/gpuimage/b;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 16
    :cond_1
    new-instance v2, Lcom/camerasideas/collagemaker/activity/x;

    invoke-direct {v2, v0, v3, v1}, Lcom/camerasideas/collagemaker/activity/x;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 17
    :cond_2
    new-instance v2, Lcom/camerasideas/collagemaker/activity/t;

    invoke-direct {v2, v0, v1}, Lcom/camerasideas/collagemaker/activity/t;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 18
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 19
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->getTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "process failed:"

    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v2, Lcom/camerasideas/collagemaker/activity/u;

    invoke-direct {v2, v0, v1}, Lcom/camerasideas/collagemaker/activity/u;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
