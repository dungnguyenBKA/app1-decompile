.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    .line 3
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f08021a

    const-string v2, "field \'mRatioX\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioX:Landroid/widget/EditText;

    const v0, 0x7f08021b

    const-string v1, "field \'mRatioY\'"

    .line 7
    const-class v2, Landroid/widget/EditText;

    .line 8
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioY:Landroid/widget/EditText;

    const v0, 0x7f08011a

    const-string v1, "field \'mErrorDesc\'"

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

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mErrorDesc:Landroid/widget/TextView;

    const v0, 0x7f0800f4

    const-string v1, "field \'mBtnSubmit\' and method \'onClick\'"

    .line 15
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBtnSubmit\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mBtnSubmit:Landroid/widget/TextView;

    .line 17
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;->c:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800f3

    const-string v1, "method \'onClick\'"

    .line 19
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;->d:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioX:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioY:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mErrorDesc:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mBtnSubmit:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;->c:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
