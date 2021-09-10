.class Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->D0(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/x;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView$o;

.field final synthetic c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;Landroidx/recyclerview/widget/x;Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;->a:Landroidx/recyclerview/widget/x;

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;->b:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->l1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;->a:Landroidx/recyclerview/widget/x;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;->b:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/x;->e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->m1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->c(I)V

    :cond_0
    return-void
.end method
