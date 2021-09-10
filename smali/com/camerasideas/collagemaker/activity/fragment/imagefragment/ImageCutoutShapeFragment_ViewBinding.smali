.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080266

    const-string v2, "field \'mRecyclerView\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080222

    const-string v1, "field \'mTab\'"

    .line 7
    const-class v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mTab:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0800c0

    const-string v1, "method \'onClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;->c:Landroid/view/View;

    .line 13
    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800bf

    .line 14
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mTab:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
