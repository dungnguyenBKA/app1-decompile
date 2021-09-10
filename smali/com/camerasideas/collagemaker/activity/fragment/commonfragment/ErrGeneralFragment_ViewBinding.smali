.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080119

    const-string v2, "field \'mErrDescriptionTv\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;->mErrDescriptionTv:Landroid/widget/TextView;

    const v0, 0x7f080171

    const-string v1, "field \'mInfoCodeTv\'"

    .line 7
    const-class v2, Landroid/widget/TextView;

    .line 8
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;->mInfoCodeTv:Landroid/widget/TextView;

    const v0, 0x7f0800cc

    const-string v1, "field \'mBtnYes\' and method \'onClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'mBtnYes\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;->mBtnYes:Landroid/widget/Button;

    .line 13
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment_ViewBinding;->c:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080271

    const-string v0, "field \'mShowDeleteTextLayout\'"

    .line 15
    const-class v1, Landroid/widget/LinearLayout;

    .line 16
    invoke-static {p2, p1, v0}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    invoke-static {p2, p1, v0, v1}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;->mErrDescriptionTv:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;->mInfoCodeTv:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment;->mBtnYes:Landroid/widget/Button;

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrGeneralFragment_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
