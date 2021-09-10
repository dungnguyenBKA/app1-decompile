.class Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I

    move-result v0

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->J1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I

    move-result v3

    mul-int v0, v0, v3

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->K1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v3, v4}, Lc2;->b(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v0, v3

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->L1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;IZ)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->M1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->M1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->O1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc2;->h(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->R1(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
