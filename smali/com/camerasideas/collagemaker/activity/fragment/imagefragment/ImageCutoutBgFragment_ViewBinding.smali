.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080221

    const-string v2, "field \'mRecyclerView\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080120

    const-string v1, "field \'mCloudBgLayout\'"

    .line 7
    const-class v2, Landroid/widget/LinearLayout;

    .line 8
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCloudBgLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080218

    const-string v1, "field \'mRatioRecyclerView\'"

    .line 11
    const-class v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0800d2

    const-string v1, "field \'mMenuLayout\'"

    .line 15
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mMenuLayout:Landroid/view/View;

    const v0, 0x7f08007c

    const-string v1, "field \'mBackgroundLayout\'"

    .line 16
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBackgroundLayout:Landroid/view/View;

    const v0, 0x7f0800d4

    const-string v1, "field \'mCanvasLayout\'"

    .line 17
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCanvasLayout:Landroid/view/View;

    const v0, 0x7f080242

    const-string v1, "field \'mScrollView\'"

    .line 18
    const-class v2, Landroidx/core/widget/NestedScrollView;

    .line 19
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 20
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f0800d3

    const-string v1, "field \'mBtnCanvasCancel\' and method \'onClick\'"

    .line 22
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 23
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mBtnCanvasCancel\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnCanvasCancel:Landroid/widget/ImageView;

    .line 24
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->c:Landroid/view/View;

    .line 25
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08007b

    const-string v1, "field \'mBtnBackgroundCancel\' and method \'onClick\'"

    .line 26
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 27
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mBtnBackgroundCancel\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnBackgroundCancel:Landroid/widget/ImageView;

    .line 28
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->d:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802b9

    const-string v1, "field \'mTextTagNew\'"

    .line 30
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mTextTagNew:Landroid/view/View;

    const v0, 0x7f08009b

    const-string v1, "field \'mBtnCanvas\' and method \'onClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 32
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBtnCanvas\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnCanvas:Landroid/widget/TextView;

    .line 33
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->e:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$c;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080097

    const-string v1, "field \'mBtnBackground\' and method \'onClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBtnBackground\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnBackground:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->f:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$d;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c4

    const-string v1, "field \'mBtnText\' and method \'onClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBtnText\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnText:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->g:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$e;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800d1

    const-string v1, "method \'onClick\'"

    .line 43
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->h:Landroid/view/View;

    .line 45
    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$f;

    invoke-direct {v2, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$f;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08007a

    .line 46
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->i:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding$g;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCloudBgLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mMenuLayout:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBackgroundLayout:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCanvasLayout:Landroid/view/View;

    .line 9
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 10
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnCanvasCancel:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnBackgroundCancel:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mTextTagNew:Landroid/view/View;

    .line 13
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnCanvas:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnBackground:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnText:Landroid/widget/TextView;

    .line 16
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->c:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->d:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->e:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->f:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->g:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->h:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment_ViewBinding;->i:Landroid/view/View;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
