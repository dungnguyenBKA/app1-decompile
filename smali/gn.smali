.class public Lgn;
.super Lrl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected k(Ljava/lang/Object;IILsl$d;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object p4, p0, Lsl;->h:Landroid/content/Context;

    const/4 v0, 0x0

    if-lez p2, :cond_4

    if-gtz p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    instance-of v0, p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "android.resource://"

    .line 5
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lrq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p2, p3, p1, v0}, Lwq;->s(Landroid/content/Context;IILandroid/net/Uri;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {p1}, Lcm;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 8
    invoke-static {p4, p2, p3, p1, v0}, Lwq;->s(Landroid/content/Context;IILandroid/net/Uri;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method
