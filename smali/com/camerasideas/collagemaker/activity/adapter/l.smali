.class public Lcom/camerasideas/collagemaker/activity/adapter/l;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/adapter/l$b;,
        Lcom/camerasideas/collagemaker/activity/adapter/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/camerasideas/collagemaker/activity/adapter/l$a;

.field private e:I

.field private f:I

.field private g:Lcn;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn;Lcom/camerasideas/collagemaker/activity/adapter/l$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->h:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->c:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->d:Lcom/camerasideas/collagemaker/activity/adapter/l$a;

    .line 5
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->g:Lcn;

    const/high16 p2, 0x42960000    # 75.0f

    .line 6
    invoke-static {p1, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->e:I

    .line 7
    invoke-static {p1, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->f:I

    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->h:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/l$b;

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 3
    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/l$b;->d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->g:Lcn;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->h:Ljava/util/List;

    .line 5
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/adapter/l$b;->a:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0, p2, p1}, Lcn;->b(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;Landroid/widget/ImageView;)V

    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0063

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/l$b;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->d:Lcom/camerasideas/collagemaker/activity/adapter/l$a;

    invoke-direct {p2, p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/l$b;-><init>(Landroid/view/View;Lcom/camerasideas/collagemaker/activity/adapter/l$a;)V

    return-object p2
.end method

.method public z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/l;->h:Ljava/util/List;

    return-object v0
.end method
