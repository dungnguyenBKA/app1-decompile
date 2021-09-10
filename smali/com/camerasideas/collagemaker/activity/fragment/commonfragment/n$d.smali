.class Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$d;
.super Ljk;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private e:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljk;-><init>(Landroid/widget/ImageView;)V

    .line 2
    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$d;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lsk;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-super {p0, p1, p2}, Lkk;->b(Ljava/lang/Object;Lsk;)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$d;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lkk;->d(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$d;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lkk;->e(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$d;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lok;->f()Lzj;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lok;->f()Lzj;

    move-result-object p1

    invoke-interface {p1}, Lzj;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lok;->f()Lzj;

    move-result-object p1

    invoke-interface {p1}, Lzj;->c()V

    :cond_0
    return-void
.end method
