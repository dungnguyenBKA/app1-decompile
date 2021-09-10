.class public Lcom/camerasideas/collagemaker/activity/adapter/k;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->e:Z

    .line 4
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->a:I

    .line 5
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->b:I

    .line 6
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->c:I

    .line 7
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 8
    :cond_0
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->e:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->d:Z

    .line 11
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->e:Z

    .line 12
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->a:I

    .line 13
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->d:Z

    .line 14
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    .line 15
    :cond_0
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->e:Z

    return-void
.end method


# virtual methods
.method public f(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result p3

    .line 3
    iget-boolean p4, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->d:Z

    if-eqz p4, :cond_3

    if-nez p2, :cond_1

    .line 4
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->e:Z

    if-eqz p2, :cond_0

    .line 5
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 6
    :cond_0
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_8

    .line 7
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->e:Z

    if-eqz p2, :cond_2

    .line 8
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 9
    :cond_2
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    if-nez p2, :cond_5

    .line 10
    iget-boolean p4, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->e:Z

    if-eqz p4, :cond_4

    .line 11
    iget p4, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->a:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 12
    :cond_4
    iget p4, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->a:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 13
    :cond_5
    iget-boolean p4, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->e:Z

    if-eqz p4, :cond_6

    .line 14
    iget p4, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->c:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 15
    :cond_6
    iget p4, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->c:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_8

    .line 16
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->e:Z

    if-eqz p2, :cond_7

    .line 17
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 18
    :cond_7
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/k;->b:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_8
    :goto_1
    return-void
.end method
