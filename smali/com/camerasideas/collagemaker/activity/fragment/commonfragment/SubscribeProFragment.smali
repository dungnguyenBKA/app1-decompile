.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;
.super Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;
.source "SourceFile"

# interfaces
.implements Lho;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i<",
        "Lho;",
        "Leo;",
        ">;",
        "Lho;"
    }
.end annotation


# instance fields
.field private Y:Ljava/lang/String;

.field private Z:J

.field mBtnBack:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

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
    invoke-virtual {p0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->n1(Lfo;)Lyn;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    .line 2
    invoke-virtual {p1, p0}, Lyn;->d(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "PRO_FROM"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->Y:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->mProLayout:Landroid/view/View;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p1

    const-string p2, "PV_"

    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->Y:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "EnterPro"

    invoke-static {p1, v1, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->Z:J

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Landroidx/core/app/b;->W(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "ProOpenCount"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    add-int/2addr p2, v0

    .line 10
    invoke-static {p1}, Landroidx/core/app/b;->W(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->mTvTip:Landroid/widget/TextView;

    const p2, 0x7f0e0146

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    const-string v3, "breastenlarger.bodyeditor.photoeditor.vip.permanent"

    const-string v4, "$2.99"

    .line 12
    invoke-static {v1, v3, v4}, Landroidx/core/app/b;->S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 13
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->U(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/f;->c(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->mBtnBack:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/appdata/f;->c(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Luq;->q(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "SubscribeFragment"

    const-string v1, "Successful member purchase, refresh target ui"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->mTvTip:Landroid/widget/TextView;

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
    .locals 0

    return-void
.end method

.method public l(Z)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    const-string v0, "Success_"

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterPro"

    invoke-static {p1, v1, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->o()V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "EnableShowProCelebrate"

    .line 5
    invoke-static {p1, v1, v0}, Lic;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 6
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ProCelebrateFragment;

    const/4 v4, 0x0

    const v5, 0x7f080135

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    :cond_0
    return-void
.end method

.method protected l1()Ljava/lang/String;
    .locals 1

    const-string v0, "SubscribeFragment"

    return-object v0
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b0057

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/app/b;->s0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void
.end method

.method public o0()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->o0()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->Z:J

    sub-long/2addr v1, v3

    .line 3
    invoke-static {v0}, Landroidx/core/app/b;->W(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-string v6, "ProStayTime"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    invoke-static {v0}, Landroidx/core/app/b;->W(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
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

    if-eq p1, v0, :cond_1

    const v0, 0x7f080227

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    check-cast p1, Leo;

    invoke-virtual {p1}, Leo;->z()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    const-string v0, "Click_"

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterPro"

    invoke-static {p1, v1, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    check-cast p1, Leo;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, "breastenlarger.bodyeditor.photoeditor.vip.permanent"

    invoke-virtual {p1, v0, v1}, Leo;->A(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->o()V

    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
