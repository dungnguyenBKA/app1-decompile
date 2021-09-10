.class Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V
    .locals 0

    const/4 p1, -0x1

    if-eq p3, p1, :cond_5

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->K1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Lcom/camerasideas/collagemaker/activity/adapter/i;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/i;->d(I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->t1()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->K1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Lcom/camerasideas/collagemaker/activity/adapter/i;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->K1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Lcom/camerasideas/collagemaker/activity/adapter/i;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/i;->A(I)Lmn;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->K1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Lcom/camerasideas/collagemaker/activity/adapter/i;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/camerasideas/collagemaker/activity/adapter/i;->d(I)I

    move-result p2

    if-nez p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->K1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Lcom/camerasideas/collagemaker/activity/adapter/i;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/i;->E(I)V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->R1(Lmn;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->K1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Lcom/camerasideas/collagemaker/activity/adapter/i;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/camerasideas/collagemaker/activity/adapter/i;->d(I)I

    move-result p2

    const/4 p4, 0x2

    if-ne p2, p4, :cond_5

    .line 8
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->L1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lmn;->f()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    const-string p2, "ProShape"

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->v1(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p2, p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->M1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;I)V

    .line 11
    invoke-virtual {p1}, Lmn;->e()Lhq;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lmn;->e()Lhq;

    move-result-object p2

    invoke-static {p2}, Lyp;->S(Lfq;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 12
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-virtual {p1}, Lmn;->e()Lhq;

    move-result-object p3

    iget-object p3, p3, Lfq;->h:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->B1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->C1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->A1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p2

    invoke-virtual {p1}, Lmn;->e()Lhq;

    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Lyp;->z(Lfq;)V

    return-void

    .line 16
    :cond_4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->K1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Lcom/camerasideas/collagemaker/activity/adapter/i;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/camerasideas/collagemaker/activity/adapter/i;->E(I)V

    .line 17
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->R1(Lmn;)V

    :cond_5
    :goto_0
    return-void
.end method
