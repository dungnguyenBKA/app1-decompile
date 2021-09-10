.class Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->D0(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->x1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Z

    move-result p1

    const/high16 p2, 0x41700000    # 15.0f

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->y1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;Z)Z

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->z1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)I

    move-result p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->D1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->x1()I

    move-result v1

    sub-int/2addr p1, v1

    if-ltz p1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    iget-object v1, v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {v1, p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->F1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;Z)Z

    .line 6
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    iget-object p3, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 7
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    iget-object v1, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->G1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->H1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->I1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;Z)Z

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1, p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->F1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;Z)Z

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->J1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p1

    neg-int p1, p1

    .line 12
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    iget-object p2, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->E1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->F1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
