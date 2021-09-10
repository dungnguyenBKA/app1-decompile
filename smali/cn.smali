.class public Lcn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lrl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/core/app/b;->Z(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn;->a:I

    .line 3
    invoke-static {p1}, Lc2;->w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lrq;->l()Z

    move-result v0

    const-string v1, "/.diskCache"

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)V

    .line 8
    sget-object v2, Ldq;->e:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lbm;->g(Ljava/lang/String;)V

    .line 11
    :goto_0
    new-instance v1, Lql$a;

    invoke-direct {v1, v0}, Lql$a;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    new-instance v1, Lql$a;

    const-string v0, "diskCache"

    invoke-direct {v1, p1, v0}, Lql$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, v1, Lql$a;->g:Z

    const/high16 v0, 0x3e800000    # 0.25f

    .line 14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float v0, v0, v2

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Lql$a;->a:I

    .line 15
    new-instance v0, Lgn;

    invoke-direct {v0, p1}, Lgn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn;->b:Lrl;

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Lsl;->m(Z)V

    .line 17
    iget-object v0, p0, Lcn;->b:Lrl;

    const v2, 0x7f0500cc

    invoke-virtual {v0, v2}, Lsl;->n(I)V

    .line 18
    iget-object v0, p0, Lcn;->b:Lrl;

    invoke-virtual {v0, p1, v1}, Lsl;->e(Landroid/content/Context;Lql$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "MediaThumbnailLoader"

    const-string v1, "clear media thumbnail"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn;->b:Lrl;

    invoke-virtual {v0}, Lsl;->f()V

    .line 3
    iget-object v0, p0, Lcn;->b:Lrl;

    invoke-virtual {v0}, Lsl;->g()V

    return-void
.end method

.method public b(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->h()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget v0, p0, Lcn;->a:I

    .line 4
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/w0;->k()Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/h;->g0(Landroid/net/Uri;)Lcom/bumptech/glide/h;

    .line 6
    check-cast v1, Lcom/camerasideas/collagemaker/activity/v0;

    .line 7
    invoke-virtual {v1, v0, v0}, Lcom/camerasideas/collagemaker/activity/v0;->r0(II)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lyj;->c()Lyj;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/activity/v0;

    .line 9
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/v0;->p0()Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->e0(Landroid/widget/ImageView;)Lok;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcn;->b:Lrl;

    iget v1, p0, Lcn;->a:I

    invoke-virtual {v0, p1, p2, v1, v1}, Lsl;->j(Ljava/lang/Object;Landroid/widget/ImageView;II)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn;->b:Lrl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsl;->j(Ljava/lang/Object;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn;->b:Lrl;

    invoke-virtual {v0, p1}, Lsl;->l(Z)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn;->b:Lrl;

    invoke-virtual {v0, p1}, Lsl;->o(Z)V

    return-void
.end method
