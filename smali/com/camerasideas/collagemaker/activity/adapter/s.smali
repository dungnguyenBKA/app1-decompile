.class public Lcom/camerasideas/collagemaker/activity/adapter/s;
.super Lrr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrr<",
        "Lcom/camerasideas/collagemaker/activity/adapter/q;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/activity/adapter/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lrr;-><init>(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/s;->m:Landroid/content/Context;

    const/4 p1, 0x2

    const p2, 0x7f0b00bc

    .line 3
    invoke-virtual {p0, p1, p2}, Lrr;->K(II)V

    const/4 p1, 0x1

    const p2, 0x7f0b00ba

    .line 4
    invoke-virtual {p0, p1, p2}, Lrr;->K(II)V

    return-void
.end method


# virtual methods
.method protected z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/camerasideas/collagemaker/activity/adapter/q;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080261

    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/q;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const v0, 0x7f080175

    .line 6
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v2, v1}, Luq;->t(Landroid/view/View;Z)V

    const v1, 0x7f080186

    .line 7
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/q;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f080178

    .line 8
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/q;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/q;->e()I

    move-result p2

    const/16 v0, 0xd

    const v1, 0x7f080262

    if-ne p2, v0, :cond_1

    .line 11
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f050121

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f07008c

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 14
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/s;->m:Landroid/content/Context;

    invoke-static {p2}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    const v2, 0x7f080263

    const v3, 0x7f080176

    if-eqz p2, :cond_3

    .line 15
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Luq;->t(Landroid/view/View;Z)V

    .line 16
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v1}, Luq;->t(Landroid/view/View;Z)V

    .line 18
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Luq;->t(Landroid/view/View;Z)V

    :cond_4
    :goto_0
    return-void
.end method
