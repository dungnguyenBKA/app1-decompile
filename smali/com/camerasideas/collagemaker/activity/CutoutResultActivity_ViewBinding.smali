.class public Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    const v0, 0x7f080096

    const-string v1, "field \'mBtnBack\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "field \'mBtnBack\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800aa

    const-string v1, "field \'mBtnHome\' and method \'onClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "field \'mBtnHome\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mBtnHome:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080237

    const-string v2, "field \'mSaveText\'"

    .line 12
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveText:Landroid/widget/TextView;

    const v0, 0x7f080269

    const-string v1, "field \'mShareRecyclerView\'"

    .line 15
    const-class v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 17
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08022e

    const-string v1, "field \'mPreViewProgressbar\'"

    .line 19
    const-class v2, Landroid/widget/ProgressBar;

    .line 20
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mPreViewProgressbar:Landroid/widget/ProgressBar;

    const v0, 0x7f08022f

    const-string v1, "field \'mImageThumbnail\'"

    .line 23
    const-class v2, Landroid/widget/ImageView;

    .line 24
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 25
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImageThumbnail:Landroid/widget/ImageView;

    const v0, 0x7f0801fb

    const-string v1, "field \'mPreviewLayout\'"

    .line 27
    const-class v2, Landroid/widget/LinearLayout;

    .line 28
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 29
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mPreviewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f08022b

    const-string v1, "field \'mImagePreview\' and method \'onClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 32
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "field \'mImagePreview\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImagePreview:Landroidx/appcompat/widget/AppCompatImageView;

    .line 33
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->e:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding$c;-><init>(Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022c

    const-string v1, "field \'mImagePreviewLayout\'"

    .line 35
    const-class v2, Landroid/widget/FrameLayout;

    .line 36
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 37
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImagePreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f080238

    const-string v1, "field \'mSaveHintLayout\'"

    .line 39
    const-class v2, Landroid/widget/LinearLayout;

    .line 40
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 41
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveHintLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f08023b

    const-string v1, "field \'mSaveProgressBar\'"

    .line 43
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    .line 44
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 45
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveProgressBar:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    const v0, 0x7f08022d

    const-string v1, "field \'mSaveCompleteTV\'"

    .line 47
    const-class v2, Landroid/widget/TextView;

    .line 48
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 49
    invoke-static {p2, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 50
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveCompleteTV:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mBtnHome:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveText:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mPreViewProgressbar:Landroid/widget/ProgressBar;

    .line 7
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImageThumbnail:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mPreviewLayout:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImagePreview:Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveHintLayout:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveProgressBar:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    .line 12
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveCompleteTV:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->c:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->d:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
