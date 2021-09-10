.class Lyp$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyp;->A(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lyp;


# direct methods
.method constructor <init>(Lyp;ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyp$d;->f:Lyp;

    iput p2, p0, Lyp$d;->c:I

    iput-object p3, p0, Lyp$d;->d:Ljava/lang/String;

    iput-object p4, p0, Lyp$d;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x64

    .line 2
    div-int/2addr p1, p2

    iput p1, p0, Lyp$d;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lyp$d;->f:Lyp;

    invoke-static {v0}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object v0

    iget-object v1, p0, Lyp$d;->d:Ljava/lang/String;

    iget v2, p0, Lyp$d;->b:I

    iget v3, p0, Lyp$d;->a:I

    mul-int v2, v2, v3

    iget v3, p0, Lyp$d;->c:I

    div-int/2addr p1, v3

    add-int/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lyp$e;->u(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lyp$d;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c(ILjava/lang/Exception;)V
    .locals 1

    const-string p1, "downloadFailed e = "

    .line 1
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CloudStoreManager"

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, "no info"

    :goto_1
    const-string v0, "Error_Store_Package"

    .line 4
    invoke-static {p1, v0, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lyp$d;->d:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lyp$d;->d:Ljava/lang/String;

    const-string v0, "Download_Failed"

    invoke-static {p1, v0, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lyp$d;->f:Lyp;

    invoke-static {p1}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object p1

    iget-object p2, p0, Lyp$d;->e:Ljava/util/List;

    iget v0, p0, Lyp$d;->b:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leq;

    iget-object p2, p2, Leq;->c:Ljava/lang/String;

    invoke-interface {p1, p2}, Lyp$e;->q(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lyp$d;->f:Lyp;

    invoke-static {p1}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object p1

    iget-object p2, p0, Lyp$d;->d:Ljava/lang/String;

    invoke-interface {p1, p2}, Lyp$e;->q(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    const-string v0, ".tmp"

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lyp$d;->e:Ljava/util/List;

    iget v0, p0, Lyp$d;->b:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leq;

    iget-boolean p1, p1, Leq;->d:Z

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lyp$d;->e:Ljava/util/List;

    iget v1, p0, Lyp$d;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq;

    iget-object v0, v0, Leq;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/app/b;->L0(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lyp$d;->f:Lyp;

    invoke-static {p1}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object p1

    iget-object v0, p0, Lyp$d;->e:Ljava/util/List;

    iget v1, p0, Lyp$d;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq;

    iget-object v0, v0, Leq;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lyp$e;->n(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lyp$d;->f:Lyp;

    invoke-static {p1}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object p1

    iget-object v0, p0, Lyp$d;->e:Ljava/util/List;

    iget v1, p0, Lyp$d;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq;

    iget-object v0, v0, Leq;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lyp$e;->q(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lyp$d;->f:Lyp;

    invoke-static {p1}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object p1

    iget-object v0, p0, Lyp$d;->e:Ljava/util/List;

    iget v1, p0, Lyp$d;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq;

    iget-object v0, v0, Leq;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lyp$e;->n(Ljava/lang/String;)V

    .line 11
    :goto_1
    iget p1, p0, Lyp$d;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lyp$d;->b:I

    .line 12
    iget-object v0, p0, Lyp$d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 13
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lyp$d;->e:Ljava/util/List;

    iget v1, p0, Lyp$d;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq;

    iget-object v0, v0, Leq;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "CloudStoreManager"

    const-string v0, "mkdirs failed2"

    .line 15
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lyp$d;->f:Lyp;

    invoke-static {p1}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object p1

    iget-object v0, p0, Lyp$d;->e:Ljava/util/List;

    iget v1, p0, Lyp$d;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq;

    iget-object v0, v0, Leq;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lyp$e;->q(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object p1, p0, Lyp$d;->f:Lyp;

    invoke-static {p1}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object p1

    iget-object v0, p0, Lyp$d;->e:Ljava/util/List;

    iget v1, p0, Lyp$d;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq;

    iget-object v0, v0, Leq;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lyp$e;->j(Ljava/lang/String;)V

    .line 18
    new-instance p1, Lom;

    iget-object v0, p0, Lyp$d;->e:Ljava/util/List;

    iget v1, p0, Lyp$d;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq;

    iget-object v0, v0, Leq;->a:Ljava/lang/String;

    iget-object v1, p0, Lyp$d;->e:Ljava/util/List;

    iget v2, p0, Lyp$d;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leq;

    iget-object v1, v1, Leq;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Lom;-><init>(Ljava/lang/String;Ljava/lang/String;Lom$a;)V

    invoke-virtual {p1}, Lpm;->run()V

    goto :goto_2

    .line 19
    :cond_4
    iget-object p1, p0, Lyp$d;->f:Lyp;

    invoke-static {p1}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object p1

    iget-object v0, p0, Lyp$d;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lyp$e;->n(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lyp$d;->d:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 21
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lyp$d;->d:Ljava/lang/String;

    const-string v1, "Download_Success"

    invoke-static {p1, v1, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    .line 24
    sget-object v0, Lcom/camerasideas/collagemaker/appdata/d;->m:Lcom/camerasideas/collagemaker/appdata/d;

    invoke-static {p1, v0}, Luq;->k(Landroid/content/Context;Lcom/camerasideas/collagemaker/appdata/d;)V

    :cond_5
    :goto_2
    return-void
.end method
