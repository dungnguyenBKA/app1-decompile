.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ProCelebrateFragment;
.super Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;
.source "SourceFile"


# instance fields
.field private X:Landroidx/appcompat/widget/ParticlesView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;-><init>()V

    return-void
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const p2, 0x7f080113

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ParticlesView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ProCelebrateFragment;->X:Landroidx/appcompat/widget/ParticlesView;

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-static {v3}, Landroidx/core/app/b;->z0(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-static {v4}, Landroidx/core/app/b;->y0(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    new-instance v3, Lpc0;

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-direct {v3, v4}, Lpc0;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v4, Lsc0;

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lsc0;-><init>(Landroid/content/Context;Lmc0;)V

    .line 7
    new-instance v5, Lnc0;

    invoke-direct {v5, v4, v2, v0}, Lnc0;-><init>(Lqc0;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v4, -0x1

    .line 8
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 9
    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 10
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v5, Lrc0;

    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lrc0;-><init>(Landroid/content/Context;Lmc0;)V

    .line 12
    new-instance v3, Lnc0;

    invoke-direct {v3, v5, v2, v0}, Lnc0;-><init>(Lqc0;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 13
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 14
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 15
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ParticlesView;->b(Ljava/util/List;)V

    .line 17
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ProCelebrateFragment;->X:Landroidx/appcompat/widget/ParticlesView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ParticlesView;->d()V

    return-void
.end method

.method protected l1()Ljava/lang/String;
    .locals 1

    const-string v0, "ProCelebrateFragment"

    return-object v0
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b0055

    return v0
.end method

.method public o0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->o0()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ProCelebrateFragment;->X:Landroidx/appcompat/widget/ParticlesView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ParticlesView;->e()V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ProCelebrateFragment;->X:Landroidx/appcompat/widget/ParticlesView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ParticlesView;->c()V

    return-void
.end method
