.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f08012d

    const-string v2, "field \'mRecyclerView\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-static {p2, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
