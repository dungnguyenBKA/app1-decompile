.class Lcom/camerasideas/collagemaker/activity/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lul;


# instance fields
.field private a:J

.field final synthetic b:Lcom/camerasideas/collagemaker/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/camerasideas/collagemaker/activity/x0;->a:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/MainActivity;->s(Lcom/camerasideas/collagemaker/activity/MainActivity;)J

    move-result-wide v2

    const/16 v4, 0x64

    const-wide/32 v5, 0x3200000

    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    const/16 v2, 0x64

    goto :goto_0

    :cond_0
    const/16 v2, 0x32

    :goto_0
    int-to-long v2, v2

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/camerasideas/collagemaker/activity/x0;->a:J

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/camerasideas/collagemaker/activity/MainActivity;->u(Lcom/camerasideas/collagemaker/activity/MainActivity;J)J

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->v(Lcom/camerasideas/collagemaker/activity/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v5, v6, v1}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/camerasideas/collagemaker/activity/MainActivity;->z(Ljava/io/File;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->t(Lcom/camerasideas/collagemaker/activity/MainActivity;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/camerasideas/collagemaker/activity/MainActivity;->x(Lcom/camerasideas/collagemaker/activity/MainActivity;J)J

    .line 7
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/MainActivity;->w(Lcom/camerasideas/collagemaker/activity/MainActivity;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 8
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/MainActivity;->s(Lcom/camerasideas/collagemaker/activity/MainActivity;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v4}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    .line 11
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    new-instance v3, Lcom/camerasideas/collagemaker/activity/y;

    invoke-direct {v3, p0, v0, v1}, Lcom/camerasideas/collagemaker/activity/y;-><init>(Lcom/camerasideas/collagemaker/activity/x0;D)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
