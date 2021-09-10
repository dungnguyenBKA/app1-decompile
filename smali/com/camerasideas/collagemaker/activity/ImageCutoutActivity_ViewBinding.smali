.class public Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    .line 3
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f08018b

    const-string v2, "field \'mBannerAdContainer\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBannerAdContainer:Landroid/view/ViewGroup;

    const v0, 0x7f08005d

    const-string v1, "field \'mBannerAdLayout\'"

    .line 7
    const-class v2, Landroid/view/ViewGroup;

    .line 8
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBannerAdLayout:Landroid/view/ViewGroup;

    const v0, 0x7f080166

    const-string v1, "field \'mCutoutView\'"

    .line 11
    const-class v2, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    .line 12
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    const v0, 0x7f080207

    const-string v1, "field \'mProgressView\'"

    .line 15
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mProgressView:Landroid/view/View;

    const v0, 0x7f0800f6

    const-string v1, "field \'mBgToolBarLayout\'"

    .line 16
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBgToolBarLayout:Landroid/view/View;

    const v0, 0x7f080132

    const-string v1, "field \'mMaskView\'"

    .line 17
    const-class v2, Landroid/widget/FrameLayout;

    .line 18
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 19
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mMaskView:Landroid/widget/FrameLayout;

    const v0, 0x7f0801b4

    const-string v1, "field \'mMiddleLayout\'"

    .line 21
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mMiddleLayout:Landroid/view/View;

    const v0, 0x7f08016c

    const-string v1, "field \'mImgAlignLineV\'"

    .line 22
    const-class v2, Landroid/widget/ImageView;

    .line 23
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 24
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mImgAlignLineV:Landroid/widget/ImageView;

    const v0, 0x7f08016b

    const-string v1, "field \'mImgAlignLineH\'"

    .line 26
    const-class v2, Landroid/widget/ImageView;

    .line 27
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 28
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mImgAlignLineH:Landroid/widget/ImageView;

    const v0, 0x7f080282

    const-string v1, "field \'mSortItemLayout\'"

    .line 30
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mSortItemLayout:Landroid/view/View;

    const v0, 0x7f0800b0

    const-string v1, "field \'mBtnMoveUp\' and method \'onClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 32
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mBtnMoveUp\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnMoveUp:Landroid/widget/LinearLayout;

    .line 33
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->c:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800af

    const-string v1, "field \'mBtnMoveDown\' and method \'onClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mBtnMoveDown\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnMoveDown:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->d:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08009c

    const-string v1, "field \'mBtnChangeAlpha\'"

    .line 39
    const-class v2, Landroid/widget/ImageView;

    .line 40
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 41
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnChangeAlpha:Landroid/widget/ImageView;

    const v0, 0x7f0800a3

    const-string v1, "method \'onClick\'"

    .line 43
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->e:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding$c;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBannerAdContainer:Landroid/view/ViewGroup;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBannerAdLayout:Landroid/view/ViewGroup;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mProgressView:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mMaskView:Landroid/widget/FrameLayout;

    .line 8
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mImgAlignLineV:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mImgAlignLineH:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mSortItemLayout:Landroid/view/View;

    .line 11
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnMoveUp:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnMoveDown:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnChangeAlpha:Landroid/widget/ImageView;

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->c:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->d:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
