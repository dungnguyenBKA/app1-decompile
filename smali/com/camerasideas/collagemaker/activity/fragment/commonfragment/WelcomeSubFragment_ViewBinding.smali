.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;

    const v0, 0x7f0800ce

    const-string v1, "field \'mTvTip\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTvTip\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;->mTvTip:Landroid/widget/TextView;

    .line 5
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080096

    const-string v1, "method \'onClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;->d:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;->mTvTip:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;->c:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
