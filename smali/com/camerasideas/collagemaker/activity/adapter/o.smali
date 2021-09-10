.class public Lcom/camerasideas/collagemaker/activity/adapter/o;
.super Lrr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrr<",
        "Ltn;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltn;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lrr;-><init>(Ljava/util/List;)V

    .line 2
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/o;->m:Landroid/content/Context;

    const/4 p1, 0x0

    const p2, 0x7f0b0077

    .line 3
    invoke-virtual {p0, p1, p2}, Lrr;->K(II)V

    const/4 p1, 0x1

    const p2, 0x7f0b0071

    .line 4
    invoke-virtual {p0, p1, p2}, Lrr;->K(II)V

    const/4 p1, 0x2

    const p2, 0x7f0b0078

    .line 5
    invoke-virtual {p0, p1, p2}, Lrr;->K(II)V

    return-void
.end method


# virtual methods
.method protected z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ltn;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f080184

    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p2}, Ltn;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0801fd

    .line 5
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Ltn;->d()Z

    move-result p2

    invoke-static {p1, p2}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result p2

    if-nez p2, :cond_1

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 8
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/o;->m:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060223

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_1
    :goto_0
    return-void
.end method
