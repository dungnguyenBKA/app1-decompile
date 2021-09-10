.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f08021f

    const-string v2, "field \'mRecyclerView\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080079

    const-string v1, "field \'mBackImageView\'"

    .line 7
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mBackImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080228

    const-string v1, "field \'mRestoreTextView\'"

    .line 11
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mRestoreTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0801da

    const-string v1, "field \'mNoProductsTextView\'"

    .line 15
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    invoke-static {p2, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 18
    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mNoProductsTextView:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mBackImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mRestoreTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mNoProductsTextView:Landroidx/appcompat/widget/AppCompatTextView;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
