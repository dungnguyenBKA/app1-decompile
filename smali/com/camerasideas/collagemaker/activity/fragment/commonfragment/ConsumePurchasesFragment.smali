.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;
.super Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;
.source "SourceFile"

# interfaces
.implements Lgo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i<",
        "Lgo;",
        "Ldo;",
        ">;",
        "Lgo;"
    }
.end annotation


# instance fields
.field private Y:Landroid/app/ProgressDialog;

.field private Z:Lcom/camerasideas/collagemaker/activity/adapter/g;

.field mBackImageView:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mNoProductsTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRestoreTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;-><init>()V

    return-void
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->n1(Lfo;)Lyn;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    .line 2
    invoke-virtual {p1, p0}, Lyn;->d(Ljava/lang/Object;)V

    .line 3
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->Y:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mBackImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/g;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/camerasideas/collagemaker/activity/adapter/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->Z:Lcom/camerasideas/collagemaker/activity/adapter/g;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->Z:Lcom/camerasideas/collagemaker/activity/adapter/g;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment$a;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;)V

    invoke-virtual {p1, p2}, Lsr;->J(Lur;)V

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->Y:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mRestoreTextView:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment$b;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mBackImageView:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment$c;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment$c;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    check-cast p1, Ldo;

    invoke-virtual {p1}, Ldo;->o()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->Z:Lcom/camerasideas/collagemaker/activity/adapter/g;

    invoke-virtual {v0, p1}, Lsr;->H(Ljava/util/List;)V

    return-void
.end method

.method public c(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->Y:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->Y:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected l1()Ljava/lang/String;
    .locals 1

    const-string v0, "ConsumePurchasesFragment"

    return-object v0
.end method

.method public m(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->mNoProductsTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1}, Luq;->t(Landroid/view/View;Z)V

    return-void
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b0049

    return v0
.end method

.method protected n1(Lfo;)Lyn;
    .locals 1

    .line 1
    check-cast p1, Lgo;

    .line 2
    new-instance v0, Ldo;

    invoke-direct {v0, p1}, Ldo;-><init>(Lgo;)V

    return-object v0
.end method
