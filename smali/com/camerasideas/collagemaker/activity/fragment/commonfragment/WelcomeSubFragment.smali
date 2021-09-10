.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;
.super Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;
.source "SourceFile"

# interfaces
.implements Lho;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i<",
        "Lho;",
        "Leo;",
        ">;",
        "Lho;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private Y:Z

.field mTvTip:Landroid/widget/TextView;
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
    .locals 5

    .line 1
    invoke-virtual {p0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;->n1(Lfo;)Lyn;

    move-result-object p2

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    .line 2
    invoke-virtual {p2, p0}, Lyn;->d(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    const-string v0, "EnterPro"

    const-string v1, "ResultGuide"

    invoke-static {p2, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p1

    const-string p2, "SavePro"

    invoke-static {p1, v0, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string p1, "enable_remove_continue_basic"

    const-string p2, "false"

    .line 6
    invoke-static {p1, p2}, Lcc0;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;->Y:Z

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    const-string v0, "Pro_Welcome"

    const-string v1, "Show without continue"

    invoke-static {p1, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;->mTvTip:Landroid/widget/TextView;

    const v0, 0x7f0e0146

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    const-string v3, "breastenlarger.bodyeditor.photoeditor.vip.permanent"

    const-string v4, "$2.99"

    .line 10
    invoke-static {v2, v3, v4}, Landroidx/core/app/b;->S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 11
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->U(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;->mTvTip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f0e0146

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->U(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;->mTvTip:Landroid/widget/TextView;

    const v1, 0x7f0e0146

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->U(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    const-string v0, "EnterPro"

    const-string v1, "Success_Success_SavePro"

    invoke-static {p1, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;->Y:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Pro_Welcome"

    const-string v1, "Success without continue"

    invoke-static {p1, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "EnableShowProCelebrate"

    .line 7
    invoke-static {p1, v1, v0}, Lic;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 8
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ProCelebrateFragment;

    const/4 v4, 0x0

    const v5, 0x7f080134

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method

.method protected l1()Ljava/lang/String;
    .locals 1

    const-string v0, "WelcomeSubFragment"

    return-object v0
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b005e

    return v0
.end method

.method protected n1(Lfo;)Lyn;
    .locals 0

    .line 1
    check-cast p1, Lho;

    .line 2
    new-instance p1, Leo;

    invoke-direct {p1}, Leo;-><init>()V

    return-object p1
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void
.end method

.method public o0()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->o0()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->f(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "EnableShowWelcomeSub"

    .line 4
    invoke-static {v0, v2, v1}, Lic;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public o1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080096

    if-eq p1, v0, :cond_2

    const v0, 0x7f0800ce

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    const-string v0, "EnterPro"

    const-string v1, "Click_SavePro"

    invoke-static {p1, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Pro_Welcome"

    const-string v1, "Click"

    invoke-static {p1, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;->Y:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Click without continue"

    invoke-static {p1, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    check-cast p1, Leo;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, "breastenlarger.bodyeditor.photoeditor.vip.permanent"

    invoke-virtual {p1, v0, v1}, Leo;->A(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/app/b;->s0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
