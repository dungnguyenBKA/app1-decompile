.class Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V
    .locals 11

    const/4 p1, -0x1

    if-eq p3, p1, :cond_13

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    .line 2
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Lmr;->b()Landroid/widget/Toast;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lmr;->b()Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x11

    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->r1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p3, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p1, p2, p4, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    const p2, 0x7f0e0155

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    const/16 v1, 0x64

    const/16 v2, 0x32

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_8

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_2

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result p1

    if-ne p1, v3, :cond_13

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->v1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;Z)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->C(I)V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->z(I)I

    move-result p1

    .line 12
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)I

    move-result p3

    if-ne p3, p2, :cond_4

    .line 13
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->E(I)V

    goto/16 :goto_6

    .line 14
    :cond_4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)I

    move-result p2

    if-ne p2, v4, :cond_6

    .line 15
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k()I

    move-result p2

    if-nez p2, :cond_5

    .line 16
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    iget-object p2, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p2, v2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 17
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->q(I)V

    goto :goto_0

    .line 18
    :cond_5
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    iget-object p3, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 19
    :goto_0
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->p(I)V

    goto/16 :goto_6

    .line 20
    :cond_6
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)I

    move-result p2

    if-ne p2, v3, :cond_13

    .line 21
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f()I

    move-result p2

    if-nez p2, :cond_7

    .line 22
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    iget-object p2, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p2, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 23
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->l(F)V

    goto :goto_1

    .line 24
    :cond_7
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    iget-object p3, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 25
    :goto_1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->n(I)V

    goto/16 :goto_6

    .line 26
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lun;

    .line 27
    invoke-virtual {p1}, Lun;->b()Ljava/lang/String;

    move-result-object v5

    .line 28
    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {v6}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->s1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a

    sget-object v6, Lcom/camerasideas/collagemaker/appdata/b;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    sget-object v6, Lcom/camerasideas/collagemaker/appdata/b;->f:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    const/4 p4, 0x1

    :cond_a
    if-eqz p4, :cond_e

    .line 29
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 30
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)I

    move-result p1

    const-string p3, "ProTextColor"

    if-ne p1, p2, :cond_b

    goto :goto_3

    .line 31
    :cond_b
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)I

    move-result p1

    if-ne p1, v4, :cond_c

    const-string p3, "ProOutLineColor"

    goto :goto_3

    .line 32
    :cond_c
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)I

    move-result p1

    if-ne p1, v3, :cond_d

    const-string p3, "ProBackgroundColor"

    :cond_d
    :goto_3
    const-string p1, "PRO_FROM"

    .line 33
    invoke-virtual {v7, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->u1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v5

    const-class v6, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;

    const v8, 0x7f080135

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    return-void

    .line 35
    :cond_e
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p4}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->C(I)V

    .line 36
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)I

    move-result p3

    if-ne p3, p2, :cond_f

    .line 37
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p3

    invoke-virtual {p1}, Lun;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->D(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->v1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;Z)V

    goto/16 :goto_6

    .line 39
    :cond_f
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)I

    move-result p3

    if-ne p3, v4, :cond_11

    .line 40
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p3

    invoke-virtual {p3}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p3

    invoke-virtual {p3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k()I

    move-result p3

    if-nez p3, :cond_10

    .line 41
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    iget-object p3, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p3, v2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 42
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->q(I)V

    goto :goto_4

    .line 43
    :cond_10
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    iget-object p4, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p3

    invoke-virtual {p3}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p3

    invoke-virtual {p3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k()I

    move-result p3

    invoke-virtual {p4, p3}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 44
    :goto_4
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-virtual {p1}, Lun;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    xor-int/2addr p2, p4

    invoke-static {p3, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->v1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;Z)V

    .line 45
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p1}, Lun;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->o(Ljava/lang/String;)V

    goto :goto_6

    .line 46
    :cond_11
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)I

    move-result p3

    if-ne p3, v3, :cond_13

    .line 47
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p3

    invoke-virtual {p3}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p3

    invoke-virtual {p3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f()I

    move-result p3

    if-nez p3, :cond_12

    .line 48
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    iget-object p3, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p3, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 49
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->l(F)V

    goto :goto_5

    .line 50
    :cond_12
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    iget-object p4, p3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p3

    invoke-virtual {p3}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p3

    invoke-virtual {p3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f()I

    move-result p3

    invoke-virtual {p4, p3}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 51
    :goto_5
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-virtual {p1}, Lun;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    xor-int/2addr p2, p4

    invoke-static {p3, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->v1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;Z)V

    .line 52
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p1}, Lun;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->m(Ljava/lang/String;)V

    :cond_13
    :goto_6
    return-void
.end method
