.class public Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0801f1

    const-string v2, "field \'mBtnSelectedFolder\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnSelectedFolder:Landroid/widget/TextView;

    const v0, 0x7f0800b2

    const-string v1, "field \'mBtnNext\'"

    .line 7
    const-class v2, Landroid/widget/FrameLayout;

    .line 8
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnNext:Landroid/widget/FrameLayout;

    const v0, 0x7f0802d4

    const-string v1, "field \'mTvNext\'"

    .line 11
    const-class v2, Landroid/widget/TextView;

    .line 12
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mTvNext:Landroid/widget/TextView;

    const v0, 0x7f080096

    const-string v1, "field \'mBtnBack\'"

    .line 15
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 17
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnBack:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080272

    const-string v1, "field \'mSignMoreLessView\'"

    .line 19
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 20
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSignMoreLessView:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f08009d

    const-string v1, "field \'mBtnChooseFolder\'"

    .line 23
    const-class v2, Landroid/widget/LinearLayout;

    .line 24
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 25
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnChooseFolder:Landroid/widget/LinearLayout;

    const v0, 0x7f080143

    const-string v1, "field \'mGridView\'"

    .line 27
    const-class v2, Landroid/widget/GridView;

    .line 28
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 29
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGridView:Landroid/widget/GridView;

    const v0, 0x7f08013c

    const-string v1, "field \'mGalleryView\'"

    .line 31
    const-class v2, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    .line 32
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 33
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    const v0, 0x7f0800bb

    const-string v1, "field \'mBtnSelectedHint\'"

    .line 35
    const-class v2, Landroid/widget/TextView;

    .line 36
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 37
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnSelectedHint:Landroid/widget/TextView;

    const v0, 0x7f0802d7

    const-string v1, "field \'mTvSelectedCount\'"

    .line 39
    const-class v2, Landroid/widget/TextView;

    .line 40
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 41
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mTvSelectedCount:Landroid/widget/TextView;

    const v0, 0x7f08009e

    const-string v1, "field \'mBtnClear\'"

    .line 43
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 44
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 45
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnClear:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f08025d

    const-string v1, "field \'mSelectedRecyclerView\'"

    .line 47
    const-class v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 49
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSelectedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08018e

    const-string v1, "field \'mMultipleView\'"

    .line 51
    const-class v2, Landroid/widget/LinearLayout;

    .line 52
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 53
    invoke-static {p2, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 54
    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mMultipleView:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnSelectedFolder:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnNext:Landroid/widget/FrameLayout;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mTvNext:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnBack:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSignMoreLessView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnChooseFolder:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGridView:Landroid/widget/GridView;

    .line 10
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    .line 11
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnSelectedHint:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mTvSelectedCount:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnClear:Landroidx/appcompat/widget/AppCompatImageView;

    .line 14
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSelectedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mMultipleView:Landroid/widget/LinearLayout;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
