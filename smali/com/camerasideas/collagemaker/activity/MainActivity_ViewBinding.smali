.class public Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/MainActivity;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/MainActivity;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    .line 3
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0801ad

    const-string v2, "field \'mMainLayout\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/MainActivity;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0801ff

    const-string v1, "field \'mProgressView\'"

    .line 7
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/MainActivity;->mProgressView:Landroid/view/View;

    const v0, 0x7f080069

    const-string v1, "field \'mCardAdLayout\'"

    .line 8
    const-class v2, Landroid/widget/FrameLayout;

    .line 9
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 10
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/MainActivity;->mCardAdLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f080234

    const-string v1, "field \'mRootLayout\'"

    .line 12
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/MainActivity;->mRootLayout:Landroid/view/View;

    const v0, 0x7f0800b7

    const-string v1, "field \'mBtnPro\' and method \'onClickHome\'"

    .line 13
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 14
    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/MainActivity;->mBtnPro:Landroid/view/View;

    .line 15
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->c:Landroid/view/View;

    .line 16
    new-instance v1, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800bc

    const-string v1, "method \'onClickHome\'"

    .line 17
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->d:Landroid/view/View;

    .line 19
    new-instance v2, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08008d

    .line 20
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->e:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding$c;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mProgressView:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mCardAdLayout:Landroid/widget/FrameLayout;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mRootLayout:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mBtnPro:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->c:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->d:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
