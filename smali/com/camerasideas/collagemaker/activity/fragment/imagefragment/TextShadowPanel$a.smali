.class Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V
    .locals 6

    const/4 p1, -0x1

    if-eq p3, p1, :cond_8

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    .line 2
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

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

    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->r1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p3, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p1, p2, p4, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    const p2, 0x7f0e0155

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result p1

    const/4 p4, 0x3

    if-ne p1, p4, :cond_8

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->C(I)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->u1(Z)V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->z(I)I

    move-result p1

    .line 12
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->x(I)V

    goto :goto_1

    .line 13
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lun;

    .line 14
    invoke-virtual {p1}, Lun;->b()Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->s1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/camerasideas/collagemaker/appdata/b;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/camerasideas/collagemaker/appdata/b;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 p4, 0x1

    :cond_6
    if-eqz p4, :cond_7

    .line 16
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string p1, "PRO_FROM"

    const-string p2, "ShadowColor"

    .line 17
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;

    const v3, 0x7f080135

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    return-void

    .line 19
    :cond_7
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p4}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->C(I)V

    .line 20
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p3

    invoke-virtual {p1}, Lun;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->w(Ljava/lang/String;)V

    .line 21
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;

    invoke-virtual {p1}, Lun;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->u1(Z)V

    :cond_8
    :goto_1
    return-void
.end method
