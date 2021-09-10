.class Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$a;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field final synthetic d:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;->d:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    invoke-static {}, Lxq;->f()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$a;

    .line 2
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$a;->a:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;->c:Landroid/content/Context;

    invoke-static {v1}, Lxq;->d(Landroid/content/Context;)I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$a;->b:Landroid/widget/TextView;

    invoke-static {p2}, Lxq;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;->d:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;->u1(Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;)Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/a;

    invoke-direct {v0, p0, p2}, Lcom/camerasideas/collagemaker/activity/fragment/a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b006e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$a;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;->d:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;

    invoke-direct {p2, v0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;Landroid/view/View;)V

    return-object p2
.end method
