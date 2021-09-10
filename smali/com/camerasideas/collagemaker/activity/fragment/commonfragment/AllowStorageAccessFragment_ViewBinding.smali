.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;

    const v0, 0x7f080093

    const-string v1, "field \'mBtnOK\'"

    .line 3
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->mBtnOK:Landroid/view/View;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f08009f

    const-string v2, "field \'mBtnClose\'"

    .line 5
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 6
    invoke-static {p2, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->mBtnClose:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->mBtnOK:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->mBtnClose:Landroid/widget/ImageView;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
