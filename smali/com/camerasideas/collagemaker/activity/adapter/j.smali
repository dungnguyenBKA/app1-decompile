.class public Lcom/camerasideas/collagemaker/activity/adapter/j;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->d:Z

    .line 4
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->a:I

    .line 5
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->c:Z

    .line 6
    iput p3, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->b:I

    .line 7
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

    .line 8
    :cond_0
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->d:Z

    return-void
.end method


# virtual methods
.method public f(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 1

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result p3

    .line 3
    iget-boolean p4, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->c:Z

    if-eqz p4, :cond_5

    if-nez p2, :cond_1

    .line 4
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->d:Z

    if-eqz p2, :cond_0

    .line 5
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->b:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 6
    :cond_0
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_3

    .line 7
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->d:Z

    if-eqz p2, :cond_2

    .line 8
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 9
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 10
    :cond_2
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->b:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 11
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 12
    :cond_3
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->d:Z

    if-eqz p2, :cond_4

    .line 13
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 14
    :cond_4
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 15
    :cond_5
    iget-boolean p4, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->d:Z

    if-eqz p4, :cond_6

    .line 16
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->a:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 17
    :cond_6
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->a:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_8

    if-eqz p4, :cond_7

    .line 18
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 19
    :cond_7
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/j;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_8
    :goto_1
    return-void
.end method
