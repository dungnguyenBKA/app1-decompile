.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0802b1

    const-string v2, "field \'mRecyclerView\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080161

    const-string v1, "field \'mImageView\'"

    .line 7
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080253

    const-string v1, "field \'mSeekBar\'"

    .line 11
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 12
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 13
    invoke-static {p2, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    check-cast p2, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iput-object p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
