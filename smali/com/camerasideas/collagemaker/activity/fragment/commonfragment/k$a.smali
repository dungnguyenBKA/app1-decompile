.class Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;->D0(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;->b:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;->y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;)Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f050045

    invoke-static {p2, p3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;->b:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k$a;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;->z1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;)Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f050046

    invoke-static {p2, p3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method
