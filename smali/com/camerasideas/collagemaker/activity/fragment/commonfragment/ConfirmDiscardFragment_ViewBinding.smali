.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;

    const v0, 0x7f0800a0

    const-string v1, "field \'mBtnConfirm\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBtnConfirm\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;->mBtnConfirm:Landroid/widget/TextView;

    .line 5
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080099

    const-string v1, "field \'mBtnCancel\' and method \'onClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBtnCancel\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;->mBtnCancel:Landroid/widget/TextView;

    .line 9
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ea

    const-string v1, "method \'onClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->e:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding$c;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;->mBtnConfirm:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;->mBtnCancel:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->d:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
