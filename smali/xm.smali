.class public abstract Lxm;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxm$b;,
        Lxm$a;
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:I

.field protected e:Lxm$a;

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Landroid/widget/AbsListView$LayoutParams;

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxm$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxm;->h:Ljava/util/List;

    const/4 v0, 0x6

    .line 3
    iput v0, p0, Lxm;->i:I

    .line 4
    iput-object p1, p0, Lxm;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lxm;->e:Lxm$a;

    .line 6
    invoke-static {p1}, Lc2;->h(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1}, Lc2;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryBaseAdapter"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 8
    invoke-static {p1, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr p2, v0

    .line 9
    div-int/lit8 p2, p2, 0x4

    iput p2, p0, Lxm;->c:I

    .line 10
    iput p2, p0, Lxm;->d:I

    .line 11
    invoke-static {p1}, Landroidx/core/app/b;->Z(Landroid/content/Context;)I

    .line 12
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget p2, p0, Lxm;->c:I

    iget v0, p0, Lxm;->d:I

    invoke-direct {p1, p2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lxm;->g:Landroid/widget/AbsListView$LayoutParams;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lxm;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lxm;->g(I)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lxm;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 4
    iget-object p1, p0, Lxm;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r(I)V

    .line 6
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxm;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lxm;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public c(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxm;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lxm;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lxm;->i:I

    return v0
.end method

.method public e(I)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lxm;->f:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 2
    iget-object v0, p0, Lxm;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lxm;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lxm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lxm;->f:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lxm;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 3
    iget-object v0, p0, Lxm;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v0, p0, Lxm;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lxm;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lxm;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lxm;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public i(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lxm;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lxm;->i:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxm;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lxm;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iput-object p2, p0, Lxm;->f:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lxm;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lxm;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lxm;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
